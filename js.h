/* Copyright 1990-2011, Jsoftware Inc.  All rights reserved. */
/* License in license.txt.                                   */
/*                                                                         */
/* SYS_ and friends                                                        */

#ifndef SYS                                 /* only include once (dtoa.c)  */

/* Inclusion of a system herein does not necessarily mean that the source  */
/* compiles or works under that system.                                    */

#define SYS_PCWIN           2048L           /* Watcom C 386                */
#define SYS_LINUX           262144L         /* GCC                         */
#define SYS_MACOSX          4194304L        /* GCC (CC)                    */
#define SYS_OPENBSD         8388608L        /* x86 only                    */

#define SY_64               0    /* 64-bit systems                         */

#define SY_WIN32            0    /* any windows intel version              */
#define SY_LINUX            0    /* any linux intel version                */
#define SY_MAC              0    /* any macosx intel or powerpc version    */
#define SY_MACPPC           0    /* macosx powerpc                         */

#define SY_GETTOD           0    /* gettimeofday on unix                   */

#define SYS_DOS             (SYS_PCWIN)

#define SYS_UNIX            (SYS_LINUX + SYS_MACOSX + \
                             SYS_OPENBSD )

#define SYS_ANSILIB         (SYS_DOS + \
                             SYS_UNIX)

#define SYS_SESM            (SYS_DOS + \
                             SYS_UNIX)

#define SYS_LILENDIAN       (SYS_DOS + \
                             SYS_LINUX + \
                             SYS_OPENBSD )

#if defined(__OpenBSD__)
#define SYS SYS_OPENBSD
#endif

#ifdef __linux__
#define SYS SYS_LINUX
#undef SY_LINUX
#define SY_LINUX 1
#endif

#ifdef __MACH__
#ifdef __ppc__
#ifdef __GNUC__
#define SYS SYS_MACOSX // powerpc
#undef SY_MAC
#define SY_MAC 1
#undef SY_MACPPC
#def SY_MACPPC 1
#endif
#endif
#endif

#ifdef __MACH__
#ifndef __ppc__
#ifdef __GNUC__
#define SYS SYS_MACOSX // intel
#undef SY_MAC
#define SY_MAC 1
#undef SYS_LILENDIAN
#define SYS_LILENDIAN SYS_MACOSX

#endif
#endif
#endif


#ifdef _WIN32
#define SYS                 SYS_PCWIN
#undef  SY_WIN32
#define SY_WIN32            1
#endif

#if SYS & SYS_UNIX
#undef  SY_GETTOD
#define SY_GETTOD 1
#endif

#define SY_ALIGN            (!(SY_WIN32 || SYS&SYS_LINUX))
/* SY_ALIGN    should be 1 for compilers requiring strict alignment        */
/*             e.g. if (I*)av is not allowed for arbitrary av of type C*   */

/* _WIN64 defined by VC++ and _UNIX64 defined in makefile */
#if defined(_WIN64) || defined(_UNIX64)
#undef SY_64
#define SY_64               1
#endif

#define SY_BSD 1

#ifndef SYS     /* must be defined */
 error: "SYS must be defined"
#endif

#if 1!=SY_WIN32+SY_LINUX+SY_MAC+SY_BSD
 error: "one and only one of SY_WIN32, SY_LINUX, SY_MAC must be 1" 
#endif 

#endif /* only include once */

