/* Copyright 1990-2011, Jsoftware Inc.  All rights reserved. */
/* License in license.txt.                                   */
// utilities for JFE to load JE, initiallize, and run profile sentence
// JFEs are jconsole, jwdw, and jwdp
#define PLEN 1000 // path length
#ifdef _WIN32
 #include <windows.h>

#ifdef UNDER_CE
 #define GETPROCADDRESS(h,p) GetProcAddress(h,_T(p))
#else
 #define GETPROCADDRESS(h,p) GetProcAddress(h,p)
#endif
 #define JDLLNAME "\\j.dll"
 #define filesep '\\'
 #define filesepx "\\"
// setfocus e required for pocketpc and doesn't hurt others
#define ijx "11!:0'pc ijx closeok;xywh 0 0 300 200;cc e editijx rightmove bottommove ws_vscroll ws_hscroll;setfont e \"Courier New\" 12;setfocus e;pas 0 0;pgroup jijx;pshow;'[18!:4<'base'"

#else
 #include <dlfcn.h>
 #define GETPROCADDRESS(h,p)	dlsym(h,p)
 #define _stdcall
 #define filesep '/'
 #define filesepx "/"
 #define ijx "11!:0'pc ijx closeok;xywh 0 0 300 200;cc e editijx rightmove bottommove ws_vscroll ws_hscroll;setfont e monospaced 12;pas 0 0;pgroup jijx;pshow;'[18!:4<'base'"
 #ifdef __MACH__ 
  #define JDLLNAME "/libj.dylib"
 #else
  #define JDLLNAME "/libj.so"
 #endif
#endif
#include "j.h"

static void* hjdll;
static J jt;
static JDoType jdo;
static JFreeType jfree;
static JgaType jga;
static JGetLocaleType jgetlocale;
static char path[PLEN];
static char pathdll[PLEN];

int jedo(char* sentence)
{
	return jdo(jt,sentence);
}

void jefree(){jfree(jt);}
char* jegetlocale(){return jgetlocale(jt);}
A jega(I t, I n, I r, I*s){return jga(jt,t,n,r,s);}
void* jehjdll(){return hjdll;}

// load JE, Jinit, getprocaddresses, JSM
J jeload(void* callbacks)
{
#ifdef _WIN32
 WCHAR wpath[PLEN];
 MultiByteToWideChar(CP_UTF8,0,pathdll,1+(int)strlen(pathdll),wpath,PLEN);
 hjdll=LoadLibraryW(wpath);
#else
 hjdll=dlopen(pathdll,RTLD_LAZY);
#endif
 if(!hjdll)return 0;
 jt=((JInitType)GETPROCADDRESS(hjdll,"JInit"))();
 if(!jt) return 0;
 ((JSMType)GETPROCADDRESS(hjdll,"JSM"))(jt,callbacks);
 jdo=(JDoType)GETPROCADDRESS(hjdll,"JDo");
 jfree=(JFreeType)GETPROCADDRESS(hjdll,"JFree");
 jga=(JgaType)GETPROCADDRESS(hjdll,"Jga");
 jgetlocale=(JGetLocaleType)GETPROCADDRESS(hjdll,"JGetLocale");
 return jt;
}

// set path and pathdll (wpath also set for win)
// WIN arg is 0, Unix arg is argv[0]
void jepath(char* arg)
{
#ifdef _WIN32
 WCHAR wpath[PLEN];
 GetModuleFileNameW(0,wpath,_MAX_PATH);
 *(wcsrchr(wpath, '\\')) = 0;
 WideCharToMultiByte(CP_UTF8,0,wpath,1+(int)wcslen(wpath),path,PLEN,0,0);
#else

#define sz 4000
 char arg2[sz],arg3[sz];
 char* src,*snk;int n,len=sz;
 // fprintf(stderr,"arg0 %s\n",arg);
 // try host dependent way to get path to executable
 // use arg if they fail (arg command in PATH won't work)
#ifdef __MACH__ 
 n=_NSGetExecutablePath(arg2,&len);
 if(0!=n) strcat(arg2,arg);
#else
 n=readlink("/proc/self/exe",arg2,sizeof(arg2));
 if(-1==n) strlcpy(arg2,arg,sz); else arg2[n]=0;
#endif
 // fprintf(stderr,"arg2 %s\n",arg2);
 // arg2 is path (abs or relative) to executable or soft link
 n=readlink(arg2,arg3,sz);
 if(-1==n) strlcpy(arg3,arg2,sz); else arg3[n]=0;
 // fprintf(stderr,"arg3 %s\n",arg3);
 if('/'==*arg3)
  strlcpy(path,arg3,PLEN);
 else
 {
  getcwd(path,sizeof(path));
  strlcat(path,"/",PLEN);
  strlcat(path,arg3,PLEN);
 }
 *(1+strrchr(path,'/'))=0;
 // remove ./ and backoff ../
 snk=src=path;
 while(*src)
 {
	 if('/'==*src&&'.'==*(1+src)&&'.'==*(2+src)&&'/'==*(3+src))
	 {
		 *snk=0;
		 snk=strrchr(path,'/');
		 snk=0==snk?path:snk;
		 src+=3;
	 }
	 else if('/'==*src&&'.'==*(1+src)&&'/'==*(2+src))
      src+=2;
	 else
	  *snk++=*src++;
 }
 *snk=0;
 snk=path+strlen(path)-1;
 if('/'==*snk) *snk=0;
#endif
 strlcpy(pathdll,path,PLEN);
 strlcat(pathdll,JDLLNAME,PLEN);
 // fprintf(stderr,"arg4 %s\n",path);
}

// called by jwdp (java jnative.c) to set path
void jesetpath(char* arg)
{
	strlcpy(pathdll,arg,PLEN); // jwdp gives path to j.dll
	strlcpy(path,arg,PLEN);
	*(strrchr(path,filesep)) = 0;
}

// build and run first sentence to set BINPATH, ARGV, and run profile
// arg is command line ready to set in ARGV_z_
// type is 0 normal, 1 -jprofile xxx, 2 ijx basic, 3 nothing
// profile[ARGV_z_=:...[BINPATH=:....
// profile is from BINPATH, ARGV, ijx basic, or nothing
int jefirst(int type,char* arg)
{
	int r; char* p,*q;
        int len= 2000+strlen(arg);
	char* input=malloc(len);
	*input=0;
	if(0==type)
	{
		strlcat(input,"(3 : '0!:0 y')<BINPATH,'",len);
		strlcat(input,filesepx,len);
		strlcat(input,"profile.ijs'",len);
	}
	else if(1==type)
		strlcat(input,"(3 : '0!:0 y')2{ARGV",len);
	else if(2==type)
		strlcat(input,ijx,len);
	else
		strlcat(input,"i.0 0",len);
	strlcat(input,"[ARGV_z_=:",len);
	strlcat(input,arg,len);
	strlcat(input,"[BINPATH_z_=:'",len);
	p=path;
	q=input+strlen(input);
	while(*p)
	{
		if(*p=='\'') *q++='\'';	// 's doubled
		*q++=*p++;
	}
	*q=0;
	strlcat(input,"'",len);
	r=jedo(input);
	free(input);
	return r;
}

void jefail(char* msg)
{
	strlcpy(msg, "Load library ",PLEN);
	strlcat(msg, pathdll,PLEN);
	strlcat(msg," failed.",PLEN);
}
