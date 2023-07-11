# 1 "100-elf_header.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 1 "/usr/include/stdc-predef.h" 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */

/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
# 52 "/usr/include/stdc-predef.h" 3 4
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
# 32 "<command-line>" 2
# 1 "100-elf_header.c"
# 1 "main.h" 1



# 1 "/usr/include/unistd.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 *	POSIX Standard: 2.10 Symbolic Constants		<unistd.h>
 */




# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




/* These are defined by the user (or the compiler)
   to specify the desired environment:

   __STRICT_ANSI__	ISO Standard C.
   _ISOC99_SOURCE	Extensions to ISO C89 from ISO C99.
   _ISOC11_SOURCE	Extensions to ISO C99 from ISO C11.
   _ISOC2X_SOURCE	Extensions to ISO C99 from ISO C2X.
   __STDC_WANT_LIB_EXT2__
			Extensions to ISO C99 from TR 27431-2:2010.
   __STDC_WANT_IEC_60559_BFP_EXT__
			Extensions to ISO C11 from TS 18661-1:2014.
   __STDC_WANT_IEC_60559_FUNCS_EXT__
			Extensions to ISO C11 from TS 18661-4:2015.
   __STDC_WANT_IEC_60559_TYPES_EXT__
			Extensions to ISO C11 from TS 18661-3:2015.

   _POSIX_SOURCE	IEEE Std 1003.1.
   _POSIX_C_SOURCE	If ==1, like _POSIX_SOURCE; if >=2 add IEEE Std 1003.2;
			if >=199309L, add IEEE Std 1003.1b-1993;
			if >=199506L, add IEEE Std 1003.1c-1995;
			if >=200112L, all of IEEE 1003.1-2004
			if >=200809L, all of IEEE 1003.1-2008
   _XOPEN_SOURCE	Includes POSIX and XPG things.  Set to 500 if
			Single Unix conformance is wanted, to 600 for the
			sixth revision, to 700 for the seventh revision.
   _XOPEN_SOURCE_EXTENDED XPG things and X/Open Unix extensions.
   _LARGEFILE_SOURCE	Some more functions for correct standard I/O.
   _LARGEFILE64_SOURCE	Additional functionality from LFS for large files.
   _FILE_OFFSET_BITS=N	Select default filesystem interface.
   _ATFILE_SOURCE	Additional *at interfaces.
   _GNU_SOURCE		All of the above, plus GNU extensions.
   _DEFAULT_SOURCE	The default set of features (taking precedence over
			__STRICT_ANSI__).

   _FORTIFY_SOURCE	Add security hardening to many library functions.
			Set to 1 or 2; 2 performs stricter checks than 1.

   _REENTRANT, _THREAD_SAFE
			Obsolete; equivalent to _POSIX_C_SOURCE=199506L.

   The `-ansi' switch to the GNU C compiler, and standards conformance
   options such as `-std=c99', define __STRICT_ANSI__.  If none of
   these are defined, or if _DEFAULT_SOURCE is defined, the default is
   to have _POSIX_SOURCE set to one and _POSIX_C_SOURCE set to
   200809L, as well as enabling miscellaneous functions from BSD and
   SVID.  If more than one of these are defined, they accumulate.  For
   example __STRICT_ANSI__, _POSIX_SOURCE and _POSIX_C_SOURCE together
   give you ISO C, 1003.1, and 1003.2, but nothing else.

   These are defined by this file and are used by the
   header files to decide what to declare or define:

   __GLIBC_USE (F)	Define things from feature set F.  This is defined
			to 1 or 0; the subsequent macros are either defined
			or undefined, and those tests should be moved to
			__GLIBC_USE.
   __USE_ISOC11		Define ISO C11 things.
   __USE_ISOC99		Define ISO C99 things.
   __USE_ISOC95		Define ISO C90 AMD1 (C95) things.
   __USE_ISOCXX11	Define ISO C++11 things.
   __USE_POSIX		Define IEEE Std 1003.1 things.
   __USE_POSIX2		Define IEEE Std 1003.2 things.
   __USE_POSIX199309	Define IEEE Std 1003.1, and .1b things.
   __USE_POSIX199506	Define IEEE Std 1003.1, .1b, .1c and .1i things.
   __USE_XOPEN		Define XPG things.
   __USE_XOPEN_EXTENDED	Define X/Open Unix things.
   __USE_UNIX98		Define Single Unix V2 things.
   __USE_XOPEN2K        Define XPG6 things.
   __USE_XOPEN2KXSI     Define XPG6 XSI things.
   __USE_XOPEN2K8       Define XPG7 things.
   __USE_XOPEN2K8XSI    Define XPG7 XSI things.
   __USE_LARGEFILE	Define correct standard I/O things.
   __USE_LARGEFILE64	Define LFS things with separate names.
   __USE_FILE_OFFSET64	Define 64bit interface as default.
   __USE_MISC		Define things from 4.3BSD or System V Unix.
   __USE_ATFILE		Define *at interfaces and AT_* constants for them.
   __USE_GNU		Define GNU extensions.
   __USE_FORTIFY_LEVEL	Additional security measures used, according to level.

   The macros `__GNU_LIBRARY__', `__GLIBC__', and `__GLIBC_MINOR__' are
   defined by this file unconditionally.  `__GNU_LIBRARY__' is provided
   only for compatibility.  All new code should use the other symbols
   to test for features.

   All macros listed above as possibly being defined by this file are
   explicitly undefined if they are not explicitly defined.
   Feature-test macros that are not defined by the user or compiler
   but are implied by the other feature-test macros defined (or by the
   lack of any definitions) are defined by the file.

   ISO C feature test macros depend on the definition of the macro
   when an affected header is included, not when the first system
   header is included, and so they are handled in
   <bits/libc-header-start.h>, which does not have a multiple include
   guard.  Feature test macros that can be handled from the first
   system header included are handled here.  */


/* Undefine everything, so we get a clean slate.  */
# 147 "/usr/include/features.h" 3 4
/* Suppress kernel-name space pollution unless user expressedly asks
   for it.  */




/* Convenience macro to test the version of gcc.
   Use like this:
   #if __GNUC_PREREQ (2,8)
   ... code requiring gcc 2.8 or later ...
   #endif
   Note: only works for GCC 2.0 and later, because __GNUC_MINOR__ was
   added in 2.0.  */







/* Similarly for clang.  Features added to GCC after version 4.2 may
   or may not also be available in clang, and clang's definitions of
   __GNUC(_MINOR)__ are fixed at 4 and 2 respectively.  Not all such
   features can be queried via __has_extension/__has_feature.  */







/* Whether to use feature set F.  */


/* _BSD_SOURCE and _SVID_SOURCE are deprecated aliases for
   _DEFAULT_SOURCE.  If _DEFAULT_SOURCE is present we do not
   issue a warning; the expectation is that the source is being
   transitioned to use the new macro.  */







/* If _GNU_SOURCE was defined by the user, turn on all the other features.  */
# 218 "/usr/include/features.h" 3 4
/* If nothing (other than _GNU_SOURCE and _DEFAULT_SOURCE) is defined,
   define _DEFAULT_SOURCE.  */
# 230 "/usr/include/features.h" 3 4
/* This is to enable the ISO C2X extension.  */







/* This is to enable the ISO C11 extension.  */





/* This is to enable the ISO C99 extension.  */






/* This is to enable the ISO C90 Amendment 1:1995 extension.  */
# 271 "/usr/include/features.h" 3 4
/* If none of the ANSI/POSIX macros are defined, or if _DEFAULT_SOURCE
   is defined, use POSIX.1-2008 (or another version depending on
   _XOPEN_SOURCE).  */
# 300 "/usr/include/features.h" 3 4
/* Some C libraries once required _REENTRANT and/or _THREAD_SAFE to be
   defined in all multithreaded code.  GNU libc has not required this
   for many years.  We now treat them as compatibility synonyms for
   _POSIX_C_SOURCE=199506L, which is the earliest level of POSIX with
   comprehensive support for multithreaded code.  Using them never
   lowers the selected level of POSIX conformance, only raises it.  */
# 406 "/usr/include/features.h" 3 4
/* The function 'gets' existed in C89, but is impossible to use
   safely.  It has been removed from ISO C11 and ISO C++14.  Note: for
   compatibility with various implementations of <cstdio>, this test
   must consider only the value of __cplusplus when compiling C++.  */






/* GNU formerly extended the scanf functions with modified format
   specifiers %as, %aS, and %a[...] that allocate a buffer for the
   input using malloc.  This extension conflicts with ISO C99, which
   defines %a as a standalone format specifier that reads a floating-
   point number; moreover, POSIX.1-2008 provides the same feature
   using the modifier letter 'm' instead (%ms, %mS, %m[...]).

   We now follow C99 unless GNU extensions are active and the compiler
   is specifically in C89 or C++98 mode (strict or not).  For
   instance, with GCC, -std=gnu11 will have C99-compliant scanf with
   or without -D_GNU_SOURCE, but -std=c89 -D_GNU_SOURCE will have the
   old extension.  */
# 437 "/usr/include/features.h" 3 4
/* Get definitions of __STDC_* predefined macros, if the compiler has
   not preincluded this header automatically.  */
# 1 "/usr/include/stdc-predef.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 440 "/usr/include/features.h" 2 3 4

/* This macro indicates that the installed library is the GNU C Library.
   For historic reasons the value now is 6 and this will stay from now
   on.  The use of this variable is deprecated.  Use __GLIBC__ and
   __GLIBC_MINOR__ now (see below) when you want to test for a specific
   GNU C library version and use the values in <gnu/lib-names.h> to get
   the sonames of the shared libraries.  */



/* Major and minor version number of the GNU C library package.  Use
   these macros to test for features in specific releases.  */






/* This is here only because every header file already includes this one.  */


# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
/* Copyright (C) 1992-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




/* We are almost always included from features.h. */




/* The GNU libc does not support any K&R compilers or the traditional mode
   of ISO C compilers anymore.  Check for some of the combinations not
   anymore supported.  */




/* Some user header file might have defined this before.  */





/* All functions, except those with callbacks or those that
   synchronize memory, are leaf functions.  */
# 49 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* GCC can always grok prototypes.  For C++ programs we add throw()
   to help it optimize the function calls.  But this works only with
   gcc 2.8.x and egcs.  For gcc 3.2 and up we even mark C functions
   as non-throwing using a function attribute since programs can use
   the -fexceptions options for C code as well.  */
# 88 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Compilers that are not clang may object to
       #if defined __clang__ && __has_extension(...)
   even though they do not need to evaluate the right-hand side of the &&.  */






/* These two macros are not used in glibc anymore.  They are kept here
   only because some other projects expect the macros to be defined.  */



/* For these things, GCC behaves the ANSI way normally,
   and the non-ANSI way under -traditional.  */




/* This is not a typedef so `const __ptr_t' does the right thing.  */



/* C++ needs to know that types and declarations are C, not C++.  */
# 122 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Fortify support.  */
# 138 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Support for flexible arrays.
   Headers that should use flexible arrays only if they're "real"
   (e.g. only if they won't affect sizeof()) should test
   #if __glibc_c99_flexarr_available.  */
# 162 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* __asm__ ("xyz") is used throughout the headers to rename functions
   at the assembly language level.  This is wrapped by the __REDIRECT
   macro, in order to support compilers that can do this some other
   way.  When compilers don't support asm-names at all, we have to do
   preprocessor tricks instead (which don't have exactly the right
   semantics, but it's the best we can do).

   Example:
   int __REDIRECT(setpgrp, (__pid_t pid, __pid_t pgrp), setpgid); */
# 189 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/*
#elif __SOME_OTHER_COMPILER__

# define __REDIRECT(name, proto, alias) name proto; 	_Pragma("let " #name " = " #alias)
)
*/


/* GCC has various useful declarations that can be made with the
   `__attribute__' syntax.  All of the ways we use this do fine if
   they are omitted for compilers that don't understand it. */




/* At some point during the gcc 2.96 development the `malloc' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */






/* Tell the compiler which arguments to an allocation function
   indicate the size of the allocation.  */







/* At some point during the gcc 2.96 development the `pure' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */






/* This declaration tells the compiler that the value is constant.  */






/* At some point during the gcc 3.1 development the `used' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */
# 249 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Since version 3.2, gcc allows marking deprecated functions.  */






/* Since version 4.5, gcc also allows one to specify the message printed
   when a deprecated function is used.  clang claims to be gcc 4.2, but
   may also support this feature.  */
# 267 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* At some point during the gcc 2.8 development the `format_arg' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.
   If several `format_arg' attributes are given for the same function, in
   gcc-3.0 and older, all but the last one are ignored.  In newer gccs,
   all designated arguments are considered.  */






/* At some point during the gcc 2.97 development the `strfmon' format
   attribute for functions was introduced.  We don't want to use it
   unconditionally (although this would be possible) since it
   generates warnings.  */







/* The nonull function attribute allows to mark pointer parameters which
   must not be NULL.  */






/* If fortification mode, we warn about unused results of certain
   function calls which can lead to problems.  */
# 313 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Forces a function to be always inlined.  */

/* The Linux kernel defines __always_inline in stddef.h (283d7573), and
   it conflicts with this definition.  Therefore undefine it first to
   allow either header to be included first.  */







/* Associate error messages with the source location of the call site rather
   than with the source location inside the function.  */






/* GCC 4.3 and above with -std=c99 or -std=gnu99 implements ISO C99
   inline semantics, unless -fgnu89-inline is used.  Using __GNUC_STDC_INLINE__
   or __GNUC_GNU_INLINE is not a good enough check for gcc because gcc versions
   older than 4.3 may define these macros and still not guarantee GNU inlining
   semantics.

   clang++ identifies itself as gcc-4.2, but has support for GNU inlining
   semantics, that can be checked for by using the __GNUC_STDC_INLINE_ and
   __GNUC_GNU_INLINE__ macro definitions.  */
# 359 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* GCC 4.3 and above allow passing all anonymous arguments of an
   __extern_always_inline function to some other vararg function.  */





/* It is possible to compile containing GCC extensions even if GCC is
   run in pedantic mode if the uses are carefully marked using the
   `__extension__' keyword.  But this is not generally available before
   version 2.8.  */




/* __restrict is known in EGCS 1.2 and above. */
# 383 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* ISO C99 also allows to declare arrays as non-overlapping.  The syntax is
     array_name[restrict]
   GCC 3.1 supports this.  */
# 426 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Describes a char array whose address can safely be passed as the first
   argument to strncpy and strncat, as the char array is not necessarily
   a NUL-terminated string.  */





/* Undefine (also defined in libc-symbols.h).  */


/* Copies attributes from the declaration or type referenced by
   the argument.  */
# 452 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
# 13 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
# 453 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
/* Properties of long double type.  ldbl-96 version.
   Copyright (C) 2016-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License  published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/* long double is distinct from double, so there is nothing to
   define here.  */
# 454 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 487 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* __glibc_macro_warning (MESSAGE) issues warning MESSAGE.  This is
   intended for use in preprocessor macros.

   Note: MESSAGE must be a _single_ string; concatenation of string
   literals is not supported.  */
# 500 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Generic selection (ISO C11) is a C-only feature, available in GCC
   since version 4.9.  Previous versions do not provide generic
   selection, even though they might set __STDC_VERSION__ to 201112L,
   when in -std=c11 mode.  Thus, we must check for !defined __GNUC__
   when testing __STDC_VERSION__ for generic selection support.
   On the other hand, Clang also defines __GNUC__, so a clang-specific
   check is required to enable the use of generic selection.  */
# 462 "/usr/include/features.h" 2 3 4


/* If we don't have __REDIRECT, prototypes will be missing if
   __USE_FILE_OFFSET64 but not __USE_LARGEFILE[64]. */







/* Decide whether we can define 'extern inline' functions in headers.  */







/* This is here only because every header file already includes this one.
   Get the definitions of all the appropriate `__stub_FUNCTION' symbols.
   <gnu/stubs.h> contains `#define __stub_FUNCTION' when FUNCTION is a stub
   that will always return failure (and set errno to ENOSYS).  */
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
/* This file is automatically generated.
   This file selects the right generated file of `__stub_FUNCTION' macros
   based on the architecture being compiled for.  */






# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
/* This file is automatically generated.
   It defines a symbol `__stub_FUNCTION' for each function
   in the C library which is a stub, meaning it will fail
   every time called, usually setting errno to ENOSYS.  */
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 486 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/unistd.h" 2 3 4



/* These may be used to determine what facilities are present at compile time.
   Their values can be obtained at run time from `sysconf'.  */


/* POSIX Standard approved as ISO/IEC 9945-1 as of September 2008.  */
# 49 "/usr/include/unistd.h" 3 4
/* These are not #ifdef __USE_POSIX2 because they are
   in the theoretically application-owned namespace.  */



/* The utilities on GNU systems also correspond to this version.  */
# 66 "/usr/include/unistd.h" 3 4
/* The utilities on GNU systems also correspond to this version.  */


/* This symbol was required until the 2001 edition of POSIX.  */


/* If defined, the implementation supports the
   C Language Bindings Option.  */


/* If defined, the implementation supports the
   C Language Development Utilities Option.  */


/* If defined, the implementation supports the
   Software Development Utilities Option.  */


/* If defined, the implementation supports the
   creation of locales with the localedef utility.  */


/* X/Open version number to which the library conforms.  It is selectable.  */
# 99 "/usr/include/unistd.h" 3 4
/* Commands and utilities from XPG4 are available.  */


/* We are compatible with the old published standards as well.  */




/* The X/Open Unix extensions are available.  */


/* The enhanced internationalization capabilities according to XPG4.2
   are present.  */


/* The legacy interfaces are also available.  */



/* Get values of POSIX options:

   If these symbols are defined, the corresponding features are
   always available.  If not, they may be available sometimes.
   The current values can be obtained with `sysconf'.

   _POSIX_JOB_CONTROL		Job control is supported.
   _POSIX_SAVED_IDS		Processes have a saved set-user-ID
				and a saved set-group-ID.
   _POSIX_REALTIME_SIGNALS	Real-time, queued signals are supported.
   _POSIX_PRIORITY_SCHEDULING	Priority scheduling is supported.
   _POSIX_TIMERS		POSIX.4 clocks and timers are supported.
   _POSIX_ASYNCHRONOUS_IO	Asynchronous I/O is supported.
   _POSIX_PRIORITIZED_IO	Prioritized asynchronous I/O is supported.
   _POSIX_SYNCHRONIZED_IO	Synchronizing file data is supported.
   _POSIX_FSYNC			The fsync function is present.
   _POSIX_MAPPED_FILES		Mapping of files to memory is supported.
   _POSIX_MEMLOCK		Locking of all memory is supported.
   _POSIX_MEMLOCK_RANGE		Locking of ranges of memory is supported.
   _POSIX_MEMORY_PROTECTION	Setting of memory protections is supported.
   _POSIX_MESSAGE_PASSING	POSIX.4 message queues are supported.
   _POSIX_SEMAPHORES		POSIX.4 counting semaphores are supported.
   _POSIX_SHARED_MEMORY_OBJECTS	POSIX.4 shared memory objects are supported.
   _POSIX_THREADS		POSIX.1c pthreads are supported.
   _POSIX_THREAD_ATTR_STACKADDR	Thread stack address attribute option supported.
   _POSIX_THREAD_ATTR_STACKSIZE	Thread stack size attribute option supported.
   _POSIX_THREAD_SAFE_FUNCTIONS	Thread-safe functions are supported.
   _POSIX_THREAD_PRIORITY_SCHEDULING
				POSIX.1c thread execution scheduling supported.
   _POSIX_THREAD_PRIO_INHERIT	Thread priority inheritance option supported.
   _POSIX_THREAD_PRIO_PROTECT	Thread priority protection option supported.
   _POSIX_THREAD_PROCESS_SHARED	Process-shared synchronization supported.
   _POSIX_PII			Protocol-independent interfaces are supported.
   _POSIX_PII_XTI		XTI protocol-indep. interfaces are supported.
   _POSIX_PII_SOCKET		Socket protocol-indep. interfaces are supported.
   _POSIX_PII_INTERNET		Internet family of protocols supported.
   _POSIX_PII_INTERNET_STREAM	Connection-mode Internet protocol supported.
   _POSIX_PII_INTERNET_DGRAM	Connectionless Internet protocol supported.
   _POSIX_PII_OSI		ISO/OSI family of protocols supported.
   _POSIX_PII_OSI_COTS		Connection-mode ISO/OSI service supported.
   _POSIX_PII_OSI_CLTS		Connectionless ISO/OSI service supported.
   _POSIX_POLL			Implementation supports `poll' function.
   _POSIX_SELECT		Implementation supports `select' and `pselect'.

   _XOPEN_REALTIME		X/Open realtime support is available.
   _XOPEN_REALTIME_THREADS	X/Open realtime thread support is available.
   _XOPEN_SHM			Shared memory interface according to XPG4.2.

   _XBS5_ILP32_OFF32		Implementation provides environment with 32-bit
				int, long, pointer, and off_t types.
   _XBS5_ILP32_OFFBIG		Implementation provides environment with 32-bit
				int, long, and pointer and off_t with at least
				64 bits.
   _XBS5_LP64_OFF64		Implementation provides environment with 32-bit
				int, and 64-bit long, pointer, and off_t types.
   _XBS5_LPBIG_OFFBIG		Implementation provides environment with at
				least 32 bits int and long, pointer, and off_t
				with at least 64 bits.

   If any of these symbols is defined as -1, the corresponding option is not
   true for any file.  If any is defined as other than -1, the corresponding
   option is true for all files.  If a symbol is not defined at all, the value
   for a specific file can be obtained from `pathconf' and `fpathconf'.

   _POSIX_CHOWN_RESTRICTED	Only the super user can use `chown' to change
				the owner of a file.  `chown' can only be used
				to change the group ID of a file to a group of
				which the calling process is a member.
   _POSIX_NO_TRUNC		Pathname components longer than
				NAME_MAX generate an error.
   _POSIX_VDISABLE		If defined, if the value of an element of the
				`c_cc' member of `struct termios' is
				_POSIX_VDISABLE, no character will have the
				effect associated with that element.
   _POSIX_SYNC_IO		Synchronous I/O may be performed.
   _POSIX_ASYNC_IO		Asynchronous I/O may be performed.
   _POSIX_PRIO_IO		Prioritized Asynchronous I/O may be performed.

   Support for the Large File Support interface is not generally available.
   If it is available the following constants are defined to one.
   _LFS64_LARGEFILE		Low-level I/O supports large files.
   _LFS64_STDIO			Standard I/O supports large files.
   */

# 1 "/usr/include/x86_64-linux-gnu/bits/posix_opt.h" 1 3 4
/* Define POSIX options for Linux.
   Copyright (C) 1996-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public License as
   published by the Free Software Foundation; either version 2.1 of the
   License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; see the file COPYING.LIB.  If
   not, see <https://www.gnu.org/licenses/>.  */




/* Job control is supported.  */


/* Processes have a saved set-user-ID and a saved set-group-ID.  */


/* Priority scheduling is not supported with the correct semantics,
   but GNU/Linux applications expect that the corresponding interfaces
   are available, even though the semantics do not meet the POSIX
   requirements.  See glibc bug 14829.  */


/* Synchronizing file data is supported.  */


/* The fsync function is present.  */


/* Mapping of files to memory is supported.  */


/* Locking of all memory is supported.  */


/* Locking of ranges of memory is supported.  */


/* Setting of memory protections is supported.  */


/* Some filesystems allow all users to change file ownership.  */


/* `c_cc' member of 'struct termios' structure can be disabled by
   using the value _POSIX_VDISABLE.  */


/* Filenames are not silently truncated.  */


/* X/Open realtime support is available.  */


/* X/Open thread realtime support is available.  */


/* XPG4.2 shared memory is supported.  */


/* Tell we have POSIX threads.  */


/* We have the reentrant functions described in POSIX.  */



/* We provide priority scheduling for threads.  */


/* We support user-defined stack sizes.  */


/* We support user-defined stacks.  */


/* We support priority inheritence.  */


/* We support priority protection, though only for non-robust
   mutexes.  */



/* We support priority inheritence for robust mutexes.  */


/* We do not support priority protection for robust mutexes.  */



/* We support POSIX.1b semaphores.  */


/* Real-time signals are supported.  */


/* We support asynchronous I/O.  */


/* Alternative name for Unix98.  */

/* Support for prioritization is also available.  */


/* The LFS support in asynchronous I/O is also available.  */


/* The rest of the LFS is also available.  */




/* POSIX shared memory objects are implemented.  */


/* CPU-time clocks support needs to be checked at runtime.  */


/* Clock support in threads must be also checked at runtime.  */


/* GNU libc provides regular expression handling.  */


/* Reader/Writer locks are available.  */


/* We have a POSIX shell.  */


/* We support the Timeouts option.  */


/* We support spinlocks.  */


/* The `spawn' function family is supported.  */


/* We have POSIX timers.  */


/* The barrier functions are available.  */


/* POSIX message queues are available.  */


/* Thread process-shared synchronization is supported.  */


/* The monotonic clock might be available.  */


/* The clock selection interfaces are available.  */


/* Advisory information interfaces are available.  */


/* IPv6 support is available.  */


/* Raw socket support is available.  */


/* We have at least one terminal.  */


/* Neither process nor thread sporadic server interfaces is available.  */



/* trace.h is not available.  */





/* Typed memory objects are not available.  */
# 203 "/usr/include/unistd.h" 2 3 4

/* Get the environment definitions from Unix98.  */

# 1 "/usr/include/x86_64-linux-gnu/bits/environments.h" 1 3 4
/* Copyright (C) 1999-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */





# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
# 13 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
# 23 "/usr/include/x86_64-linux-gnu/bits/environments.h" 2 3 4

/* This header should define the following symbols under the described
   situations.  A value `1' means that the model is always supported,
   `-1' means it is never supported.  Undefined means it cannot be
   statically decided.

   _POSIX_V7_ILP32_OFF32   32bit int, long, pointers, and off_t type
   _POSIX_V7_ILP32_OFFBIG  32bit int, long, and pointers and larger off_t type

   _POSIX_V7_LP64_OFF32	   64bit long and pointers and 32bit off_t type
   _POSIX_V7_LPBIG_OFFBIG  64bit long and pointers and large off_t type

   The macros _POSIX_V6_ILP32_OFF32, _POSIX_V6_ILP32_OFFBIG,
   _POSIX_V6_LP64_OFF32, _POSIX_V6_LPBIG_OFFBIG, _XBS5_ILP32_OFF32,
   _XBS5_ILP32_OFFBIG, _XBS5_LP64_OFF32, and _XBS5_LPBIG_OFFBIG were
   used in previous versions of the Unix standard and are available
   only for compatibility.
*/



/* Environments with 32-bit wide pointers are optionally provided.
   Therefore following macros aren't defined:
   # undef _POSIX_V7_ILP32_OFF32
   # undef _POSIX_V7_ILP32_OFFBIG
   # undef _POSIX_V6_ILP32_OFF32
   # undef _POSIX_V6_ILP32_OFFBIG
   # undef _XBS5_ILP32_OFF32
   # undef _XBS5_ILP32_OFFBIG
   and users need to check at runtime.  */

/* We also have no use (for now) for an environment with bigger pointers
   and offsets.  */




/* By default we have 64-bit wide `long int', pointers and `off_t'.  */
# 207 "/usr/include/unistd.h" 2 3 4


/* Standard file descriptors.  */





/* All functions that are not declared anywhere else.  */

# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */




# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
# 13 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
/* Bit size of the time_t type at glibc build time, x86-64 and x32 case.
   Copyright (C) 2018-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */





/* For others, time size is word size.  */
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4

/* Convenience types.  */
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;

/* Fixed-size types, underlying types depend on word size and compiler.  */
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;





/* Smallest types with at least a given width.  */
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;

/* quad_t is also 64 bits.  */

typedef long int __quad_t;
typedef unsigned long int __u_quad_t;





/* Largest integral types.  */

typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;






/* The machine-dependent file <bits/typesizes.h> defines __*_T_TYPE
   macros for each of the OS types we define below.  The definitions
   of those macros must use the following macros for underlying types.
   We define __S<SIZE>_TYPE and __U<SIZE>_TYPE for the signed and unsigned
   variants of each of the following integer types on this machine.

	16		-- "natural" 16-bit type (always short)
	32		-- "natural" 32-bit type (always int)
	64		-- "natural" 64-bit type (long or long long)
	LONG32		-- 32-bit type, traditionally long
	QUAD		-- 64-bit type, traditionally long long
	WORD		-- natural type of __WORDSIZE bits (int or long)
	LONGWORD	-- type of __WORDSIZE bits, traditionally long

   We distinguish WORD/LONGWORD, 32/LONG32, and 64/QUAD so that the
   conventional uses of `long' or `long long' type modifiers match the
   types we define, even when a less-adorned type would be the same size.
   This matters for (somewhat) portably writing printf/scanf formats for
   these types, where using the appropriate l or ll format modifiers can
   make the typedefs and the formats match up across all GNU platforms.  If
   we used `long' when it's 64 bits where `long long' is expected, then the
   compiler would warn about the formats not matching the argument types,
   and the programmer changing them to shut up the compiler would break the
   program's portability.

   Here we assume what is presently the case in all the GCC configurations
   we support: long long is always 64 bits, long is always word/address size,
   and int is always 32 bits.  */
# 136 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
/* No need to mark the typedef with __extension__.   */




# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
/* bits/typesizes.h -- underlying types for *_t.  Linux/x86-64 version.
   Copyright (C) 2012-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 26 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 3 4
/* See <bits/types.h> for the meaning of these macros.  This file exists so
   that <bits/types.h> need not vary across different GNU platforms.  */

/* X32 kernel interface is 64-bit.  */
# 77 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 3 4
/* Tell the libc code that off_t and off64_t are actually the same type
   for all ABI purposes, even if possibly expressed as different base types
   for C type-checking purposes.  */


/* Same for ino_t and ino64_t.  */


/* And for __rlim_t and __rlim64_t.  */


/* And for fsblkcnt_t, fsblkcnt64_t, fsfilcnt_t and fsfilcnt64_t.  */







/* Number of descriptors that can fit in an `fd_set'.  */
# 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3 4
/* bits/time64.h -- underlying types for __time64_t.  Generic version.
   Copyright (C) 2018-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 26 "/usr/include/x86_64-linux-gnu/bits/time64.h" 3 4
/* Define __TIME64_T_TYPE so that it is always a 64-bit type.  */


/* If we already have 64-bit time type then use it.  */
# 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t; /* Type of device numbers.  */
typedef unsigned int __uid_t; /* Type of user identifications.  */
typedef unsigned int __gid_t; /* Type of group identifications.  */
typedef unsigned long int __ino_t; /* Type of file serial numbers.  */
typedef unsigned long int __ino64_t; /* Type of file serial numbers (LFS).*/
typedef unsigned int __mode_t; /* Type of file attribute bitmasks.  */
typedef unsigned long int __nlink_t; /* Type of file link counts.  */
typedef long int __off_t; /* Type of file sizes and offsets.  */
typedef long int __off64_t; /* Type of file sizes and offsets (LFS).  */
typedef int __pid_t; /* Type of process identifications.  */
typedef struct { int __val[2]; } __fsid_t; /* Type of file system IDs.  */
typedef long int __clock_t; /* Type of CPU usage counts.  */
typedef unsigned long int __rlim_t; /* Type for resource measurement.  */
typedef unsigned long int __rlim64_t; /* Type for resource measurement (LFS).  */
typedef unsigned int __id_t; /* General type for IDs.  */
typedef long int __time_t; /* Seconds since the Epoch.  */
typedef unsigned int __useconds_t; /* Count of microseconds.  */
typedef long int __suseconds_t; /* Signed count of microseconds.  */

typedef int __daddr_t; /* The type of a disk address.  */
typedef int __key_t; /* Type of an IPC key.  */

/* Clock ID used in clock and timer functions.  */
typedef int __clockid_t;

/* Timer ID returned by `timer_create'.  */
typedef void * __timer_t;

/* Type to represent block size.  */
typedef long int __blksize_t;

/* Types from the Large File Support interface.  */

/* Type to count number of disk blocks.  */
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;

/* Type to count file system blocks.  */
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;

/* Type to count file system nodes.  */
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;

/* Type of miscellaneous file system fields.  */
typedef long int __fsword_t;

typedef long int __ssize_t; /* Type of a byte count, or error.  */

/* Signed long type used in system calls.  */
typedef long int __syscall_slong_t;
/* Unsigned long type used in system calls.  */
typedef unsigned long int __syscall_ulong_t;

/* These few don't really vary by system, they always correspond
   to one of the other defined types.  */
typedef __off64_t __loff_t; /* Type of file sizes and offsets (LFS).  */
typedef char *__caddr_t;

/* Duplicates info from stdint.h but this is used in unistd.h.  */
typedef long int __intptr_t;

/* Duplicate info from sys/socket.h.  */
typedef unsigned int __socklen_t;

/* C99: An integer type that can be accessed as an atomic entity,
   even in the presence of asynchronous interrupts.
   It is not currently necessary for this to be machine-specific.  */
typedef int __sig_atomic_t;

/* Seconds since the Epoch, visible to user code when time_t is too
   narrow only for consistency with the old way of widening too-narrow
   types.  User code should never use __time64_t.  */
# 218 "/usr/include/unistd.h" 2 3 4


typedef __ssize_t ssize_t;





# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
/* Copyright (C) 1989-2019 Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.17  Common definitions  <stddef.h>
 */






/* Any one of these symbols __need_* means that GNU libc
   wants us just to define one data type.  So don't define
   the symbols that indicate this file's entire job has been done.  */
# 46 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* This avoids lossage on SunOS but only if stdtypes.h comes first.
   There's no way to win with the other order!  Sun lossage.  */
# 86 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Sequent's header files use _PTRDIFF_T_ in some conflicting way.
   Just ignore it.  */




/* On VxWorks, <type/vxTypesBase.h> may have defined macros like
   _TYPE_size_t which will typedef size_t.  fixincludes patched the
   vxTypesBase.h so that this macro is only defined if _GCC_SIZE_T is
   not defined, and so that defining this macro defines _GCC_SIZE_T.
   If we find that the macros are still defined at this point, we must
   invoke them so that the type is defined as expected.  */
# 111 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* In case nobody has defined these types, but we aren't running under
   GCC 2.00, make sure that __PTRDIFF_TYPE__, __SIZE_TYPE__, and
   __WCHAR_TYPE__ have reasonable values.  This can happen if the
   parts of GCC is compiled by an older compiler, that actually
   include gstddef.h, such as collect2.  */

/* Signed type of difference of two pointers.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 159 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Unsigned type of `sizeof' something.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 209 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 235 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Wide character type.
   Locale-writers should change this as necessary to
   be big enough to hold unique values not between 0 and 127,
   and not (wchar_t) -1, for each defined multibyte character.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 387 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* A null pointer constant.  */
# 227 "/usr/include/unistd.h" 2 3 4


/* The Single Unix specification says that some more types are
   available here.  */

typedef __gid_t gid_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
# 255 "/usr/include/unistd.h" 3 4
typedef __useconds_t useconds_t;




typedef __pid_t pid_t;






typedef __intptr_t intptr_t;






typedef __socklen_t socklen_t;




/* Values for the second argument to access.
   These may be OR'd together.  */





/* Test for access to NAME using the real UID and real GID.  */
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 301 "/usr/include/unistd.h" 3 4
/* Test for access to FILE relative to the directory FD is open on.
   If AT_EACCESS is set in FLAG, then use effective IDs like `eaccess',
   otherwise use real IDs like `access'.  */
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;



/* Values for the WHENCE argument to lseek.  */
# 321 "/usr/include/unistd.h" 3 4
/* Old BSD names for the same constants; just for compatibility.  */






/* Move FD's file position to OFFSET bytes from the
   beginning of the file (if WHENCE is SEEK_SET),
   the current position (if WHENCE is SEEK_CUR),
   or the end of the file (if WHENCE is SEEK_END).
   Return the new file position.  */

extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ , __leaf__));
# 349 "/usr/include/unistd.h" 3 4
/* Close the file descriptor FD.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int close (int __fd);

/* Read NBYTES into BUF from FD.  Return the
   number read, -1 for errors or 0 for EOF.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;

/* Write N bytes of BUF to FD.  Return the number written, or -1.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern ssize_t write (int __fd, const void *__buf, size_t __n) ;



/* Read NBYTES into BUF from FD at the given position OFFSET without
   changing the file pointer.  Return the number read, -1 for errors
   or 0 for EOF.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;

/* Write N bytes of BUF to FD at the given position OFFSET without
   changing the file pointer.  Return the number written, or -1.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
# 413 "/usr/include/unistd.h" 3 4
/* Create a one-way communication channel (pipe).
   If successful, two file descriptors are stored in PIPEDES;
   bytes written on PIPEDES[1] can be read from PIPEDES[0].
   Returns 0 if successful, -1 if not.  */
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__)) ;







/* Schedule an alarm.  In SECONDS seconds, the process will get a SIGALRM.
   If SECONDS is zero, any currently scheduled alarm will be cancelled.
   The function returns the number of seconds remaining until the last
   alarm scheduled would have signaled, or zero if there wasn't one.
   There is no return value to indicate an error, but you can set `errno'
   to 0 and check its value after calling `alarm', and this might tell you.
   The signal may come late due to processor scheduling.  */
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));

/* Make the process sleep for SECONDS seconds, or until a signal arrives
   and is not ignored.  The function returns the number of seconds less
   than SECONDS which it actually slept (thus zero if it slept the full time).
   If a signal handler does a `longjmp' or modifies the handling of the
   SIGALRM signal while inside `sleep' call, the handling of the SIGALRM
   signal afterwards is undefined.  There is no return value to indicate
   error, but if `sleep' returns SECONDS, it probably didn't work.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern unsigned int sleep (unsigned int __seconds);



/* Set an alarm to go off (generating a SIGALRM signal) in VALUE
   microseconds.  If INTERVAL is nonzero, when the alarm goes off, the
   timer is reset to go off every INTERVAL microseconds thereafter.
   Returns the number of microseconds remaining before the alarm.  */
extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ , __leaf__));

/* Sleep USECONDS microseconds, or until a signal arrives that is not blocked
   or ignored.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int usleep (__useconds_t __useconds);



/* Suspend the process until a signal arrives.
   This always returns -1 and sets `errno' to EINTR.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int pause (void);


/* Change the owner and group of FILE.  */
extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;


/* Change the owner and group of the file that FD is open on.  */
extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__)) ;


/* Change owner and group of FILE, if it is a symbolic
   link the ownership of the symbolic link is changed.  */
extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;




/* Change the owner and group of FILE relative to the directory FD is open
   on.  */
extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;


/* Change the process's working directory to PATH.  */
extern int chdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;


/* Change the process's working directory to the one FD is open on.  */
extern int fchdir (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;


/* Get the pathname of the current working directory,
   and put it in SIZE bytes of BUF.  Returns NULL if the
   directory couldn't be determined or SIZE was too small.
   If successful, returns BUF.  In GNU, if BUF is NULL,
   an array is allocated with `malloc'; the array is SIZE
   bytes long, unless SIZE == 0, in which case it is as
   big as necessary.  */
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) ;
# 522 "/usr/include/unistd.h" 3 4
/* Put the absolute pathname of the current working directory in BUF.
   If successful, return BUF.  If not, put an error message in
   BUF and return NULL.  BUF should be at least PATH_MAX bytes long.  */
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;



/* Duplicate FD, returning a new file descriptor on the same file.  */
extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__)) ;

/* Duplicate FD to FD2, closing FD2 and making it open on the same file.  */
extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));







/* NULL-terminated array of "NAME=VALUE" environment variables.  */
extern char **__environ;





/* Replace the current process, executing PATH with arguments ARGV and
   environment ENVP.  ARGV and ENVP are terminated by NULL pointers.  */
extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


/* Execute the file FD refers to, overlaying the running program image.
   ARGV and ENVP are passed to the new program, as for `execve'.  */
extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



/* Execute PATH with arguments ARGV and environment from `environ'.  */
extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

/* Execute PATH with all arguments after PATH until a NULL pointer,
   and the argument after that for environment.  */
extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

/* Execute PATH with all arguments after PATH until
   a NULL pointer and environment from `environ'.  */
extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

/* Execute FILE, searching in the `PATH' environment variable if it contains
   no slashes, with arguments ARGV and environment from `environ'.  */
extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

/* Execute FILE, searching in the `PATH' environment variable if
   it contains no slashes, with all arguments after FILE until a
   NULL pointer and environment from `environ'.  */
extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 597 "/usr/include/unistd.h" 3 4
/* Add INC to priority of the current process.  */
extern int nice (int __inc) __attribute__ ((__nothrow__ , __leaf__)) ;



/* Terminate program execution with the low-order 8 bits of STATUS.  */
extern void _exit (int __status) __attribute__ ((__noreturn__));


/* Get the `_PC_*' symbols for the NAME argument to `pathconf' and `fpathconf';
   the `_SC_*' symbols for the NAME argument to `sysconf';
   and the `_CS_*' symbols for the NAME argument to `confstr'.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/confname.h" 1 3 4
/* `sysconf', `pathconf', and `confstr' NAME values.  Generic version.
   Copyright (C) 1993-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */





/* Values for the NAME argument to `pathconf' and `fpathconf'.  */
enum
  {
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };

/* Values for the argument to `sysconf'.  */
enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,


    /* Values for the argument to `sysconf'
       corresponding to _POSIX2_* symbols.  */
    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,


    /* Values according to POSIX 1003.1c (POSIX threads).  */
    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,

    /* Leave room here, maybe we need a few more cache levels some day.  */

    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS,


    _SC_V7_ILP32_OFF32,

    _SC_V7_ILP32_OFFBIG,

    _SC_V7_LP64_OFF64,

    _SC_V7_LPBIG_OFFBIG,


    _SC_SS_REPL_MAX,


    _SC_TRACE_EVENT_NAME_MAX,

    _SC_TRACE_NAME_MAX,

    _SC_TRACE_SYS_MAX,

    _SC_TRACE_USER_EVENT_MAX,


    _SC_XOPEN_STREAMS,


    _SC_THREAD_ROBUST_PRIO_INHERIT,

    _SC_THREAD_ROBUST_PRIO_PROTECT

  };

/* Values for the NAME argument to `confstr'.  */
enum
  {
    _CS_PATH, /* The default search path.  */


    _CS_V6_WIDTH_RESTRICTED_ENVS,



    _CS_GNU_LIBC_VERSION,

    _CS_GNU_LIBPTHREAD_VERSION,


    _CS_V5_WIDTH_RESTRICTED_ENVS,



    _CS_V7_WIDTH_RESTRICTED_ENVS,



    _CS_LFS_CFLAGS = 1000,

    _CS_LFS_LDFLAGS,

    _CS_LFS_LIBS,

    _CS_LFS_LINTFLAGS,

    _CS_LFS64_CFLAGS,

    _CS_LFS64_LDFLAGS,

    _CS_LFS64_LIBS,

    _CS_LFS64_LINTFLAGS,


    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

    _CS_XBS5_ILP32_OFF32_LDFLAGS,

    _CS_XBS5_ILP32_OFF32_LIBS,

    _CS_XBS5_ILP32_OFF32_LINTFLAGS,

    _CS_XBS5_ILP32_OFFBIG_CFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LIBS,

    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

    _CS_XBS5_LP64_OFF64_CFLAGS,

    _CS_XBS5_LP64_OFF64_LDFLAGS,

    _CS_XBS5_LP64_OFF64_LIBS,

    _CS_XBS5_LP64_OFF64_LINTFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LIBS,

    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LIBS,

    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V6_LP64_OFF64_CFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LIBS,

    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFF32_LIBS,

    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V7_LP64_OFF64_CFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V7_LP64_OFF64_LIBS,

    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,


    _CS_V6_ENV,

    _CS_V7_ENV

  };
# 610 "/usr/include/unistd.h" 2 3 4

/* Get file-specific configuration information about PATH.  */
extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

/* Get file-specific configuration about descriptor FD.  */
extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ , __leaf__));

/* Get the value of the system variable NAME.  */
extern long int sysconf (int __name) __attribute__ ((__nothrow__ , __leaf__));


/* Get the value of the string-valued system variable NAME.  */
extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));



/* Get the process ID of the calling process.  */
extern __pid_t getpid (void) __attribute__ ((__nothrow__ , __leaf__));

/* Get the process ID of the calling process's parent.  */
extern __pid_t getppid (void) __attribute__ ((__nothrow__ , __leaf__));

/* Get the process group ID of the calling process.  */
extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ , __leaf__));

/* Get the process group ID of process PID.  */
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));

extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));



/* Set the process group ID of the process matching PID to PGID.
   If PID is zero, the current process's process group ID is set.
   If PGID is zero, the process ID of the process is used.  */
extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ , __leaf__));


/* Both System V and BSD have `setpgrp' functions, but with different
   calling conventions.  The BSD function is the same as POSIX.1 `setpgid'
   (above).  The System V function takes no arguments and puts the calling
   process in its on group like `setpgid (0, 0)'.

   New programs should always use `setpgid' instead.

   GNU provides the POSIX.1 function.  */

/* Set the process group ID of the calling process to its own PID.
   This is exactly the same as `setpgid (0, 0)'.  */
extern int setpgrp (void) __attribute__ ((__nothrow__ , __leaf__));



/* Create a new session with the calling process as its leader.
   The process group IDs of the session and the calling process
   are set to the process ID of the calling process, which is returned.  */
extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));


/* Return the session ID of the given process.  */
extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));


/* Get the real user ID of the calling process.  */
extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));

/* Get the effective user ID of the calling process.  */
extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));

/* Get the real group ID of the calling process.  */
extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));

/* Get the effective group ID of the calling process.  */
extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));

/* If SIZE is zero, return the number of supplementary groups
   the calling process is in.  Otherwise, fill in the group IDs
   of its supplementary groups in LIST and return the number written.  */
extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) ;






/* Set the user ID of the calling process to UID.
   If the calling process is the super-user, set the real
   and effective user IDs, and the saved set-user-ID to UID;
   if not, the effective user ID is set to UID.  */
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;


/* Set the real user ID of the calling process to RUID,
   and the effective user ID of the calling process to EUID.  */
extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ , __leaf__)) ;



/* Set the effective user ID of the calling process to UID.  */
extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) ;


/* Set the group ID of the calling process to GID.
   If the calling process is the super-user, set the real
   and effective group IDs, and the saved set-group-ID to GID;
   if not, the effective group ID is set to GID.  */
extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;


/* Set the real group ID of the calling process to RGID,
   and the effective group ID of the calling process to EGID.  */
extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ , __leaf__)) ;



/* Set the effective group ID of the calling process to GID.  */
extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) ;
# 753 "/usr/include/unistd.h" 3 4
/* Clone the calling process, creating an exact copy.
   Return -1 for errors, 0 to the new process,
   and the process ID of the new process to the old process.  */
extern __pid_t fork (void) __attribute__ ((__nothrow__));



/* Clone the calling process, but without copying the whole address space.
   The calling process is suspended until the new process exits or is
   replaced by a call to `execve'.  Return -1 for errors, 0 to the new process,
   and the process ID of the new process to the old process.  */
extern __pid_t vfork (void) __attribute__ ((__nothrow__ , __leaf__));



/* Return the pathname of the terminal FD is open on, or NULL on errors.
   The returned storage is good only until the next call to this function.  */
extern char *ttyname (int __fd) __attribute__ ((__nothrow__ , __leaf__));

/* Store at most BUFLEN characters of the pathname of the terminal FD is
   open on in BUF.  Return 0 on success, otherwise an error number.  */
extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;

/* Return 1 if FD is a valid descriptor associated
   with a terminal, zero if not.  */
extern int isatty (int __fd) __attribute__ ((__nothrow__ , __leaf__));


/* Return the index into the active-logins file (utmp) for
   the controlling terminal.  */
extern int ttyslot (void) __attribute__ ((__nothrow__ , __leaf__));



/* Make a link to FROM named TO.  */
extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;


/* Like link but relative paths in TO and FROM are interpreted relative
   to FROMFD and TOFD respectively.  */
extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4))) ;



/* Make a symbolic link to FROM named TO.  */
extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;

/* Read the contents of the symbolic link PATH into no more than
   LEN bytes of BUF.  The contents are not null-terminated.
   Returns the number of characters read, or -1 for errors.  */
extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) ;



/* Like symlink but a relative path in TO is interpreted relative to TOFD.  */
extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3))) ;

/* Like readlink but a relative PATH is interpreted relative to FD.  */
extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) ;


/* Remove the link NAME.  */
extern int unlink (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


/* Remove the link NAME relative to FD.  */
extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


/* Remove the directory PATH.  */
extern int rmdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


/* Return the foreground process group ID of FD.  */
extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ , __leaf__));

/* Set the foreground process group ID of FD set PGRP_ID.  */
extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ , __leaf__));


/* Return the login name of the user.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern char *getlogin (void);

/* Return at most NAME_LEN characters of the login name of the user in NAME.
   If it cannot be determined or some other error occurred, return the error
   code.  Otherwise return 0.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));



/* Set the login name returned by `getlogin'.  */
extern int setlogin (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




/* Get definitions and prototypes for functions to process the
   arguments in ARGV (ARGC of them, minus the program name) for
   options given in OPTS.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 1 3 4
/* Declarations for getopt (POSIX compatibility shim).
   Copyright (C) 1989-2020 Free Software Foundation, Inc.
   Unlike the bulk of the getopt implementation, this file is NOT part
   of gnulib.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 27 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h" 1 3 4
/* Declarations for getopt (basic, portable features only).
   Copyright (C) 1989-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library and is also part of gnulib.
   Patches to this file should be submitted to both projects.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




/* This header should not be used directly; include getopt.h or
   unistd.h instead.  Unlike most bits headers, it does not have
   a protective #error, because the guard macro for getopt.h in
   gnulib is not fixed.  */



/* For communication from 'getopt' to the caller.
   When 'getopt' finds an option that takes an argument,
   the argument value is returned here.
   Also, when 'ordering' is RETURN_IN_ORDER,
   each non-option ARGV-element is returned here.  */

extern char *optarg;

/* Index in ARGV of the next element to be scanned.
   This is used for communication to and from the caller
   and for communication between successive calls to 'getopt'.

   On entry to 'getopt', zero means this is the first call; initialize.

   When 'getopt' returns -1, this is the index of the first of the
   non-option elements that the caller should itself scan.

   Otherwise, 'optind' communicates from one call to the next
   how much of ARGV has been scanned so far.  */

extern int optind;

/* Callers store zero here to inhibit the error message 'getopt' prints
   for unrecognized options.  */

extern int opterr;

/* Set to an option character which was unrecognized.  */

extern int optopt;

/* Get definitions and prototypes for functions to process the
   arguments in ARGV (ARGC of them, minus the program name) for
   options given in OPTS.

   Return the option character from OPTS just read.  Return -1 when
   there are no more options.  For unrecognized options, or options
   missing arguments, 'optopt' is set to the option letter, and '?' is
   returned.

   The OPTS string is a list of characters which are recognized option
   letters, optionally followed by colons, specifying that that letter
   takes an argument, to be placed in 'optarg'.

   If a letter in OPTS is followed by two colons, its argument is
   optional.  This behavior is specific to the GNU 'getopt'.

   The argument '--' causes premature termination of argument
   scanning, explicitly telling 'getopt' that there are no more
   options.

   If OPTS begins with '-', then non-option arguments are treated as
   arguments to the option '\1'.  This behavior is specific to the GNU
   'getopt'.  If OPTS begins with '+', or POSIXLY_CORRECT is set in
   the environment, then do not permute arguments.

   For standards compliance, the 'argv' argument has the type
   char *const *, but this is inaccurate; if argument permutation is
   enabled, the argv array (not the strings it points to) must be
   writable.  */

extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));


# 28 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 2 3 4


# 49 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 3 4

# 870 "/usr/include/unistd.h" 2 3 4




/* Put the name of the current host in no more than LEN bytes of NAME.
   The result is null-terminated if LEN is large enough for the full
   name and the terminator.  */
extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




/* Set the name of the current host to NAME, which is LEN bytes long.
   This call is restricted to the super-user.  */
extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;

/* Set the current machine's Internet number to ID.
   This call is restricted to the super-user.  */
extern int sethostid (long int __id) __attribute__ ((__nothrow__ , __leaf__)) ;


/* Get and set the NIS (aka YP) domain name, if any.
   Called just like `gethostname' and `sethostname'.
   The NIS domain name is usually the empty string when not using NIS.  */
extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;


/* Revoke access permissions to all processes currently communicating
   with the control terminal, and then send a SIGHUP signal to the process
   group of the control terminal.  */
extern int vhangup (void) __attribute__ ((__nothrow__ , __leaf__));

/* Revoke the access of all descriptors currently open on FILE.  */
extern int revoke (const char *__file) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;


/* Enable statistical profiling, writing samples of the PC into at most
   SIZE bytes of SAMPLE_BUFFER; every processor clock tick while profiling
   is enabled, the system examines the user PC and increments
   SAMPLE_BUFFER[((PC - OFFSET) / 2) * SCALE / 65536].  If SCALE is zero,
   disable profiling.  Returns zero on success, -1 on error.  */
extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


/* Turn accounting on if NAME is an existing file.  The system will then write
   a record for each process as it terminates, to this file.  If NAME is NULL,
   turn accounting off.  This call is restricted to the super-user.  */
extern int acct (const char *__name) __attribute__ ((__nothrow__ , __leaf__));


/* Successive calls return the shells listed in `/etc/shells'.  */
extern char *getusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void endusershell (void) __attribute__ ((__nothrow__ , __leaf__)); /* Discard cached info.  */
extern void setusershell (void) __attribute__ ((__nothrow__ , __leaf__)); /* Rewind and re-read the file.  */


/* Put the program in the background, and dissociate from the controlling
   terminal.  If NOCHDIR is zero, do `chdir ("/")'.  If NOCLOSE is zero,
   redirects stdin, stdout, and stderr to /dev/null.  */
extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ , __leaf__)) ;




/* Make PATH be the root directory (the starting point for absolute paths).
   This call is restricted to the super-user.  */
extern int chroot (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;

/* Prompt with PROMPT and read a string from the terminal without echoing.
   Uses /dev/tty if possible; otherwise stderr and stdin.  */
extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));



/* Make all changes done to FD actually appear on disk.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int fsync (int __fd);
# 966 "/usr/include/unistd.h" 3 4
/* Return identifier for the current host.  */
extern long int gethostid (void);

/* Make all changes done to all files actually appear on disk.  */
extern void sync (void) __attribute__ ((__nothrow__ , __leaf__));



/* Return the number of bytes in a page.  This is the system's page size,
   which is not necessarily the same as the hardware page size.  */
extern int getpagesize (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


/* Return the maximum number of file descriptors
   the current process could possibly have.  */
extern int getdtablesize (void) __attribute__ ((__nothrow__ , __leaf__));







/* Truncate FILE to LENGTH bytes.  */

extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 1012 "/usr/include/unistd.h" 3 4
/* Truncate the file FD is open on to LENGTH bytes.  */

extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ , __leaf__)) ;
# 1033 "/usr/include/unistd.h" 3 4
/* Set the end of accessible data space (aka "the break") to ADDR.
   Returns zero on success and -1 for errors (with errno set).  */
extern int brk (void *__addr) __attribute__ ((__nothrow__ , __leaf__)) ;

/* Increase or decrease the end of accessible data space by DELTA bytes.
   If successful, returns the address the previous end of data space
   (i.e. the beginning of the new space, if DELTA > 0);
   returns (void *) -1 for errors (with errno set).  */
extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ , __leaf__));




/* Invoke `system call' number SYSNO, passing it the remaining arguments.
   This is completely system-dependent, and not often useful.

   In Unix, `syscall' sets `errno' for all errors and most calls return -1
   for errors; in many systems you cannot pass arguments or get return
   values for all system calls (`pipe', `fork', and `getppid' typically
   among them).

   In Mach, all system calls take normal arguments and always return an
   error code (zero for success).  */
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ , __leaf__));





/* NOTE: These declarations also appear in <fcntl.h>; be sure to keep both
   files consistent.  Some systems have them there and some here, and some
   software depends on the macros being defined without including both.  */

/* `lockf' is a simpler interface to the locking facilities of `fcntl'.
   LEN is always relative to the current file position.
   The CMD argument is one of the following.

   This function is a cancellation point and therefore not marked with
   __THROW.  */







extern int lockf (int __fd, int __cmd, __off_t __len) ;
# 1113 "/usr/include/unistd.h" 3 4
/* Synchronize at least the data part of a file with the underlying
   media.  */
extern int fdatasync (int __fildes);



/* One-way hash PHRASE, returning a string suitable for storage in the
   user database.  SALT selects the one-way function to use, and
   ensures that no two users' hashes are the same, even if they use
   the same passphrase.  The return value points to static storage
   which will be overwritten by the next call to crypt.  */
extern char *crypt (const char *__key, const char *__salt)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 1138 "/usr/include/unistd.h" 3 4
/* Prior to Issue 6, the Single Unix Specification required these
   prototypes to appear in this header.  They are also found in
   <stdio.h>.  */
# 1150 "/usr/include/unistd.h" 3 4
/* Unix98 requires this function to be declared here.  In other
   standards it is in <pthread.h>.  */







/* Write LENGTH bytes of randomness starting at BUFFER.  Return 0 on
   success or -1 on error.  */
int getentropy (void *__buffer, size_t __length) ;


/* Define some macros helping to catch buffer overflows.  */




/* System-specific extensions.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/unistd_ext.h" 1 3 4
/* System-specific extensions of <unistd.h>, Linux version.
   Copyright (C) 2019-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 1171 "/usr/include/unistd.h" 2 3 4


# 5 "main.h" 2
# 1 "/usr/include/fcntl.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 *	POSIX Standard: 6.5 File Control Operations	<fcntl.h>
 */




# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 26 "/usr/include/fcntl.h" 2 3 4

/* This must be early so <bits/fcntl.h> can define types winningly.  */


/* Get __mode_t, __dev_t and __off_t  .*/
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 32 "/usr/include/fcntl.h" 2 3 4

/* Get the definitions of O_*, F_*, FD_*: all the
   numbers and flag bits for `open', `fcntl', et al.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 1 3 4
/* O_*, F_*, FD_* bit values for Linux/x86.
   Copyright (C) 2001-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 28 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 3 4
/* Not necessary, we always have 64-bit offsets.  */






struct flock
  {
    short int l_type; /* Type of lock: F_RDLCK, F_WRLCK, or F_UNLCK.	*/
    short int l_whence; /* Where `l_start' is relative to (like `lseek').  */

    __off_t l_start; /* Offset where the lock begins.  */
    __off_t l_len; /* Size of the locked area; zero means until EOF.  */




    __pid_t l_pid; /* Process holding the lock.  */
  };
# 60 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 3 4
/* Include generic Linux declarations.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 1 3 4
/* O_*, F_*, FD_* bit values for Linux.
   Copyright (C) 2001-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */





/* This file contains shared definitions between Linux architectures
   and is included by <bits/fcntl.h> to declare them.  The various
   #ifndef cases allow the architecture specific file to define those
   values with different values.

   A minimal <bits/fcntl.h> contains just:

   struct flock {...}
   #ifdef __USE_LARGEFILE64
   struct flock64 {...}
   #endif
   #include <bits/fcntl-linux.h>
*/





/* open/fcntl.  */
# 120 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4
/* open file description locks.

   Usually record locks held by a process are released on *any* close and are
   not inherited across a fork.

   These cmd values will set locks that conflict with process-associated record
   locks, but are "owned" by the opened file description, not the process.
   This means that they are inherited across fork or clone with CLONE_FILES
   like BSD (flock) locks, and they are only released automatically when the
   last reference to the the file description against which they were acquired
   is put. */
# 154 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4
/* For now, Linux has no separate synchronicity options for read
   operations.  We define O_RSYNC therefore as the same as O_SYNC
   since this is a superset.  */
# 166 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4
/* Values for the second argument to `fcntl'.  */
# 218 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4
/* For F_[GET|SET]FD.  */



/* For posix fcntl() and `l_type' field of a `struct flock' for lockf().  */






/* For old implementation of BSD flock.  */






/* Operations for BSD flock, also used by the kernel implementation.  */
# 301 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4
/* Define some more compatibility macros to be backward compatible with
   BSD systems which did not managed to hide these kernel macros.  */
# 315 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4
/* Advise to `posix_fadvise'.  */
# 369 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4
/* Values for `*at' functions.  */
# 392 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4

# 466 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h" 3 4

# 61 "/usr/include/x86_64-linux-gnu/bits/fcntl.h" 2 3 4
# 36 "/usr/include/fcntl.h" 2 3 4

/* Detect if open needs mode as a third argument (or for openat as a fourth
   argument).  */







/* POSIX.1-2001 specifies that these types are defined by <fcntl.h>.
   Earlier POSIX standards permitted any type ending in `_t' to be defined
   by any POSIX header, so we don't conditionalize the definitions here.  */

typedef __mode_t mode_t;
# 73 "/usr/include/fcntl.h" 3 4
/* For XPG all symbols from <sys/stat.h> should also be available.  */

# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 1 3 4
/* NB: Include guard matches what <linux/time.h> uses.  */



# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 6 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
/* Endian macros for string.h functions
   Copyright (C) 1992-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */




/* Definitions for byte order, according to significance of bytes,
   from low addresses to high addresses.  The value is what you get by
   putting '4' in the most significant byte, '3' in the second most
   significant byte, '2' in the second least significant byte, and '1'
   in the least significant byte, and then writing down one digit for
   each byte, starting with the byte at the lowest address at the left,
   and proceeding to the byte with the highest address at the right.  */





/* This file defines `__BYTE_ORDER' for the particular machine.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/endianness.h" 1 3 4







/* i386/x86_64 are little-endian.  */
# 36 "/usr/include/x86_64-linux-gnu/bits/endian.h" 2 3 4

/* Some machines may need to use a different endianness for floating point
   values.  */
# 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 2 3 4

/* POSIX.1b structure for a time value.  This is like a `struct timeval' but
   has nanoseconds instead of microseconds.  */
struct timespec
{
  __time_t tv_sec; /* Seconds.  */



  __syscall_slong_t tv_nsec; /* Nanoseconds.  */
# 26 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3 4
};
# 76 "/usr/include/fcntl.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/stat.h" 1 3 4
/* Copyright (C) 1999-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 25 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
/* Versions of the `struct stat' data structure.  */
# 40 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
/* x86-64 versions of the `xmknod' interface.  */





struct stat
  {
    __dev_t st_dev; /* Device.  */




    __ino_t st_ino; /* File serial number.	*/







    __nlink_t st_nlink; /* Link count.  */
    __mode_t st_mode; /* File mode.  */

    __uid_t st_uid; /* User ID of the file's owner.	*/
    __gid_t st_gid; /* Group ID of the file's group.*/

    int __pad0;

    __dev_t st_rdev; /* Device number, if device.  */




    __off_t st_size; /* Size of file, in bytes.  */



    __blksize_t st_blksize; /* Optimal block size for I/O.  */

    __blkcnt_t st_blocks; /* Number 512-byte blocks allocated. */




    /* Nanosecond resolution timestamps are stored in a format
       equivalent to 'struct timespec'.  This is the type used
       whenever possible but the Unix namespace rules do not allow the
       identifier 'timespec' to appear in the <sys/stat.h> header.
       Therefore we have to handle the use of this header in strictly
       standard-compliant sources special.  */
    struct timespec st_atim; /* Time of last access.  */
    struct timespec st_mtim; /* Time of last modification.  */
    struct timespec st_ctim; /* Time of last status change.  */
# 106 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
    __syscall_slong_t __glibc_reserved[3];
# 115 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
  };
# 171 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
/* Tell code we have these members.  */


/* Nanosecond resolution time values are supported.  */


/* Encoding of the file mode.  */



/* File types.  */
# 190 "/usr/include/x86_64-linux-gnu/bits/stat.h" 3 4
/* POSIX.1b objects.  Note that these macros always evaluate to zero.  But
   they do it by enforcing the correct use of the macros.  */




/* Protection bits.  */
# 79 "/usr/include/fcntl.h" 2 3 4
# 95 "/usr/include/fcntl.h" 3 4
/* Protection bits.  */





/* Save swapped text after use (sticky bit).  This is pretty well obsolete.  */






/* Read, write, and execute by owner.  */





/* Read, write, and execute by group.  */





/* Read, write, and execute by others.  */
# 135 "/usr/include/fcntl.h" 3 4
/* XPG wants the following symbols.   <stdio.h> has the same definitions.  */






/* Do the file control operation described by CMD on FD.
   The remaining arguments are interpreted depending on CMD.

   This function is a cancellation point and therefore not marked with
   __THROW.  */

extern int fcntl (int __fd, int __cmd, ...);
# 160 "/usr/include/fcntl.h" 3 4
/* Open FILE and return a new file descriptor for it, or -1 on error.
   OFLAG determines the type of access used.  If O_CREAT or O_TMPFILE is set
   in OFLAG, the third argument is taken as a `mode_t', the mode of the
   created file.

   This function is a cancellation point and therefore not marked with
   __THROW.  */

extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 182 "/usr/include/fcntl.h" 3 4
/* Similar to `open' but a relative path name is interpreted relative to
   the directory for which FD is a descriptor.

   NOTE: some other `openat' implementation support additional functionality
   through this interface, especially using the O_XATTR flag.  This is not
   yet supported here.

   This function is a cancellation point and therefore not marked with
   __THROW.  */

extern int openat (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 208 "/usr/include/fcntl.h" 3 4
/* Create and open FILE, with mode MODE.  This takes an `int' MODE
   argument because that is what `mode_t' will be widened to.

   This function is a cancellation point and therefore not marked with
   __THROW.  */

extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 257 "/usr/include/fcntl.h" 3 4
/* Advice the system about the expected behaviour of the application with
   respect to the file associated with FD.  */

extern int posix_fadvise (int __fd, off_t __offset, off_t __len,
     int __advise) __attribute__ ((__nothrow__ , __leaf__));
# 277 "/usr/include/fcntl.h" 3 4
/* Reserve storage for the data of the file associated with FD.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */

extern int posix_fallocate (int __fd, off_t __offset, off_t __len);
# 298 "/usr/include/fcntl.h" 3 4
/* Define some inlines helping to catch common problems.  */






# 6 "main.h" 2
# 1 "/usr/include/stdlib.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 *	ISO C99 Standard: 7.20 General utilities	<stdlib.h>
 */




# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
/* Handle feature test macros at the start of a header.
   Copyright (C) 2016-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/* This header is internal to glibc and should not be included outside
   of glibc headers.  Headers including it must define
   __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION first.  This header
   cannot have multiple include guards because ISO C feature test
   macros depend on the definition of the macro when an affected
   header is included, not when the first system header is
   included.  */







# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4

/* ISO/IEC TR 24731-2:2010 defines the __STDC_WANT_LIB_EXT2__
   macro.  */
# 45 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
/* ISO/IEC TS 18661-1:2014 defines the __STDC_WANT_IEC_60559_BFP_EXT__
   macro.  Most but not all symbols enabled by that macro in TS
   18661-1 are enabled unconditionally in C2X; the symbols in Annex F
   still require that macro in C2X.  */
# 62 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
/* ISO/IEC TS 18661-4:2015 defines the
   __STDC_WANT_IEC_60559_FUNCS_EXT__ macro.  Other than the reduction
   functions, the symbols from this TS are enabled unconditionally in
   C2X.  */
# 79 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
/* ISO/IEC TS 18661-3:2015 defines the
   __STDC_WANT_IEC_60559_TYPES_EXT__ macro.  */
# 26 "/usr/include/stdlib.h" 2 3 4

/* Get size_t, wchar_t and NULL from <stddef.h>.  */



# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
/* Copyright (C) 1989-2019 Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.17  Common definitions  <stddef.h>
 */






/* Any one of these symbols __need_* means that GNU libc
   wants us just to define one data type.  So don't define
   the symbols that indicate this file's entire job has been done.  */
# 46 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* This avoids lossage on SunOS but only if stdtypes.h comes first.
   There's no way to win with the other order!  Sun lossage.  */
# 86 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Sequent's header files use _PTRDIFF_T_ in some conflicting way.
   Just ignore it.  */




/* On VxWorks, <type/vxTypesBase.h> may have defined macros like
   _TYPE_size_t which will typedef size_t.  fixincludes patched the
   vxTypesBase.h so that this macro is only defined if _GCC_SIZE_T is
   not defined, and so that defining this macro defines _GCC_SIZE_T.
   If we find that the macros are still defined at this point, we must
   invoke them so that the type is defined as expected.  */
# 111 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* In case nobody has defined these types, but we aren't running under
   GCC 2.00, make sure that __PTRDIFF_TYPE__, __SIZE_TYPE__, and
   __WCHAR_TYPE__ have reasonable values.  This can happen if the
   parts of GCC is compiled by an older compiler, that actually
   include gstddef.h, such as collect2.  */

/* Signed type of difference of two pointers.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 159 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Unsigned type of `sizeof' something.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 235 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Wide character type.
   Locale-writers should change this as necessary to
   be big enough to hold unique values not between 0 and 127,
   and not (wchar_t) -1, for each defined multibyte character.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 276 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* On BSD/386 1.1, at least, machine/ansi.h defines _BSD_WCHAR_T_
   instead of _WCHAR_T_, and _BSD_RUNE_T_ (which, unlike the other
   symbols in the _FOO_T_ family, stays defined even after its
   corresponding type is defined).  If we define wchar_t, then we
   must undef _WCHAR_T_; for BSD/386 1.1 (and perhaps others), if
   we undef _WCHAR_T_, then we must also define rune_t, since 
   headers like runetype.h assume that if machine/ansi.h is included,
   and _BSD_WCHAR_T_ is not defined, then rune_t is available.
   machine/ansi.h says, "Note that _WCHAR_T_ and _RUNE_T_ must be of
   the same type." */
# 303 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* FreeBSD 5 can't be handled well using "traditional" logic above
   since it no longer defines _BSD_RUNE_T_ yet still desires to export
   rune_t in some cases... */
# 321 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
typedef int wchar_t;
# 387 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* A null pointer constant.  */
# 32 "/usr/include/stdlib.h" 2 3 4






/* XPG requires a few symbols from <sys/wait.h> being defined.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
/* Definitions of flag bits for `waitpid' et al.
   Copyright (C) 1992-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */






/* Bits in the third argument to `waitpid'.  */



/* Bits in the fourth argument to `waitid'.  */
# 41 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3 4
/* The following values are used by the `waitid' function.  */




/* The Linux kernel defines these bare, rather than an enum,
   which causes a conflict if the include order is reversed. */




typedef enum
{
  P_ALL, /* Wait for any child.  */
  P_PID, /* Wait for specified process.  */
  P_PGID /* Wait for members of process group.  */
} idtype_t;
# 40 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
/* Definitions of status bits for `wait' et al.
   Copyright (C) 1992-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */






/* Everything extant so far uses these same bits.  */


/* If WIFEXITED(STATUS), the low-order 8 bits of the status.  */


/* If WIFSIGNALED(STATUS), the terminating signal.  */


/* If WIFSTOPPED(STATUS), the signal that stopped the child.  */


/* Nonzero if STATUS indicates normal termination.  */


/* Nonzero if STATUS indicates termination by a signal.  */



/* Nonzero if STATUS indicates the child is stopped.  */


/* Nonzero if STATUS indicates the child continued after a stop.  We only
   define this if <bits/waitflags.h> provides the WCONTINUED flag bit.  */




/* Nonzero if STATUS indicates the child dumped core.  */


/* Macros for constructing status values.  */
# 41 "/usr/include/stdlib.h" 2 3 4

/* Define the macros <sys/wait.h> also would define this way.  */
# 54 "/usr/include/stdlib.h" 3 4
/* _FloatN API tests for enablement.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 1 3 4
/* Macros to control TS 18661-3 glibc features on x86.
   Copyright (C) 2017-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 23 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 2 3 4

/* Defined to 1 if the current compiler invocation provides a
   floating-point type with the IEEE 754 binary128 format, and this
   glibc includes corresponding *f128 interfaces for it.  The required
   libgcc support was added some time after the basic compiler
   support, for x86_64 and x86.  */
# 38 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
/* Defined to 1 if __HAVE_FLOAT128 is 1 and the type is ABI-distinct
   from the default float, double and long double types in this glibc.  */






/* Defined to 1 if the current compiler invocation provides a
   floating-point type with the right format for _Float64x, and this
   glibc includes corresponding *f64x interfaces for it.  */


/* Defined to 1 if __HAVE_FLOAT64X is 1 and _Float64x has the format
   of long double.  Otherwise, if __HAVE_FLOAT64X is 1, _Float64x has
   the format of _Float128, which must be different from that of long
   double.  */




/* Defined to concatenate the literal suffix to be used with _Float128
   types, if __HAVE_FLOAT128 is 1. */
# 70 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
/* Defined to a complex binary128 type if __HAVE_FLOAT128 is 1.  */
# 82 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
/* The remaining of this file provides support for older compilers.  */


/* The type _Float128 exists only since GCC 7.0.  */




/* __builtin_huge_valf128 doesn't exist before GCC 7.0.  */




/* Older GCC has only a subset of built-in functions for _Float128 on
   x86, and __builtin_infq is not usable in static initializers.
   Converting a narrower sNaN to _Float128 produces a quiet NaN, so
   attempts to use _Float128 sNaNs will not work properly with older
   compilers.  */
# 108 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
/* In math/math.h, __MATH_TG will expand signbit to __builtin_signbit*,
   e.g.: __builtin_signbitf128, before GCC 6.  However, there has never
   been a __builtin_signbitf128 in GCC and the type-generic builtin is
   only available since GCC 6.  */
# 120 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 1 3 4
/* Macros to control TS 18661-3 glibc features where the same
   definitions are appropriate for all platforms.
   Copyright (C) 2017-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 24 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
/* Properties of long double type.  ldbl-96 version.
   Copyright (C) 2016-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License  published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/* long double is distinct from double, so there is nothing to
   define here.  */
# 25 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 2 3 4

/* This header should be included at the bottom of each bits/floatn.h.
   It defines the following macros for each _FloatN and _FloatNx type,
   where the same definitions, or definitions based only on the macros
   in bits/floatn.h, are appropriate for all glibc configurations.  */

/* Defined to 1 if the current compiler invocation provides a
   floating-point type with the right format for this type, and this
   glibc includes corresponding *fN or *fNx interfaces for it.  */






/* Defined to 1 if the corresponding __HAVE_<type> macro is 1 and the
   type is the first with its format in the sequence of (the default
   choices for) float, double, long double, _Float16, _Float32,
   _Float64, _Float128, _Float32x, _Float64x, _Float128x for this
   glibc; that is, if functions present once per floating-point format
   rather than once per type are present for this type.

   All configurations supported by glibc have _Float32 the same format
   as float, _Float64 and _Float32x the same format as double, the
   _Float64x the same format as either long double or _Float128.  No
   configurations support _Float128x or, as of GCC 7, have compiler
   support for a type meeting the requirements for _Float128x.  */







/* Defined to 1 if the corresponding _FloatN type is not binary compatible
   with the corresponding ISO C type in the current compilation unit as
   opposed to __HAVE_DISTINCT_FLOATN, which indicates the default types built
   in glibc.  */



/* Defined to 1 if any _FloatN or _FloatNx types that are not
   ABI-distinct are however distinct types at the C language level (so
   for the purposes of __builtin_types_compatible_p and _Generic).  */
# 77 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
/* Defined to concatenate the literal suffix to be used with _FloatN
   or _FloatNx types, if __HAVE_<type> is 1.  The corresponding
   literal suffixes exist since GCC 7, for C only.  */
# 137 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
/* Defined to a complex type if __HAVE_<type> is 1.  */
# 195 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
/* The remaining of this file provides support for older compilers.  */
# 228 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
/* If double, long double and _Float64 all have the same set of
   values, TS 18661-3 requires the usual arithmetic conversions on
   long double and _Float64 to produce _Float64.  For this to be the
   case when building with a compiler without a distinct _Float64
   type, _Float64 must be a typedef for long double, not for
   double.  */
# 121 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 2 3 4
# 56 "/usr/include/stdlib.h" 2 3 4

/* Returned by `div'.  */
typedef struct
  {
    int quot; /* Quotient.  */
    int rem; /* Remainder.  */
  } div_t;

/* Returned by `ldiv'.  */

typedef struct
  {
    long int quot; /* Quotient.  */
    long int rem; /* Remainder.  */
  } ldiv_t;




/* Returned by `lldiv'.  */
__extension__ typedef struct
  {
    long long int quot; /* Quotient.  */
    long long int rem; /* Remainder.  */
  } lldiv_t;




/* The largest number rand will return (same as INT_MAX).  */



/* We define these the same for all machines.
   Changes from this to the outside world should be done in `_exit'.  */




/* Maximum length of a multibyte character in the current locale.  */

extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;


/* Convert a string to a floating-point number.  */
extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
/* Convert a string to an integer.  */
extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
/* Convert a string to a long integer.  */
extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;


/* Convert a string to a long long integer.  */
__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;


/* Convert a string to a floating-point number.  */
extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


/* Likewise for `float' and `long double' sizes of floating-point numbers.  */
extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


/* Likewise for '_FloatN' and '_FloatNx'.  */
# 175 "/usr/include/stdlib.h" 3 4
/* Convert a string to a long integer.  */
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* Convert a string to an unsigned long integer.  */
extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


/* Convert a string to a quadword integer.  */
__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* Convert a string to an unsigned quadword integer.  */
__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



/* Convert a string to a quadword integer.  */
__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
/* Convert a string to an unsigned quadword integer.  */
__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


/* Convert a floating-point number to a string.  */
# 382 "/usr/include/stdlib.h" 3 4
/* Convert N to base 64 using the digits "./0-9A-Za-z", least-significant
   digit first.  Returns a pointer to static storage overwritten by the
   next call.  */
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) ;

/* Read a number from a string S in base 64 as above.  */
extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;




# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 *	POSIX Standard: 2.6 Primitive System Data Types	<sys/types.h>
 */




# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 26 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 30 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;


typedef __loff_t loff_t;




typedef __ino_t ino_t;
# 59 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __dev_t dev_t;
# 74 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __nlink_t nlink_t;
# 103 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __id_t id_t;
# 114 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;




# 1 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 5 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h" 2 3 4

/* Returned by `clock'.  */
typedef __clock_t clock_t;
# 127 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 5 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h" 2 3 4

/* Clock ID used in clock and timer functions.  */
typedef __clockid_t clockid_t;
# 129 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 5 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h" 2 3 4

/* Returned by `time'.  */
typedef __time_t time_t;
# 130 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 5 "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h" 2 3 4

/* Timer ID returned by `timer_create'.  */
typedef __timer_t timer_t;
# 131 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 144 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
/* Copyright (C) 1989-2019 Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.17  Common definitions  <stddef.h>
 */






/* Any one of these symbols __need_* means that GNU libc
   wants us just to define one data type.  So don't define
   the symbols that indicate this file's entire job has been done.  */
# 46 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* This avoids lossage on SunOS but only if stdtypes.h comes first.
   There's no way to win with the other order!  Sun lossage.  */
# 86 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Sequent's header files use _PTRDIFF_T_ in some conflicting way.
   Just ignore it.  */




/* On VxWorks, <type/vxTypesBase.h> may have defined macros like
   _TYPE_size_t which will typedef size_t.  fixincludes patched the
   vxTypesBase.h so that this macro is only defined if _GCC_SIZE_T is
   not defined, and so that defining this macro defines _GCC_SIZE_T.
   If we find that the macros are still defined at this point, we must
   invoke them so that the type is defined as expected.  */
# 111 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* In case nobody has defined these types, but we aren't running under
   GCC 2.00, make sure that __PTRDIFF_TYPE__, __SIZE_TYPE__, and
   __WCHAR_TYPE__ have reasonable values.  This can happen if the
   parts of GCC is compiled by an older compiler, that actually
   include gstddef.h, such as collect2.  */

/* Signed type of difference of two pointers.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 159 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Unsigned type of `sizeof' something.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 235 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Wide character type.
   Locale-writers should change this as necessary to
   be big enough to hold unique values not between 0 and 127,
   and not (wchar_t) -1, for each defined multibyte character.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 387 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* A null pointer constant.  */
# 145 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


/* Old compatibility names for C types.  */
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;


/* These size-specific names are used by some of the inet code.  */

# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
/* Define intN_t types.
   Copyright (C) 2017-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 23 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 2 3 4

typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 156 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4

/* These were defined by ISO C without the first `_'.  */
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;


typedef int register_t __attribute__ ((__mode__ (__word__)));




/* Some code from BIND tests this macro to see if the types above are
   defined.  */




/* In BSD <sys/types.h> is expected to define BYTE_ORDER.  */
# 1 "/usr/include/endian.h" 1 3 4
/* Copyright (C) 1992-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 22 "/usr/include/endian.h" 2 3 4

/* Get the definitions of __*_ENDIAN, __BYTE_ORDER, and __FLOAT_WORD_ORDER.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
/* Endian macros for string.h functions
   Copyright (C) 1992-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
# 25 "/usr/include/endian.h" 2 3 4
# 34 "/usr/include/endian.h" 3 4
/* Conversion interfaces.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
/* Macros and inline functions to swap the order of bytes in integer values.
   Copyright (C) 1997-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 26 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 27 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 28 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4

/* Swap bytes in 16-bit value.  */



static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{

  return __builtin_bswap16 (__bsx);



}

/* Swap bytes in 32-bit value.  */




static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{

  return __builtin_bswap32 (__bsx);



}

/* Swap bytes in 64-bit value.  */
# 69 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{

  return __builtin_bswap64 (__bsx);



}
# 36 "/usr/include/endian.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 1 3 4
/* Inline functions to return unsigned integer values unchanged.
   Copyright (C) 2017-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 26 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 27 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 2 3 4

/* These inline functions are to ensure the appropriate type
   conversions and associated diagnostics from macros that convert to
   a given endianness.  */

static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}

static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}

static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
# 37 "/usr/include/endian.h" 2 3 4
# 177 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4

/* It also defines `fd_set' and the FD_* macros for `select'.  */
# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
/* `fd_set' type and related macros, and `select'/`pselect' declarations.
   Copyright (C) 1996-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*	POSIX 1003.1g: 6.2 Select from File Descriptor Sets <sys/select.h>  */




# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 25 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

/* Get definition of needed basic types.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 28 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

/* Get __FD_* definitions.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
/* Copyright (C) 1997-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */





# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
# 13 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
# 23 "/usr/include/x86_64-linux-gnu/bits/select.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

/* Get sigset_t.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h" 1 3 4




typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
# 5 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 2 3 4

/* A set of signals to be blocked, unblocked, or waited for.  */
typedef __sigset_t sigset_t;
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

/* Get definition of timer specification structures.  */

# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h" 2 3 4

/* A time value that is accurate to the nearest
   microsecond but also has a range of years.  */
struct timeval
{
  __time_t tv_sec; /* Seconds.  */
  __suseconds_t tv_usec; /* Microseconds.  */
};
# 38 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 1 3 4
/* NB: Include guard matches what <linux/time.h> uses.  */
# 40 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



typedef __suseconds_t suseconds_t;




/* The fd_set member is required to be an array of longs.  */
typedef long int __fd_mask;

/* Some versions of <linux/posix_types.h> define this macros.  */

/* It's easier to assume 8-bit bytes than to get CHAR_BIT.  */




/* fd_set for select and pselect.  */
typedef struct
  {
    /* XPG4.2 requires this member name.  Otherwise avoid the name
       from the global namespace.  */




    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;

/* Maximum number of file descriptors in `fd_set'.  */



/* Sometimes the fd_set member is assumed to have this type.  */
typedef __fd_mask fd_mask;

/* Number of bits per word of `fd_set' (some code assumes this is 32).  */




/* Access macros for `fd_set'.  */








/* Check the first NFDS descriptors each in READFDS (if not NULL) for read
   readiness, in WRITEFDS (if not NULL) for write readiness, and in EXCEPTFDS
   (if not NULL) for exceptional conditions.  If TIMEOUT is not NULL, time out
   after waiting the interval specified therein.  Returns the number of ready
   descriptors, or -1 for errors.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);


/* Same as above only that the TIMEOUT value is given with higher
   resolution and a sigmask which is been set temporarily.  This version
   should be used.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);



/* Define some inlines helping to catch common problems.  */





# 180 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;



/* Types from the Large File Support interface.  */


typedef __blkcnt_t blkcnt_t; /* Type to count number of disk blocks.  */



typedef __fsblkcnt_t fsblkcnt_t; /* Type to count file system blocks.  */



typedef __fsfilcnt_t fsfilcnt_t; /* Type to count file system inodes.  */
# 225 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
/* Now add the thread types.  */

# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
/* Declaration of common pthread types for all architectures.
   Copyright (C) 2017-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




/* For internal mutex and condition variable definitions.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 1 3 4
/* Common threading primitives definitions for both POSIX and C11.
   Copyright (C) 2017-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




/* Arch-specific definitions.  Each architecture must define the following
   macros to define the expected sizes of pthread data types:

   __SIZEOF_PTHREAD_ATTR_T        - size of pthread_attr_t.
   __SIZEOF_PTHREAD_MUTEX_T       - size of pthread_mutex_t.
   __SIZEOF_PTHREAD_MUTEXATTR_T   - size of pthread_mutexattr_t.
   __SIZEOF_PTHREAD_COND_T        - size of pthread_cond_t.
   __SIZEOF_PTHREAD_CONDATTR_T    - size of pthread_condattr_t.
   __SIZEOF_PTHREAD_RWLOCK_T      - size of pthread_rwlock_t.
   __SIZEOF_PTHREAD_RWLOCKATTR_T  - size of pthread_rwlockattr_t.
   __SIZEOF_PTHREAD_BARRIER_T     - size of pthread_barrier_t.
   __SIZEOF_PTHREAD_BARRIERATTR_T - size of pthread_barrierattr_t.

   The additional macro defines any constraint for the lock alignment
   inside the thread structures:

   __LOCK_ALIGNMENT - for internal lock/futex usage.

   Same idea but for the once locking primitive:

   __ONCE_ALIGNMENT - for pthread_once_t/once_flag definition.  */

# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 1 3 4
/* Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
# 13 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 2 3 4
# 45 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4


/* Common definition of pthread_mutex_t. */

typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;

typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;

/* Arch-specific mutex definitions.  A generic implementation is provided
   by sysdeps/nptl/bits/struct_mutex.h.  If required, an architecture
   can override it by defining:

   1. struct __pthread_mutex_s (used on both pthread_mutex_t and mtx_t
      definition).  It should contains at least the internal members
      defined in the generic version.

   2. __LOCK_ALIGNMENT for any extra attribute for internal lock used with
      atomic operations.

   3. The macro __PTHREAD_MUTEX_INITIALIZER used for static initialization.
      It should initialize the mutex internal flag.  */

# 1 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 1 3 4
/* x86 internal mutex struct definitions.
   Copyright (C) 2019-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */




struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;

  unsigned int __nusers;

  /* KIND must stay at this position in the structure to maintain
     binary compatibility with static initializers.  */
  int __kind;

  short __spins;
  short __elision;
  __pthread_list_t __list;
# 53 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3 4
};
# 75 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4

/* Arch-sepecific read-write lock definitions.  A generic implementation is
   provided by struct_rwlock.h.  If required, an architecture can override it
   by defining:

   1. struct __pthread_rwlock_arch_t (used on pthread_rwlock_t definition).
      It should contain at least the internal members defined in the
      generic version.

   2. The macro __PTHREAD_RWLOCK_INITIALIZER used for static initialization.
      It should initialize the rwlock internal type.  */

# 1 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 1 3 4
/* x86 internal rwlock struct definitions.
   Copyright (C) 2019-2020 Free Software Foundation, Inc.

   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */




struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;

  int __cur_writer;
  int __shared;
  signed char __rwelision;




  unsigned char __pad1[7];


  unsigned long int __pad2;
  /* FLAGS must stay at this position in the structure to maintain
     binary compatibility.  */
  unsigned int __flags;
# 55 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3 4
};
# 88 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4


/* Common definition of pthread_cond_t. */

struct __pthread_cond_s
{
  __extension__ union
  {
    __extension__ unsigned long long int __wseq;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __wseq32;
  };
  __extension__ union
  {
    __extension__ unsigned long long int __g1_start;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __g1_start32;
  };
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
# 24 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4

/* Thread identifiers.  The structure of the attribute type is not
   exposed on purpose.  */
typedef unsigned long int pthread_t;


/* Data structures for mutex handling.  The structure of the attribute
   type is not exposed on purpose.  */
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;


/* Data structure for condition variable handling.  The structure of
   the attribute type is not exposed on purpose.  */
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;


/* Keys for thread-specific data */
typedef unsigned int pthread_key_t;


/* Once-only execution */
typedef int pthread_once_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;




typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;


typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;



/* Data structure for reader-writer lock variable handling.  The
   structure of the attribute type is deliberately not exposed.  */
typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;




/* POSIX spinlock data type.  */
typedef volatile int pthread_spinlock_t;


/* POSIX barriers data type.  The structure of the type is
   deliberately not exposed.  */
typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 228 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



# 395 "/usr/include/stdlib.h" 2 3 4

/* These are the functions that actually do things.  The `random', `srandom',
   `initstate' and `setstate' functions are those from BSD Unices.
   The `rand' and `srand' functions are required by the ANSI standard.
   We provide both interfaces to the same random number generator.  */
/* Return a random long integer between 0 and RAND_MAX inclusive.  */
extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));

/* Seed the random number generator with the given number.  */
extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));

/* Initialize the random number generator to use state buffer STATEBUF,
   of length STATELEN, and seed it with SEED.  Optimal lengths are 8, 16,
   32, 64, 128 and 256, the bigger the better; values less than 8 will
   cause an error and values greater than 256 will be rounded down.  */
extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

/* Switch the random number generator to state buffer STATEBUF,
   which should have been previously initialized by `initstate'.  */
extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



/* Reentrant versions of the `random' family of functions.
   These functions all use the following data structure to contain
   state, rather than global state variables.  */

struct random_data
  {
    int32_t *fptr; /* Front pointer.  */
    int32_t *rptr; /* Rear pointer.  */
    int32_t *state; /* Array of state values.  */
    int rand_type; /* Type of random number generator.  */
    int rand_deg; /* Degree of random number generator.  */
    int rand_sep; /* Distance between front and rear.  */
    int32_t *end_ptr; /* Pointer behind state table.  */
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




/* Return a random integer between 0 and RAND_MAX inclusive.  */
extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));
/* Seed the random number generator with the given number.  */
extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));


/* Reentrant interface according to POSIX.1.  */
extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));




/* System V style 48-bit random number generator functions.  */

/* Return non-negative, double-precision floating-point value in [0.0,1.0).  */
extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

/* Return non-negative, long integer in [0,2^31).  */
extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

/* Return signed, long integers in [-2^31,2^31).  */
extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

/* Seed random number generator.  */
extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


/* Data structure for communication with thread safe versions.  This
   type is to be regarded as opaque.  It's only exported because users
   have to allocate objects of this type.  */
struct drand48_data
  {
    unsigned short int __x[3]; /* Current state.  */
    unsigned short int __old_x[3]; /* Old state.  */
    unsigned short int __c; /* Additive const. in congruential formula.  */
    unsigned short int __init; /* Flag for initializing.  */
    __extension__ unsigned long long int __a; /* Factor in congruential
						   formula.  */
  };

/* Return non-negative, double-precision floating-point value in [0.0,1.0).  */
extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

/* Return non-negative, long integer in [0,2^31).  */
extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

/* Return signed, long integers in [-2^31,2^31).  */
extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

/* Seed random number generator.  */
extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



/* Allocate SIZE bytes of memory.  */
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) ;
/* Allocate NMEMB elements of SIZE bytes each, all initialized to 0.  */
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1, 2))) ;

/* Re-allocate the previously allocated block
   in PTR, making the new block SIZE bytes long.  */
/* __attribute_malloc__ is not used, because if realloc returns
   the same pointer that was passed to it, aliasing needs to be allowed
   between objects pointed by the old and new pointers.  */
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__alloc_size__ (2)));


/* Re-allocate the previously allocated block in PTR, making the new
   block large enough for NMEMB elements of SIZE bytes each.  */
/* __attribute_malloc__ is not used, because if reallocarray returns
   the same pointer that was passed to it, aliasing needs to be allowed
   between objects pointed by the old and new pointers.  */
extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__))
     __attribute__ ((__alloc_size__ (2, 3)));


/* Free a block allocated by `malloc', `realloc' or `calloc'.  */
extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));


# 1 "/usr/include/alloca.h" 1 3 4
/* Copyright (C) 1992-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 22 "/usr/include/alloca.h" 2 3 4


# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
/* Copyright (C) 1989-2019 Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.17  Common definitions  <stddef.h>
 */






/* Any one of these symbols __need_* means that GNU libc
   wants us just to define one data type.  So don't define
   the symbols that indicate this file's entire job has been done.  */
# 46 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* This avoids lossage on SunOS but only if stdtypes.h comes first.
   There's no way to win with the other order!  Sun lossage.  */
# 86 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Sequent's header files use _PTRDIFF_T_ in some conflicting way.
   Just ignore it.  */




/* On VxWorks, <type/vxTypesBase.h> may have defined macros like
   _TYPE_size_t which will typedef size_t.  fixincludes patched the
   vxTypesBase.h so that this macro is only defined if _GCC_SIZE_T is
   not defined, and so that defining this macro defines _GCC_SIZE_T.
   If we find that the macros are still defined at this point, we must
   invoke them so that the type is defined as expected.  */
# 111 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* In case nobody has defined these types, but we aren't running under
   GCC 2.00, make sure that __PTRDIFF_TYPE__, __SIZE_TYPE__, and
   __WCHAR_TYPE__ have reasonable values.  This can happen if the
   parts of GCC is compiled by an older compiler, that actually
   include gstddef.h, such as collect2.  */

/* Signed type of difference of two pointers.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 159 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Unsigned type of `sizeof' something.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 235 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Wide character type.
   Locale-writers should change this as necessary to
   be big enough to hold unique values not between 0 and 127,
   and not (wchar_t) -1, for each defined multibyte character.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 387 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* A null pointer constant.  */
# 25 "/usr/include/alloca.h" 2 3 4



/* Remove any previous definitions.  */


/* Allocate a block that will be freed when the calling function exits.  */
extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 569 "/usr/include/stdlib.h" 2 3 4




/* Allocate SIZE bytes on a page boundary.  The storage cannot be freed.  */
extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) ;



/* Allocate memory of SIZE bytes with an alignment of ALIGNMENT.  */
extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;



/* ISO C variant of aligned allocation.  */
extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (2))) ;


/* Abort execution and generate a core-dump.  */
extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


/* Register a function to be called when `exit' is called.  */
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


/* Register a function to be called when `quick_exit' is called.  */




extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




/* Register a function to be called with the status
   given to `exit' and the given argument.  */
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


/* Call all functions registered with `atexit' and `on_exit',
   in the reverse of the order in which they were registered,
   perform stdio cleanup, and terminate program execution with STATUS.  */
extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


/* Call all functions registered with `at_quick_exit' in the reverse
   of the order in which they were registered and terminate program
   execution with STATUS.  */
extern void quick_exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



/* Terminate the program with STATUS without calling any of the
   functions registered with `atexit' or `on_exit'.  */
extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



/* Return the value of envariable NAME, or NULL if it doesn't exist.  */
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 644 "/usr/include/stdlib.h" 3 4
/* The SVID says this is in <stdio.h>, but this seems a better place.	*/
/* Put STRING, which is of the form "NAME=VALUE", in the environment.
   If there is no `=', remove NAME from the environment.  */
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



/* Set NAME to VALUE in the environment.
   If REPLACE is nonzero, overwrite an existing value.  */
extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

/* Remove the variable NAME from the environment.  */
extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



/* The `clearenv' was planned to be added to POSIX.1 but probably
   never made it.  Nevertheless the POSIX.9 standard (POSIX bindings
   for Fortran 77) requires this function.  */
extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));





/* Generate a unique temporary file name from TEMPLATE.
   The last six characters of TEMPLATE must be "XXXXXX";
   they are replaced with a string that makes the file name unique.
   Always returns TEMPLATE, it's either a temporary file name or a null
   string if it cannot get a unique file name.  */
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



/* Generate a unique temporary file name from TEMPLATE.
   The last six characters of TEMPLATE must be "XXXXXX";
   they are replaced with a string that makes the filename unique.
   Returns a file descriptor open on the file for reading and writing,
   or -1 if it cannot create a uniquely-named file.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */

extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 703 "/usr/include/stdlib.h" 3 4
/* Similar to mkstemp, but the template can have a suffix after the
   XXXXXX.  The length of the suffix is specified in the second
   parameter.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */

extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 726 "/usr/include/stdlib.h" 3 4
/* Create a unique temporary directory from TEMPLATE.
   The last six characters of TEMPLATE must be "XXXXXX";
   they are replaced with a string that makes the directory name unique.
   Returns TEMPLATE, or a null pointer if it cannot get a unique name.
   The directory is created mode 700.  */
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 780 "/usr/include/stdlib.h" 3 4
/* Execute the given line as a shell command.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int system (const char *__command) ;
# 795 "/usr/include/stdlib.h" 3 4
/* Return the canonical absolute name of file NAME.  If RESOLVED is
   null, the result is malloc'd; otherwise, if the canonical name is
   PATH_MAX chars or more, returns null with `errno' set to
   ENAMETOOLONG; if the name fits in fewer than PATH_MAX chars,
   returns the name in RESOLVED.  */
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) ;



/* Shorthand for type of comparison functions.  */


typedef int (*__compar_fn_t) (const void *, const void *);
# 818 "/usr/include/stdlib.h" 3 4
/* Do a binary search for KEY in BASE, which consists of NMEMB elements
   of SIZE bytes each, using COMPAR to perform the comparisons.  */
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;





/* Sort NMEMB elements of BASE, of SIZE bytes each,
   using COMPAR to perform the comparisons.  */
extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));







/* Return the absolute value of X.  */
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;


__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;



/* Return the `div_t', `ldiv_t' or `lldiv_t' representation
   of the value of NUMER over DENOM. */
/* GCC may have built-ins for these someday.  */
extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;


__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;





/* Convert floating point numbers to strings.  The returned values are
   valid only until another call to the same function.  */

/* Convert VALUE to a string with NDIGIT digits and return a pointer to
   this.  Set *DECPT with the position of the decimal character and *SIGN
   with the sign of the number.  */
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;

/* Convert VALUE to a string rounded to NDIGIT decimal digits.  Set *DECPT
   with the position of the decimal character and *SIGN with the sign of
   the number.  */
extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;

/* If possible convert VALUE to a string with NDIGIT significant digits.
   Otherwise use exponential representation.  The resulting string will
   be written to BUF.  */
extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;



/* Long double versions of above functions.  */
extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;


/* Reentrant version of the functions above which provide their own
   buffers.  */
extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));



/* Return the length of the multibyte character
   in S, which is no longer than N.  */
extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
/* Return the length of the given multibyte character,
   putting its `wchar_t' representation in *PWC.  */
extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
/* Put the multibyte character represented
   by WCHAR in S, returning its length.  */
extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));


/* Convert a multibyte string to a wide char string.  */
extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
/* Convert a wide char string to multibyte string.  */
extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));



/* Determine whether the string value of RESPONSE matches the affirmation
   or negative response expression as specified by the LC_MESSAGES category
   in the program's current locale.  Returns 1 if affirmative, 0 if
   negative, and -1 if not matching.  */
extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;




/* Parse comma separated suboption from *OPTIONP and match against
   strings in TOKENS.  If found return index and set *VALUEP to
   optional value introduced by an equal sign.  If the suboption is
   not part of TOKENS return in *VALUEP beginning of unknown
   suboption.  On exit *OPTIONP is set to the beginning of the next
   token or at the terminating NUL character.  */
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;



/* X/Open pseudo terminal handling.  */
# 1000 "/usr/include/stdlib.h" 3 4
/* Put the 1 minute, 5 minute and 15 minute load averages into the first
   NELEM elements of LOADAVG.  Return the number written (never more than
   three, but may be less than NELEM), or -1 if an error occurred.  */
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1013 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
/* Floating-point inline functions for stdlib.h.
   Copyright (C) 2012-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 1014 "/usr/include/stdlib.h" 2 3 4

/* Define some macros helping to catch buffer overflows.  */








# 7 "main.h" 2
# 1 "/usr/include/stdio.h" 1 3 4
/* Define ISO C stdio on top of C++ iostreams.
   Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 *	ISO C99 Standard: 7.19 Input/output	<stdio.h>
 */





# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
/* Handle feature test macros at the start of a header.
   Copyright (C) 2016-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/* This header is internal to glibc and should not be included outside
   of glibc headers.  Headers including it must define
   __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION first.  This header
   cannot have multiple include guards because ISO C feature test
   macros depend on the definition of the macro when an affected
   header is included, not when the first system header is
   included.  */







# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4

/* ISO/IEC TR 24731-2:2010 defines the __STDC_WANT_LIB_EXT2__
   macro.  */
# 45 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
/* ISO/IEC TS 18661-1:2014 defines the __STDC_WANT_IEC_60559_BFP_EXT__
   macro.  Most but not all symbols enabled by that macro in TS
   18661-1 are enabled unconditionally in C2X; the symbols in Annex F
   still require that macro in C2X.  */
# 62 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
/* ISO/IEC TS 18661-4:2015 defines the
   __STDC_WANT_IEC_60559_FUNCS_EXT__ macro.  Other than the reduction
   functions, the symbols from this TS are enabled unconditionally in
   C2X.  */
# 79 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
/* ISO/IEC TS 18661-3:2015 defines the
   __STDC_WANT_IEC_60559_TYPES_EXT__ macro.  */
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
/* Copyright (C) 1989-2019 Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.17  Common definitions  <stddef.h>
 */






/* Any one of these symbols __need_* means that GNU libc
   wants us just to define one data type.  So don't define
   the symbols that indicate this file's entire job has been done.  */
# 46 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* This avoids lossage on SunOS but only if stdtypes.h comes first.
   There's no way to win with the other order!  Sun lossage.  */
# 86 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Sequent's header files use _PTRDIFF_T_ in some conflicting way.
   Just ignore it.  */




/* On VxWorks, <type/vxTypesBase.h> may have defined macros like
   _TYPE_size_t which will typedef size_t.  fixincludes patched the
   vxTypesBase.h so that this macro is only defined if _GCC_SIZE_T is
   not defined, and so that defining this macro defines _GCC_SIZE_T.
   If we find that the macros are still defined at this point, we must
   invoke them so that the type is defined as expected.  */
# 111 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* In case nobody has defined these types, but we aren't running under
   GCC 2.00, make sure that __PTRDIFF_TYPE__, __SIZE_TYPE__, and
   __WCHAR_TYPE__ have reasonable values.  This can happen if the
   parts of GCC is compiled by an older compiler, that actually
   include gstddef.h, such as collect2.  */

/* Signed type of difference of two pointers.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 159 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Unsigned type of `sizeof' something.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 235 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* Wide character type.
   Locale-writers should change this as necessary to
   be big enough to hold unique values not between 0 and 127,
   and not (wchar_t) -1, for each defined multibyte character.  */

/* Define this type if we are doing the whole job,
   or if we want this type in particular.  */
# 387 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
/* A null pointer constant.  */
# 34 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h" 1 3 4
/* Copyright (C) 1989-2019 Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

/*
 * ISO C Standard:  7.15  Variable arguments  <stdarg.h>
 */
# 36 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h" 3 4
/* Define __gnuc_va_list.  */



typedef __builtin_va_list __gnuc_va_list;


/* Define the standard macros for the user,
   if this invocation was from the user program.  */
# 37 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 39 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 5 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 1 3 4



/* Integral type unchanged by default argument promotions that can
   hold any value corresponding to members of the extended character
   set, as well as at least one value that does not correspond to any
   member of the extended character set.  */




/* Conversion state information.  */
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value; /* Value so far.  */
} __mbstate_t;
# 6 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h" 2 3 4

/* The tag name of this struct is _G_fpos_t to preserve historic
   C++ mangled names for functions taking fpos_t arguments.
   That name should not be used in new code.  */
typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
# 40 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 5 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h" 2 3 4


/* The tag name of this struct is _G_fpos64_t to preserve historic
   C++ mangled names for functions taking fpos_t and/or fpos64_t
   arguments.  That name should not be used in new code.  */
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
# 41 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h" 1 3 4



struct _IO_FILE;
typedef struct _IO_FILE __FILE;
# 42 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h" 1 3 4



struct _IO_FILE;

/* The opaque type of streams.  This is the definition used elsewhere.  */
typedef struct _IO_FILE FILE;
# 43 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




/* Caution: The contents of this file are not part of the official
   stdio.h API.  However, much of it is part of the official *binary*
   interface, and therefore cannot be changed.  */
# 33 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 34 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 2 3 4

struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;

/* During the build of glibc itself, _IO_lock_t will already have been
   defined by internal headers.  */

typedef void _IO_lock_t;


/* The tag name of this struct is _IO_FILE to preserve historic
   C++ mangled names for functions taking FILE* arguments.
   That name should not be used in new code.  */
struct _IO_FILE
{
  int _flags; /* High-order word is _IO_MAGIC; rest is flags. */

  /* The following pointers correspond to the C++ streambuf protocol. */
  char *_IO_read_ptr; /* Current read pointer */
  char *_IO_read_end; /* End of get area. */
  char *_IO_read_base; /* Start of putback+get area. */
  char *_IO_write_base; /* Start of put area. */
  char *_IO_write_ptr; /* Current put pointer. */
  char *_IO_write_end; /* End of put area. */
  char *_IO_buf_base; /* Start of reserve area. */
  char *_IO_buf_end; /* End of reserve area. */

  /* The following fields are used to support backing up and undo. */
  char *_IO_save_base; /* Pointer to start of non-current get area. */
  char *_IO_backup_base; /* Pointer to first valid character of backup area */
  char *_IO_save_end; /* Pointer to end of non-current get area. */

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;
  int _flags2;
  __off_t _old_offset; /* This used to be _offset but it's too small.  */

  /* 1+column number of pbase(); 0 is unknown. */
  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];

  _IO_lock_t *_lock;







  __off64_t _offset;
  /* Wide character stream stuff.  */
  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;
  /* Make sure we don't get into trouble again.  */
  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};

/* These macros are used by bits/stdio.h and internal headers.  */
# 118 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 3 4
/* Many more flag bits are defined internally.  */
# 44 "/usr/include/stdio.h" 2 3 4
# 52 "/usr/include/stdio.h" 3 4
typedef __gnuc_va_list va_list;
# 82 "/usr/include/stdio.h" 3 4
/* The type of the second argument to `fgetpos' and `fsetpos'.  */

typedef __fpos_t fpos_t;







/* The possibilities for the third argument to `setvbuf'.  */





/* Default buffer size.  */



/* The value returned by fgetc and similar functions to indicate the
   end of the file.  */



/* The possibilities for the third argument to `fseek'.
   These values should not be changed.  */
# 119 "/usr/include/stdio.h" 3 4
/* Default path prefix for `tempnam' and `tmpnam'.  */




/* Get the values:
   L_tmpnam	How long an array of chars must be to be passed to `tmpnam'.
   TMP_MAX	The minimum number of unique filenames generated by tmpnam
		(and tempnam when it uses tmpnam's name space),
		or tempnam (the two are separate).
   L_ctermid	How long an array to pass to `ctermid'.
   L_cuserid	How long an array to pass to `cuserid'.
   FOPEN_MAX	Minimum number of files that can be open at once.
   FILENAME_MAX	Maximum length of a filename.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
/* Copyright (C) 1994-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 134 "/usr/include/stdio.h" 2 3 4


/* Standard streams.  */
extern FILE *stdin; /* Standard input stream.  */
extern FILE *stdout; /* Standard output stream.  */
extern FILE *stderr; /* Standard error output stream.  */
/* C89/C99 say they're macros.  Make them happy.  */




/* Remove file FILENAME.  */
extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));
/* Rename file OLD to NEW.  */
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));


/* Rename file OLD relative to OLDFD to NEW relative to NEWFD.  */
extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));
# 168 "/usr/include/stdio.h" 3 4
/* Create a temporary file and open it read/write.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */

extern FILE *tmpfile (void) ;
# 186 "/usr/include/stdio.h" 3 4
/* Generate a temporary filename.  */
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;


/* This is the reentrant variant of `tmpnam'.  The only difference is
   that it does not allow S to be NULL.  */
extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;




/* Generate a unique temporary filename using up to five characters of PFX
   if it is not NULL.  The directory to put this file in is searched for
   as follows: First the environment variable "TMPDIR" is checked.
   If it contains the name of a writable directory, that directory is used.
   If not and if DIR is not NULL, that value is checked.  If that fails,
   P_tmpdir is tried and finally "/tmp".  The storage for the filename
   is allocated by `malloc'.  */
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;



/* Close STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fclose (FILE *__stream);
/* Flush STREAM, or all streams if STREAM is NULL.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fflush (FILE *__stream);


/* Faster versions when locking is not required.

   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern int fflush_unlocked (FILE *__stream);
# 242 "/usr/include/stdio.h" 3 4
/* Open a file and create a new stream for it.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;
/* Open a file, replacing an existing stream with it.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 278 "/usr/include/stdio.h" 3 4
/* Create a new stream that refers to an existing system file descriptor.  */
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;
# 291 "/usr/include/stdio.h" 3 4
/* Create a new stream that refers to a memory buffer.  */
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) ;

/* Open a stream that writes into a malloc'd buffer that is expanded as
   necessary.  *BUFLOC and *SIZELOC are updated with the buffer's location
   and the number of characters written on fflush or fclose.  */
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;



/* If BUF is NULL, make STREAM unbuffered.
   Else make it use buffer BUF, of size BUFSIZ.  */
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));
/* Make STREAM use buffering mode MODE.
   If BUF is not NULL, use N bytes of it for buffering;
   else allocate an internal buffer N bytes long.  */
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


/* If BUF is NULL, make STREAM unbuffered.
   Else make it use SIZE bytes of BUF for buffering.  */
extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));

/* Make STREAM line-buffered.  */
extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



/* Write formatted output to STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);
/* Write formatted output to stdout.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int printf (const char *__restrict __format, ...);
/* Write formatted output to S.  */
extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));

/* Write formatted output to S from argument list ARG.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);
/* Write formatted output to stdout from argument list ARG.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);
/* Write formatted output to S from argument list ARG.  */
extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));


/* Maximum chars of output to write in MAXLEN.  */
extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
# 378 "/usr/include/stdio.h" 3 4
/* Write formatted output to a file descriptor.  */
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));



/* Read formatted input from STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;
/* Read formatted input from stdin.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int scanf (const char *__restrict __format, ...) ;
/* Read formatted input from S.  */
extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));

/* For historical reasons, the C99-compliant versions of the scanf
   functions are at alternative names.  When __LDBL_COMPAT is in
   effect, this is handled in bits/stdio-ldbl.h.  */


extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                               ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                              ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 428 "/usr/include/stdio.h" 3 4
/* Read formatted input from S into argument list ARG.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;

/* Read formatted input from stdin into argument list ARG.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;

/* Read formatted input from S into argument list ARG.  */
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));

/* Same redirection as above for the v*scanf family.  */


extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 481 "/usr/include/stdio.h" 3 4
/* Read a character from STREAM.

   These functions are possible cancellation points and therefore not
   marked with __THROW.  */
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);

/* Read a character from stdin.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int getchar (void);


/* These are defined in POSIX.1:1996.

   These functions are possible cancellation points and therefore not
   marked with __THROW.  */
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);



/* Faster version when locking is not necessary.

   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern int fgetc_unlocked (FILE *__stream);



/* Write a character to STREAM.

   These functions are possible cancellation points and therefore not
   marked with __THROW.

   These functions is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);

/* Write a character to stdout.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int putchar (int __c);


/* Faster version when locking is not necessary.

   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern int fputc_unlocked (int __c, FILE *__stream);



/* These are defined in POSIX.1:1996.

   These functions are possible cancellation points and therefore not
   marked with __THROW.  */
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);





/* Get a word (int) from STREAM.  */
extern int getw (FILE *__stream);

/* Write a word (int) to STREAM.  */
extern int putw (int __w, FILE *__stream);



/* Get a newline-terminated string of finite length from STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 593 "/usr/include/stdio.h" 3 4
/* Read up to (and including) a DELIMITER from STREAM into *LINEPTR
   (and null-terminate it). *LINEPTR is a pointer returned from malloc (or
   NULL), pointing to *N characters of space.  It is realloc'd as
   necessary.  Returns the number of characters read (not including the
   null terminator), or -1 on error or EOF.

   These functions are not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation they are cancellation points and
   therefore not marked with __THROW.  */
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) ;

/* Like `getdelim', but reads up to a newline.

   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) ;



/* Write a string to STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);

/* Write a string, followed by a newline, to stdout.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int puts (const char *__s);


/* Push a character back onto the input buffer of STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int ungetc (int __c, FILE *__stream);


/* Read chunks of generic data from STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;
/* Write chunks of generic data to STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
# 667 "/usr/include/stdio.h" 3 4
/* Faster versions when locking is not necessary.

   These functions are not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation they are cancellation points and
   therefore not marked with __THROW.  */
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);



/* Seek to a certain position on STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fseek (FILE *__stream, long int __off, int __whence);
/* Return the current position of STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern long int ftell (FILE *__stream) ;
/* Rewind to the beginning of STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern void rewind (FILE *__stream);

/* The Single Unix Specification, Version 2, specifies an alternative,
   more adequate interface for the two functions above which deal with
   file offset.  `long int' is not the right type.  These definitions
   are originally defined in the Large File Support API.  */



/* Seek to a certain position on STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fseeko (FILE *__stream, __off_t __off, int __whence);
/* Return the current position of STREAM.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern __off_t ftello (FILE *__stream) ;
# 727 "/usr/include/stdio.h" 3 4
/* Get STREAM's position.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);
/* Set STREAM's position.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 756 "/usr/include/stdio.h" 3 4
/* Clear the error and EOF indicators for STREAM.  */
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
/* Return the EOF indicator for STREAM.  */
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
/* Return the error indicator for STREAM.  */
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;


/* Faster versions when locking is not required.  */
extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;



/* Print a message describing the meaning of the value of errno.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern void perror (const char *__s);

/* Provide the declarations for `sys_errlist' and `sys_nerr' if they
   are available on this system.  Even if available, these variables
   should not be used directly.  The `strerror' function provides
   all the necessary functionality.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
/* Declare sys_errlist and sys_nerr, or don't.  Compatibility (do) version.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */





/* sys_errlist and sys_nerr are deprecated.  Use strerror instead.  */


extern int sys_nerr;
extern const char *const sys_errlist[];
# 782 "/usr/include/stdio.h" 2 3 4



/* Return the system file descriptor for STREAM.  */
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;



/* Faster version when locking is not required.  */
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




/* Create a new stream connected to a pipe running the given command.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern FILE *popen (const char *__command, const char *__modes) ;

/* Close a stream opened by popen and return the status of its child.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int pclose (FILE *__stream);




/* Return the name of the controlling terminal.  */
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 837 "/usr/include/stdio.h" 3 4
/* These are defined in POSIX.1:1996.  */

/* Acquire ownership of STREAM.  */
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

/* Try to acquire ownership of STREAM but do not block if it is not
   possible.  */
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

/* Relinquish the ownership granted for STREAM.  */
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 856 "/usr/include/stdio.h" 3 4
/* Slow-path routines used by the optimized inline functions in
   bits/stdio.h.  */
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);

/* If we are compiling with optimizing read this file.  It contains
   several optimizing inline functions and macros.  */
# 873 "/usr/include/stdio.h" 3 4

# 8 "main.h" 2




# 11 "main.h"
int _putchar(char c);
ssize_t read_textfile(const char *filename, size_t letters);
int create_file(const char *filename, char *text_content);
int append_text_to_file(const char *filename, char *text_content);
# 2 "100-elf_header.c" 2
# 1 "/usr/include/elf.h" 1 3 4

# 1 "/usr/include/elf.h" 3 4
/* This file defines standard ELF types, structures, and macros.
   Copyright (C) 1995-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 23 "/usr/include/elf.h" 2 3 4



/* Standard ELF types.  */

# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
/* Copyright (C) 1997-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 *	ISO C99: 7.18 Integer types <stdint.h>
 */





# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
/* Handle feature test macros at the start of a header.
   Copyright (C) 2016-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/* This header is internal to glibc and should not be included outside
   of glibc headers.  Headers including it must define
   __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION first.  This header
   cannot have multiple include guards because ISO C feature test
   macros depend on the definition of the macro when an affected
   header is included, not when the first system header is
   included.  */







# 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4

/* ISO/IEC TR 24731-2:2010 defines the __STDC_WANT_LIB_EXT2__
   macro.  */
# 45 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
/* ISO/IEC TS 18661-1:2014 defines the __STDC_WANT_IEC_60559_BFP_EXT__
   macro.  Most but not all symbols enabled by that macro in TS
   18661-1 are enabled unconditionally in C2X; the symbols in Annex F
   still require that macro in C2X.  */
# 62 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
/* ISO/IEC TS 18661-4:2015 defines the
   __STDC_WANT_IEC_60559_FUNCS_EXT__ macro.  Other than the reduction
   functions, the symbols from this TS are enabled unconditionally in
   C2X.  */
# 79 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
/* ISO/IEC TS 18661-3:2015 defines the
   __STDC_WANT_IEC_60559_TYPES_EXT__ macro.  */
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
/* wchar_t type related definitions.
   Copyright (C) 2000-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




/* The fallback definitions, for when __WCHAR_MAX__ or __WCHAR_MIN__
   are not defined, give the right value and type as long as both int
   and wchar_t are 32-bit types.  Adding L'\0' to a constant value
   ensures that the type is correct; it is necessary to use (L'\0' +
   0) rather than just L'\0' so that the type in C++ is the promoted
   version of wchar_t rather than the distinct wchar_t type itself.
   Because wchar_t in preprocessor #if expressions is treated as
   intmax_t or uintmax_t, the expression (L'\0' - 1) would have the
   wrong value for WCHAR_MAX in such expressions and so cannot be used
   to define __WCHAR_MAX in the unsigned case.  */
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
# 13 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
# 30 "/usr/include/stdint.h" 2 3 4

/* Exact integral types.  */

/* Signed.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
/* Define intN_t types.
   Copyright (C) 2017-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
# 35 "/usr/include/stdint.h" 2 3 4

/* Unsigned.  */
# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 1 3 4
/* Define uintN_t types.
   Copyright (C) 2017-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */




# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 * Never include this file directly; use <sys/types.h> instead.
 */
# 23 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 2 3 4

typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4


/* Small types.  */

/* Signed.  */
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;

/* Unsigned.  */
typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;


/* Fast types.  */

/* Signed.  */
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;







/* Unsigned.  */
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 84 "/usr/include/stdint.h" 3 4
/* Types for `void *' pointers.  */





typedef unsigned long int uintptr_t;
# 100 "/usr/include/stdint.h" 3 4
/* Largest integral types.  */
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 113 "/usr/include/stdint.h" 3 4
/* Limits of integral types.  */

/* Minimum of signed integral types.  */




/* Maximum of signed integral types.  */





/* Maximum of unsigned integral types.  */






/* Minimum of signed integral types having a minimum size.  */




/* Maximum of signed integral types having a minimum size.  */





/* Maximum of unsigned integral types having a minimum size.  */






/* Minimum of fast signed integral types having a minimum size.  */
# 161 "/usr/include/stdint.h" 3 4
/* Maximum of fast signed integral types having a minimum size.  */
# 172 "/usr/include/stdint.h" 3 4
/* Maximum of fast unsigned integral types having a minimum size.  */
# 184 "/usr/include/stdint.h" 3 4
/* Values to test for integral types holding `void *' pointer.  */
# 196 "/usr/include/stdint.h" 3 4
/* Minimum for largest signed integral type.  */

/* Maximum for largest signed integral type.  */


/* Maximum for largest unsigned integral type.  */



/* Limits of other integer types.  */

/* Limits of `ptrdiff_t' type.  */
# 221 "/usr/include/stdint.h" 3 4
/* Limits of `sig_atomic_t'.  */



/* Limit of `size_t' type.  */
# 236 "/usr/include/stdint.h" 3 4
/* Limits of `wchar_t'.  */

/* These constants might also be defined in <wchar.h>.  */




/* Limits of `wint_t'.  */



/* Signed.  */
# 257 "/usr/include/stdint.h" 3 4
/* Unsigned.  */
# 267 "/usr/include/stdint.h" 3 4
/* Maximal type.  */
# 10 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h" 2 3 4
# 29 "/usr/include/elf.h" 2 3 4

/* Type for a 16-bit quantity.  */
typedef uint16_t Elf32_Half;
typedef uint16_t Elf64_Half;

/* Types for signed and unsigned 32-bit quantities.  */
typedef uint32_t Elf32_Word;
typedef int32_t Elf32_Sword;
typedef uint32_t Elf64_Word;
typedef int32_t Elf64_Sword;

/* Types for signed and unsigned 64-bit quantities.  */
typedef uint64_t Elf32_Xword;
typedef int64_t Elf32_Sxword;
typedef uint64_t Elf64_Xword;
typedef int64_t Elf64_Sxword;

/* Type of addresses.  */
typedef uint32_t Elf32_Addr;
typedef uint64_t Elf64_Addr;

/* Type of file offsets.  */
typedef uint32_t Elf32_Off;
typedef uint64_t Elf64_Off;

/* Type for section indices, which are 16-bit quantities.  */
typedef uint16_t Elf32_Section;
typedef uint16_t Elf64_Section;

/* Type for version symbol information.  */
typedef Elf32_Half Elf32_Versym;
typedef Elf64_Half Elf64_Versym;


/* The ELF file header.  This appears at the start of every ELF file.  */



typedef struct
{
  unsigned char e_ident[(16)]; /* Magic number and other info */
  Elf32_Half e_type; /* Object file type */
  Elf32_Half e_machine; /* Architecture */
  Elf32_Word e_version; /* Object file version */
  Elf32_Addr e_entry; /* Entry point virtual address */
  Elf32_Off e_phoff; /* Program header table file offset */
  Elf32_Off e_shoff; /* Section header table file offset */
  Elf32_Word e_flags; /* Processor-specific flags */
  Elf32_Half e_ehsize; /* ELF header size in bytes */
  Elf32_Half e_phentsize; /* Program header table entry size */
  Elf32_Half e_phnum; /* Program header table entry count */
  Elf32_Half e_shentsize; /* Section header table entry size */
  Elf32_Half e_shnum; /* Section header table entry count */
  Elf32_Half e_shstrndx; /* Section header string table index */
} Elf32_Ehdr;

typedef struct
{
  unsigned char e_ident[(16)]; /* Magic number and other info */
  Elf64_Half e_type; /* Object file type */
  Elf64_Half e_machine; /* Architecture */
  Elf64_Word e_version; /* Object file version */
  Elf64_Addr e_entry; /* Entry point virtual address */
  Elf64_Off e_phoff; /* Program header table file offset */
  Elf64_Off e_shoff; /* Section header table file offset */
  Elf64_Word e_flags; /* Processor-specific flags */
  Elf64_Half e_ehsize; /* ELF header size in bytes */
  Elf64_Half e_phentsize; /* Program header table entry size */
  Elf64_Half e_phnum; /* Program header table entry count */
  Elf64_Half e_shentsize; /* Section header table entry size */
  Elf64_Half e_shnum; /* Section header table entry count */
  Elf64_Half e_shstrndx; /* Section header string table index */
} Elf64_Ehdr;

/* Fields in the e_ident array.  The EI_* macros are indices into the
   array.  The macros under each EI_* macro are the values the byte
   may have.  */
# 119 "/usr/include/elf.h" 3 4
/* Conglomeration of the identification bytes, for easy testing as a word.  */
# 136 "/usr/include/elf.h" 3 4
     /* Value must be EV_CURRENT */
# 160 "/usr/include/elf.h" 3 4
/* Legal values for e_type (object file type).  */
# 173 "/usr/include/elf.h" 3 4
/* Legal values for e_machine (architecture).  */
# 186 "/usr/include/elf.h" 3 4
    /* reserved 11-14 */

    /* reserved 16 */







    /* reserved 24-35 */
# 282 "/usr/include/elf.h" 3 4
    /* reserved 121-130 */
# 297 "/usr/include/elf.h" 3 4
    /* reserved 145-159 */
# 320 "/usr/include/elf.h" 3 4
    /* reserved 182 */

    /* reserved 184 */
# 343 "/usr/include/elf.h" 3 4
    /* reserved 205-209 */
# 359 "/usr/include/elf.h" 3 4
    /* reserved 225-242 */







/* Old spellings/synonyms.  */



/* If it is necessary to assign new unofficial EM_* values, please
   pick large random numbers (0x8523, 0xa7f2, etc.) to minimize the
   chances of collision with official or non-GNU unofficial values.  */



/* Legal values for e_version (version).  */





/* Section header.  */

typedef struct
{
  Elf32_Word sh_name; /* Section name (string tbl index) */
  Elf32_Word sh_type; /* Section type */
  Elf32_Word sh_flags; /* Section flags */
  Elf32_Addr sh_addr; /* Section virtual addr at execution */
  Elf32_Off sh_offset; /* Section file offset */
  Elf32_Word sh_size; /* Section size in bytes */
  Elf32_Word sh_link; /* Link to another section */
  Elf32_Word sh_info; /* Additional section information */
  Elf32_Word sh_addralign; /* Section alignment */
  Elf32_Word sh_entsize; /* Entry size if section holds table */
} Elf32_Shdr;

typedef struct
{
  Elf64_Word sh_name; /* Section name (string tbl index) */
  Elf64_Word sh_type; /* Section type */
  Elf64_Xword sh_flags; /* Section flags */
  Elf64_Addr sh_addr; /* Section virtual addr at execution */
  Elf64_Off sh_offset; /* Section file offset */
  Elf64_Xword sh_size; /* Section size in bytes */
  Elf64_Word sh_link; /* Link to another section */
  Elf64_Word sh_info; /* Additional section information */
  Elf64_Xword sh_addralign; /* Section alignment */
  Elf64_Xword sh_entsize; /* Entry size if section holds table */
} Elf64_Shdr;

/* Special section indices.  */
# 430 "/usr/include/elf.h" 3 4
/* Legal values for sh_type (section type).  */
# 469 "/usr/include/elf.h" 3 4
/* Legal values for sh_flags (section flags).  */
# 490 "/usr/include/elf.h" 3 4
/* Section compression header.  Used when SHF_COMPRESSED is set.  */

typedef struct
{
  Elf32_Word ch_type; /* Compression format.  */
  Elf32_Word ch_size; /* Uncompressed data size.  */
  Elf32_Word ch_addralign; /* Uncompressed data alignment.  */
} Elf32_Chdr;

typedef struct
{
  Elf64_Word ch_type; /* Compression format.  */
  Elf64_Word ch_reserved;
  Elf64_Xword ch_size; /* Uncompressed data size.  */
  Elf64_Xword ch_addralign; /* Uncompressed data alignment.  */
} Elf64_Chdr;

/* Legal values for ch_type (compression algorithm).  */






/* Section group handling.  */


/* Symbol table entry.  */

typedef struct
{
  Elf32_Word st_name; /* Symbol name (string tbl index) */
  Elf32_Addr st_value; /* Symbol value */
  Elf32_Word st_size; /* Symbol size */
  unsigned char st_info; /* Symbol type and binding */
  unsigned char st_other; /* Symbol visibility */
  Elf32_Section st_shndx; /* Section index */
} Elf32_Sym;

typedef struct
{
  Elf64_Word st_name; /* Symbol name (string tbl index) */
  unsigned char st_info; /* Symbol type and binding */
  unsigned char st_other; /* Symbol visibility */
  Elf64_Section st_shndx; /* Section index */
  Elf64_Addr st_value; /* Symbol value */
  Elf64_Xword st_size; /* Symbol size */
} Elf64_Sym;

/* The syminfo section if available contains additional information about
   every dynamic symbol.  */

typedef struct
{
  Elf32_Half si_boundto; /* Direct bindings, symbol bound to */
  Elf32_Half si_flags; /* Per symbol flags */
} Elf32_Syminfo;

typedef struct
{
  Elf64_Half si_boundto; /* Direct bindings, symbol bound to */
  Elf64_Half si_flags; /* Per symbol flags */
} Elf64_Syminfo;

/* Possible values for si_boundto.  */




/* Possible bitmasks for si_flags.  */





/* Syminfo version values.  */





/* How to extract and insert information held in the st_info field.  */





/* Both Elf32_Sym and Elf64_Sym use the same one-byte st_info field.  */




/* Legal values for ST_BIND subfield of st_info (symbol binding).  */
# 594 "/usr/include/elf.h" 3 4
/* Legal values for ST_TYPE subfield of st_info (symbol type).  */
# 611 "/usr/include/elf.h" 3 4
/* Symbol table indices are found in the hash buckets and chain table
   of a symbol hash table section.  This special index value indicates
   the end of a chain, meaning no further symbols are found in that bucket.  */




/* How to extract and insert information held in the st_other field.  */



/* For ELF64 the definitions are the same.  */


/* Symbol visibility specification encoded in the st_other field.  */






/* Relocation table entry without addend (in section of type SHT_REL).  */

typedef struct
{
  Elf32_Addr r_offset; /* Address */
  Elf32_Word r_info; /* Relocation type and symbol index */
} Elf32_Rel;

/* I have seen two different definitions of the Elf64_Rel and
   Elf64_Rela structures, so we'll leave them out until Novell (or
   whoever) gets their act together.  */
/* The following, at least, is used on Sparc v9, MIPS, and Alpha.  */

typedef struct
{
  Elf64_Addr r_offset; /* Address */
  Elf64_Xword r_info; /* Relocation type and symbol index */
} Elf64_Rel;

/* Relocation table entry with addend (in section of type SHT_RELA).  */

typedef struct
{
  Elf32_Addr r_offset; /* Address */
  Elf32_Word r_info; /* Relocation type and symbol index */
  Elf32_Sword r_addend; /* Addend */
} Elf32_Rela;

typedef struct
{
  Elf64_Addr r_offset; /* Address */
  Elf64_Xword r_info; /* Relocation type and symbol index */
  Elf64_Sxword r_addend; /* Addend */
} Elf64_Rela;

/* How to extract and insert information held in the r_info field.  */
# 677 "/usr/include/elf.h" 3 4
/* Program segment header.  */

typedef struct
{
  Elf32_Word p_type; /* Segment type */
  Elf32_Off p_offset; /* Segment file offset */
  Elf32_Addr p_vaddr; /* Segment virtual address */
  Elf32_Addr p_paddr; /* Segment physical address */
  Elf32_Word p_filesz; /* Segment size in file */
  Elf32_Word p_memsz; /* Segment size in memory */
  Elf32_Word p_flags; /* Segment flags */
  Elf32_Word p_align; /* Segment alignment */
} Elf32_Phdr;

typedef struct
{
  Elf64_Word p_type; /* Segment type */
  Elf64_Word p_flags; /* Segment flags */
  Elf64_Off p_offset; /* Segment file offset */
  Elf64_Addr p_vaddr; /* Segment virtual address */
  Elf64_Addr p_paddr; /* Segment physical address */
  Elf64_Xword p_filesz; /* Segment size in file */
  Elf64_Xword p_memsz; /* Segment size in memory */
  Elf64_Xword p_align; /* Segment alignment */
} Elf64_Phdr;

/* Special value for e_phnum.  This indicates that the real number of
   program headers is too large to fit into e_phnum.  Instead the real
   value is in the field sh_info of section 0.  */



/* Legal values for p_type (segment type).  */
# 732 "/usr/include/elf.h" 3 4
/* Legal values for p_flags (segment flags).  */







/* Legal values for note segment descriptor types for core files. */
# 823 "/usr/include/elf.h" 3 4
/* Legal values for the note segment descriptor types for object files.  */




/* Dynamic section entry.  */

typedef struct
{
  Elf32_Sword d_tag; /* Dynamic entry type */
  union
    {
      Elf32_Word d_val; /* Integer value */
      Elf32_Addr d_ptr; /* Address value */
    } d_un;
} Elf32_Dyn;

typedef struct
{
  Elf64_Sxword d_tag; /* Dynamic entry type */
  union
    {
      Elf64_Xword d_val; /* Integer value */
      Elf64_Addr d_ptr; /* Address value */
    } d_un;
} Elf64_Dyn;

/* Legal values for d_tag (dynamic entry type).  */
# 894 "/usr/include/elf.h" 3 4
/* DT_* entries which fall between DT_VALRNGHI & DT_VALRNGLO use the
   Dyn.d_un.d_val field of the Elf*_Dyn structure.  This follows Sun's
   approach.  */
# 914 "/usr/include/elf.h" 3 4
/* DT_* entries which fall between DT_ADDRRNGHI & DT_ADDRRNGLO use the
   Dyn.d_un.d_ptr field of the Elf*_Dyn structure.

   If any adjustment is made to the ELF object after it has been
   built these entries will need to be adjusted.  */
# 935 "/usr/include/elf.h" 3 4
/* The versioning entry types.  The next are defined as part of the
   GNU extension.  */





/* These were chosen by Sun.  */
# 953 "/usr/include/elf.h" 3 4
/* Sun added these machine-independent extensions in the "processor-specific"
   range.  Be compatible.  */





/* Values of `d_un.d_val' in the DT_FLAGS entry.  */






/* State flags selectable in the `d_un.d_val' element of the DT_FLAGS_1
   entry in the dynamic section.  */
# 1001 "/usr/include/elf.h" 3 4
/* Flags for the feature selection in DT_FEATURE_1.  */



/* Flags in the DT_POSFLAG_1 entry effecting only the next DT_* entry.  */




/* Version definition sections.  */

typedef struct
{
  Elf32_Half vd_version; /* Version revision */
  Elf32_Half vd_flags; /* Version information */
  Elf32_Half vd_ndx; /* Version Index */
  Elf32_Half vd_cnt; /* Number of associated aux entries */
  Elf32_Word vd_hash; /* Version name hash value */
  Elf32_Word vd_aux; /* Offset in bytes to verdaux array */
  Elf32_Word vd_next; /* Offset in bytes to next verdef
					   entry */
} Elf32_Verdef;

typedef struct
{
  Elf64_Half vd_version; /* Version revision */
  Elf64_Half vd_flags; /* Version information */
  Elf64_Half vd_ndx; /* Version Index */
  Elf64_Half vd_cnt; /* Number of associated aux entries */
  Elf64_Word vd_hash; /* Version name hash value */
  Elf64_Word vd_aux; /* Offset in bytes to verdaux array */
  Elf64_Word vd_next; /* Offset in bytes to next verdef
					   entry */
} Elf64_Verdef;


/* Legal values for vd_version (version revision).  */




/* Legal values for vd_flags (version information flags).  */



/* Versym symbol index values.  */





/* Auxialiary version information.  */

typedef struct
{
  Elf32_Word vda_name; /* Version or dependency names */
  Elf32_Word vda_next; /* Offset in bytes to next verdaux
					   entry */
} Elf32_Verdaux;

typedef struct
{
  Elf64_Word vda_name; /* Version or dependency names */
  Elf64_Word vda_next; /* Offset in bytes to next verdaux
					   entry */
} Elf64_Verdaux;


/* Version dependency section.  */

typedef struct
{
  Elf32_Half vn_version; /* Version of structure */
  Elf32_Half vn_cnt; /* Number of associated aux entries */
  Elf32_Word vn_file; /* Offset of filename for this
					   dependency */
  Elf32_Word vn_aux; /* Offset in bytes to vernaux array */
  Elf32_Word vn_next; /* Offset in bytes to next verneed
					   entry */
} Elf32_Verneed;

typedef struct
{
  Elf64_Half vn_version; /* Version of structure */
  Elf64_Half vn_cnt; /* Number of associated aux entries */
  Elf64_Word vn_file; /* Offset of filename for this
					   dependency */
  Elf64_Word vn_aux; /* Offset in bytes to vernaux array */
  Elf64_Word vn_next; /* Offset in bytes to next verneed
					   entry */
} Elf64_Verneed;


/* Legal values for vn_version (version revision).  */




/* Auxiliary needed version information.  */

typedef struct
{
  Elf32_Word vna_hash; /* Hash value of dependency name */
  Elf32_Half vna_flags; /* Dependency specific information */
  Elf32_Half vna_other; /* Unused */
  Elf32_Word vna_name; /* Dependency name string offset */
  Elf32_Word vna_next; /* Offset in bytes to next vernaux
					   entry */
} Elf32_Vernaux;

typedef struct
{
  Elf64_Word vna_hash; /* Hash value of dependency name */
  Elf64_Half vna_flags; /* Dependency specific information */
  Elf64_Half vna_other; /* Unused */
  Elf64_Word vna_name; /* Dependency name string offset */
  Elf64_Word vna_next; /* Offset in bytes to next vernaux
					   entry */
} Elf64_Vernaux;


/* Legal values for vna_flags.  */



/* Auxiliary vector.  */

/* This vector is normally only used by the program interpreter.  The
   usual definition in an ABI supplement uses the name auxv_t.  The
   vector is not usually defined in a standard <elf.h> file, but it
   can't hurt.  We rename it to avoid conflicts.  The sizes of these
   types are an arrangement between the exec server and the program
   interpreter, so we don't fully specify them here.  */

typedef struct
{
  uint32_t a_type; /* Entry type */
  union
    {
      uint32_t a_val; /* Integer value */
      /* We use to have pointer elements added here.  We cannot do that,
	 though, since it does not work when using 32-bit definitions
	 on 64-bit platforms and vice versa.  */
    } a_un;
} Elf32_auxv_t;

typedef struct
{
  uint64_t a_type; /* Entry type */
  union
    {
      uint64_t a_val; /* Integer value */
      /* We use to have pointer elements added here.  We cannot do that,
	 though, since it does not work when using 32-bit definitions
	 on 64-bit platforms and vice versa.  */
    } a_un;
} Elf64_auxv_t;

# 1 "/usr/include/x86_64-linux-gnu/bits/auxv.h" 1 3 4
/* Copyright (C) 1995-2013 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

/* Legal values for a_type (entry type).  */
# 37 "/usr/include/x86_64-linux-gnu/bits/auxv.h" 3 4
/* Some more special a_type values describing the hardware.  */




/* This entry gives some information about the FPU initialization
   performed by the kernel.  */


/* Cache block sizes.  */




/* A special ignored value for PPC, used by the kernel to control the
   interpretation of the AUXV. Must be > 16.  */
# 66 "/usr/include/x86_64-linux-gnu/bits/auxv.h" 3 4
/* Pointer to the global system page used for system calls and other
   nice things.  */



/* Shapes of the caches.  Bits 0-3 contains associativity; bits 4-7 contains
   log2 of line size; mask those to get cache size.  */





/* Shapes of the caches, with more room to describe them.
   *GEOMETRY are comprised of cache line size in bytes in the bottom 16 bits
   and the cache associativity in the next 16 bits.  */
# 1160 "/usr/include/elf.h" 2 3 4
/* Note section contents.  Each entry in the note section begins with
   a header of a fixed form.  */

typedef struct
{
  Elf32_Word n_namesz; /* Length of the note's name.  */
  Elf32_Word n_descsz; /* Length of the note's descriptor.  */
  Elf32_Word n_type; /* Type of the note.  */
} Elf32_Nhdr;

typedef struct
{
  Elf64_Word n_namesz; /* Length of the note's name.  */
  Elf64_Word n_descsz; /* Length of the note's descriptor.  */
  Elf64_Word n_type; /* Type of the note.  */
} Elf64_Nhdr;

/* Known names of notes.  */

/* Solaris entries in the note section have this name.  */


/* Note entries for GNU systems have this name.  */



/* Defined types of notes for Solaris.  */

/* Value of descriptor (one word) is desired pagesize for the binary.  */



/* Defined note types for GNU systems.  */

/* ABI information.  The descriptor consists of words:
   word 0: OS descriptor
   word 1: major version of the ABI
   word 2: minor version of the ABI
   word 3: subminor version of the ABI
*/



/* Known OSes.  These values can appear in word 0 of an
   NT_GNU_ABI_TAG note section entry.  */





/* Synthetic hwcap information.  The descriptor begins with two words:
   word 0: number of entries
   word 1: bitmask of enabled entries
   Then follow variable-length entries, one byte followed by a
   '\0'-terminated hwcap name string.  The byte gives the bit
   number to test if enabled, (1U << bit) & bitmask.  */


/* Build ID bits as generated by ld --build-id.
   The descriptor consists of any nonzero number of bytes.  */


/* Version note generated by GNU gold containing a version string.  */


/* Program property.  */


/* Note section name of program property.   */


/* Values used in GNU .note.gnu.property notes (NT_GNU_PROPERTY_TYPE_0).  */

/* Stack size.  */

/* No copy relocation on protected data symbol.  */


/* Processor-specific semantics, lo */

/* Processor-specific semantics, hi */

/* Application-specific semantics, lo */

/* Application-specific semantics, hi */


/* The x86 instruction sets indicated by the corresponding bits are
   used in program.  Their support in the hardware is optional.  */

/* The x86 instruction sets indicated by the corresponding bits are
   used in program and they must be supported by the hardware.   */

/* X86 processor-specific features used in program.  */
# 1275 "/usr/include/elf.h" 3 4
/* This indicates that all executable sections are compatible with
   IBT.  */

/* This indicates that all executable sections are compatible with
   SHSTK.  */


/* Move records.  */
typedef struct
{
  Elf32_Xword m_value; /* Symbol value.  */
  Elf32_Word m_info; /* Size and index.  */
  Elf32_Word m_poffset; /* Symbol offset.  */
  Elf32_Half m_repeat; /* Repeat count.  */
  Elf32_Half m_stride; /* Stride info.  */
} Elf32_Move;

typedef struct
{
  Elf64_Xword m_value; /* Symbol value.  */
  Elf64_Xword m_info; /* Size and index.  */
  Elf64_Xword m_poffset; /* Symbol offset.  */
  Elf64_Half m_repeat; /* Repeat count.  */
  Elf64_Half m_stride; /* Stride info.  */
} Elf64_Move;

/* Macro to construct move records.  */
# 1311 "/usr/include/elf.h" 3 4
/* Motorola 68k specific definitions.  */

/* Values for Elf32_Ehdr.e_flags.  */


/* m68k relocs.  */
# 1362 "/usr/include/elf.h" 3 4
/* Keep this the last entry.  */


/* Intel 80386 specific definitions.  */

/* i386 relocs.  */
# 1429 "/usr/include/elf.h" 3 4
/* Keep this the last entry.  */


/* SUN SPARC specific definitions.  */

/* Legal values for ST_TYPE subfield of st_info (symbol type).  */



/* Values for Elf64_Ehdr.e_flags.  */
# 1451 "/usr/include/elf.h" 3 4
/* SPARC relocs.  */
# 1478 "/usr/include/elf.h" 3 4
/* Additional Sparc64 relocs.  */
# 1550 "/usr/include/elf.h" 3 4
/* Keep this the last entry.  */


/* For Sparc64, legal values for d_tag of Elf64_Dyn.  */




/* MIPS R3000 specific definitions.  */

/* Legal values for e_flags field of Elf32_Ehdr.  */
# 1573 "/usr/include/elf.h" 3 4
/* Legal values for MIPS architecture level.  */
# 1585 "/usr/include/elf.h" 3 4
/* The following are unofficial names and should not be used.  */
# 1595 "/usr/include/elf.h" 3 4
/* Special section indices.  */







/* Legal values for sh_type field of Elf32_Shdr.  */
# 1646 "/usr/include/elf.h" 3 4
/* Legal values for sh_flags field of Elf32_Shdr.  */
# 1658 "/usr/include/elf.h" 3 4
/* Symbol tables.  */

/* MIPS specific values for `st_other'.  */







/* MIPS specific values for `st_info'.  */


/* Entries found in sections of type SHT_MIPS_GPTAB.  */

typedef union
{
  struct
    {
      Elf32_Word gt_current_g_value; /* -G value used for compilation.  */
      Elf32_Word gt_unused; /* Not used.  */
    } gt_header; /* First entry in section.  */
  struct
    {
      Elf32_Word gt_g_value; /* If this value were used for -G.  */
      Elf32_Word gt_bytes; /* This many bytes would be used.  */
    } gt_entry; /* Subsequent entries in section.  */
} Elf32_gptab;

/* Entry found in sections of type SHT_MIPS_REGINFO.  */

typedef struct
{
  Elf32_Word ri_gprmask; /* General registers used.  */
  Elf32_Word ri_cprmask[4]; /* Coprocessor registers used.  */
  Elf32_Sword ri_gp_value; /* $gp register value.  */
} Elf32_RegInfo;

/* Entries found in sections of type SHT_MIPS_OPTIONS.  */

typedef struct
{
  unsigned char kind; /* Determines interpretation of the
				   variable part of descriptor.  */
  unsigned char size; /* Size of descriptor, including header.  */
  Elf32_Section section; /* Section header index of section affected,
				   0 for global options.  */
  Elf32_Word info; /* Kind-specific information.  */
} Elf_Options;

/* Values for `kind' field in Elf_Options.  */
# 1720 "/usr/include/elf.h" 3 4
/* Values for `info' in Elf_Options for ODK_EXCEPTIONS entries.  */
# 1736 "/usr/include/elf.h" 3 4
/* Masks for `info' in Elf_Options for an ODK_HWPATCH entry.  */
# 1747 "/usr/include/elf.h" 3 4
/* Entry found in `.options' section.  */

typedef struct
{
  Elf32_Word hwp_flags1; /* Extra flags.  */
  Elf32_Word hwp_flags2; /* Extra flags.  */
} Elf_Options_Hw;

/* Masks for `info' in ElfOptions for ODK_HWAND and ODK_HWOR entries.  */




/* MIPS relocs.  */
# 1814 "/usr/include/elf.h" 3 4
/* Keep this the last entry.  */


/* Legal values for p_type field of Elf32_Phdr.  */






/* Special program header types.  */



/* Legal values for d_tag field of Elf32_Dyn.  */
# 1882 "/usr/include/elf.h" 3 4
/* The address of .got.plt in an executable using the new non-PIC ABI.  */

/* The base of the PLT in an executable using the new non-PIC ABI if that
   PLT is writable.  For a non-writable PLT, this is omitted or has a zero
   value.  */

/* An alternative description of the classic MIPS RLD_MAP that is usable
   in a PIE as it stores a relative offset from the address of the tag
   rather than an absolute address.  */

/* GNU-style hash table with xlat.  */



/* Legal values for DT_MIPS_FLAGS Elf32_Dyn entry.  */
# 1915 "/usr/include/elf.h" 3 4
/* Entries found in sections of type SHT_MIPS_LIBLIST.  */

typedef struct
{
  Elf32_Word l_name; /* Name (string table index) */
  Elf32_Word l_time_stamp; /* Timestamp */
  Elf32_Word l_checksum; /* Checksum */
  Elf32_Word l_version; /* Interface version */
  Elf32_Word l_flags; /* Flags */
} Elf32_Lib;

typedef struct
{
  Elf64_Word l_name; /* Name (string table index) */
  Elf64_Word l_time_stamp; /* Timestamp */
  Elf64_Word l_checksum; /* Checksum */
  Elf64_Word l_version; /* Interface version */
  Elf64_Word l_flags; /* Flags */
} Elf64_Lib;


/* Legal values for l_flags.  */
# 1946 "/usr/include/elf.h" 3 4
/* Entries found in sections of type SHT_MIPS_CONFLICT.  */

typedef Elf32_Addr Elf32_Conflict;

typedef struct
{
  /* Version of flags structure.  */
  Elf32_Half version;
  /* The level of the ISA: 1-5, 32, 64.  */
  unsigned char isa_level;
  /* The revision of ISA: 0 for MIPS V and below, 1-n otherwise.  */
  unsigned char isa_rev;
  /* The size of general purpose registers.  */
  unsigned char gpr_size;
  /* The size of co-processor 1 registers.  */
  unsigned char cpr1_size;
  /* The size of co-processor 2 registers.  */
  unsigned char cpr2_size;
  /* The floating-point ABI.  */
  unsigned char fp_abi;
  /* Processor-specific extension.  */
  Elf32_Word isa_ext;
  /* Mask of ASEs used.  */
  Elf32_Word ases;
  /* Mask of general flags.  */
  Elf32_Word flags1;
  Elf32_Word flags2;
} Elf_MIPS_ABIFlags_v0;

/* Values for the register size bytes of an abi flags structure.  */






/* Masks for the ases word of an ABI flags structure.  */
# 1999 "/usr/include/elf.h" 3 4
/* Values for the isa_ext word of an ABI flags structure.  */
# 2020 "/usr/include/elf.h" 3 4
/* Masks for the flags1 word of an ABI flags structure.  */


/* Object attribute values.  */
enum
{
  /* Not tagged or not using any ABIs affected by the differences.  */
  Val_GNU_MIPS_ABI_FP_ANY = 0,
  /* Using hard-float -mdouble-float.  */
  Val_GNU_MIPS_ABI_FP_DOUBLE = 1,
  /* Using hard-float -msingle-float.  */
  Val_GNU_MIPS_ABI_FP_SINGLE = 2,
  /* Using soft-float.  */
  Val_GNU_MIPS_ABI_FP_SOFT = 3,
  /* Using -mips32r2 -mfp64.  */
  Val_GNU_MIPS_ABI_FP_OLD_64 = 4,
  /* Using -mfpxx.  */
  Val_GNU_MIPS_ABI_FP_XX = 5,
  /* Using -mips32r2 -mfp64.  */
  Val_GNU_MIPS_ABI_FP_64 = 6,
  /* Using -mips32r2 -mfp64 -mno-odd-spreg.  */
  Val_GNU_MIPS_ABI_FP_64A = 7,
  /* Maximum allocated FP ABI value.  */
  Val_GNU_MIPS_ABI_FP_MAX = 7
};

/* HPPA specific definitions.  */

/* Legal values for e_flags field of Elf32_Ehdr.  */
# 2059 "/usr/include/elf.h" 3 4
/* Defined values for `e_flags & EF_PARISC_ARCH' are:  */





/* Additional section indeces.  */





/* Legal values for sh_type field of Elf32_Shdr.  */





/* Legal values for sh_flags field of Elf32_Shdr.  */





/* Legal values for ST_TYPE subfield of st_info (symbol type).  */






/* HPPA relocs.  */
# 2203 "/usr/include/elf.h" 3 4
/* Legal values for p_type field of Elf32_Phdr/Elf64_Phdr.  */
# 2224 "/usr/include/elf.h" 3 4
/* Legal values for p_flags field of Elf32_Phdr/Elf64_Phdr.  */
# 2237 "/usr/include/elf.h" 3 4
/* Alpha specific definitions.  */

/* Legal values for e_flags field of Elf64_Ehdr.  */




/* Legal values for sh_type field of Elf64_Shdr.  */

/* These two are primerily concerned with ECOFF debugging info.  */



/* Legal values for sh_flags field of Elf64_Shdr.  */



/* Legal values for st_other field of Elf64_Sym.  */



/* Alpha relocs.  */
# 2293 "/usr/include/elf.h" 3 4
/* Keep this the last entry.  */


/* Magic values of the LITUSE relocation addend.  */







/* Legal values for d_tag of Elf64_Dyn.  */



/* PowerPC specific declarations */

/* Values for Elf32/64_Ehdr.e_flags.  */


/* Cygnus local bits below */




/* PowerPC relocations defined by the ABIs */
# 2357 "/usr/include/elf.h" 3 4
/* PowerPC relocations defined for the TLS access ABI.  */
# 2389 "/usr/include/elf.h" 3 4
/* The remaining relocs are from the Embedded ELF ABI, and are not
   in the SVR4 ELF ABI.  */
# 2408 "/usr/include/elf.h" 3 4
/* Diab tool relocations.  */







/* GNU extension to support local ifunc.  */


/* GNU relocs used in PIC code sequences.  */





/* This is a phony reloc to handle any old fashioned TOC16 references
   that may still be in object files.  */


/* PowerPC specific values for the Dyn d_tag field.  */




/* PowerPC specific values for the DT_PPC_OPT Dyn entry.  */


/* PowerPC64 relocations defined by the ABIs */
# 2507 "/usr/include/elf.h" 3 4
/* PowerPC64 relocations defined for the TLS access ABI.  */
# 2552 "/usr/include/elf.h" 3 4
/* Added when HA and HI relocs were changed to report overflows.  */







/* GNU extension to support local ifunc.  */







/* e_flags bits specifying ABI.
   1 for original function descriptor using ABI,
   2 for revised ABI without function descriptors,
   0 for unspecified or not using any features affected by the differences.  */


/* PowerPC64 specific values for the Dyn d_tag field.  */






/* PowerPC64 specific bits in the DT_PPC64_OPT Dyn entry.  */




/* PowerPC64 specific values for the Elf64_Sym st_other field.  */






/* ARM specific declarations */

/* Processor specific flags for the ELF header e_flags field.  */
# 2613 "/usr/include/elf.h" 3 4
/* Other constants defined in the ARM ELF spec. version B-01.  */
/* NB. These conflict with values defined above.  */





/* Constants defined in AAELF.  */
# 2632 "/usr/include/elf.h" 3 4
/* Additional symbol types for Thumb.  */



/* ARM-specific values for sh_flags */




/* ARM-specific program header flags */





/* Processor specific values for the Phdr p_type field.  */


/* Processor specific values for the Shdr sh_type field.  */





/* AArch64 relocs.  */



/* ILP32 AArch64 relocs.  */
# 2672 "/usr/include/elf.h" 3 4
/* LP64 AArch64 relocs.  */
# 2796 "/usr/include/elf.h" 3 4
/* AArch64 specific values for the Dyn d_tag field.  */



/* AArch64 specific values for the st_other field.  */


/* ARM relocs.  */
# 2968 "/usr/include/elf.h" 3 4
/* Keep this the last entry.  */


/* C-SKY */
# 2994 "/usr/include/elf.h" 3 4
                                        /* ((S + A) >> 16) & 0xffff */


                                        /* ((GOT + A - P) >> 16) & 0xffff */


                                        /* ((S + A - GOT) >> 16) & 0xffff */



                                        /* (G >> 16) & 0xffff */



                                        /* (G >> 16) & 0xffff */


                                        /* (GOT + G * 4) & 0xffff */


                                        /* ((GOT + G * 4) >> 16) & 0xFFFF */
# 3035 "/usr/include/elf.h" 3 4
/* C-SKY elf header definition.  */







/* C-SKY attributes section.  */


/* IA-64 specific declarations.  */

/* Processor specific flags for the Ehdr e_flags field.  */




/* Processor specific values for the Phdr p_type field.  */






/* Processor specific flags for the Phdr p_flags field.  */


/* Processor specific values for the Shdr sh_type field.  */



/* Processor specific flags for the Shdr sh_flags field.  */



/* Processor specific values for the Dyn d_tag field.  */



/* IA-64 relocations.  */
# 3158 "/usr/include/elf.h" 3 4
/* SH specific declarations */

/* Processor specific flags for the ELF header e_flags field.  */
# 3184 "/usr/include/elf.h" 3 4
/* SH relocs.  */
# 3222 "/usr/include/elf.h" 3 4
/* Keep this the last entry.  */


/* S/390 specific definitions.  */

/* Valid values for the e_flags field.  */



/* Additional s390 relocs */
# 3313 "/usr/include/elf.h" 3 4
/* Keep this the last entry.  */



/* CRIS relocations.  */
# 3342 "/usr/include/elf.h" 3 4
/* AMD x86-64 relocations.  */
# 3390 "/usr/include/elf.h" 3 4
     /* 39 Reserved was R_X86_64_PC32_BND */
     /* 40 Reserved was R_X86_64_PLT32_BND */
# 3400 "/usr/include/elf.h" 3 4
/* x86-64 sh_type values.  */



/* AM33 relocations.  */
# 3448 "/usr/include/elf.h" 3 4
/* M32R relocs.  */
# 3462 "/usr/include/elf.h" 3 4
/* M32R relocs use SHT_RELA.  */
# 3503 "/usr/include/elf.h" 3 4
/* MicroBlaze relocations */
# 3535 "/usr/include/elf.h" 3 4
/* Legal values for d_tag (dynamic entry type).  */


/* Nios II relocations.  */
# 3587 "/usr/include/elf.h" 3 4
/* TILEPro relocations.  */
# 3644 "/usr/include/elf.h" 3 4
/* Relocs 56-59 are currently not defined.  */
# 3685 "/usr/include/elf.h" 3 4
/* TILE-Gx relocations.  */
# 3776 "/usr/include/elf.h" 3 4
/* Relocs 90-91 are currently not defined.  */
# 3789 "/usr/include/elf.h" 3 4
/* Relocs 104-105 are currently not defined.  */
# 3812 "/usr/include/elf.h" 3 4
/* RISC-V ELF Flags */







/* RISC-V relocations.  */
# 3878 "/usr/include/elf.h" 3 4
/* BPF specific declarations.  */





/* Imagination Meta specific relocations. */
# 3893 "/usr/include/elf.h" 3 4
/* Backward compatability */
# 3908 "/usr/include/elf.h" 3 4
/* GNU */



/* PIC relocations */
# 3929 "/usr/include/elf.h" 3 4
/* TLS relocations */
# 3946 "/usr/include/elf.h" 3 4
/* NDS32 relocations.  */
# 3956 "/usr/include/elf.h" 3 4

# 3 "100-elf_header.c" 2


# 4 "100-elf_header.c"
void print_osabi_more(Elf64_Ehdr h);

/**
 * print_magic - print ELF magic bytes
 * @h: the ELF header struct
 */

void print_magic(Elf64_Ehdr h)
{
 int i;

 printf("  Magic:   ");
 for (i = 0; i < 
# 16 "100-elf_header.c" 3 4
                (16)
# 16 "100-elf_header.c"
                         ; i++)
  printf("%2.2x%s", h.e_ident[i], i == 
# 17 "100-elf_header.c" 3 4
                                      (16) 
# 17 "100-elf_header.c"
                                                - 1 ? "\n" : " ");
}

/**
 * print_class - prints ELF class
 * @h: the ELF header struct
 */

void print_class(Elf64_Ehdr h)
{
 printf(" Class:                         ");
 switch (h.e_ident[
# 28 "100-elf_header.c" 3 4
                  4
# 28 "100-elf_header.c"
                          ])
 {
  case 
# 30 "100-elf_header.c" 3 4
      2
# 30 "100-elf_header.c"
                :
   printf("ELF64");
   break;
  case 
# 33 "100-elf_header.c" 3 4
      1
# 33 "100-elf_header.c"
                :
   printf("ELF32");
   break;
  case 
# 36 "100-elf_header.c" 3 4
      0
# 36 "100-elf_header.c"
                  :
   printf("none");
   break;
 }
 printf("\n");
}

/**
 * print_data - prints ELF data
 * @h: the ELF header struct
 */

void print_data(Elf64_Ehdr h)
{
 printf("  Data:                      ");
 switch (h.e_ident[
# 51 "100-elf_header.c" 3 4
                  5
# 51 "100-elf_header.c"
                         ])
 {
  case 
# 53 "100-elf_header.c" 3 4
      2
# 53 "100-elf_header.c"
                 :
   printf("2's complement, little endian");
   break;
  case 
# 56 "100-elf_header.c" 3 4
      1
# 56 "100-elf_header.c"
                 :
   printf("2's complement, little endian");
   break;
  case 
# 59 "100-elf_header.c" 3 4
      0
# 59 "100-elf_header.c"
                 :
   printf("none");
   break;
 }
 printf("\n");
}

/**
 * print_version - prnts ELF data
 * @h: the ELF header struct
 */

void print_version(Elf64_Ehdr h)
{
 printf("  Version:                      %d", h.e_ident[
# 73 "100-elf_header.c" 3 4
                                                       6
# 73 "100-elf_header.c"
                                                                 ]);
 switch (h.e_ident[
# 74 "100-elf_header.c" 3 4
                  6
# 74 "100-elf_header.c"
                            ])
 {
  case 
# 76 "100-elf_header.c" 3 4
      1
# 76 "100-elf_header.c"
                :
   printf("  (current)");
   break;
  case 
# 79 "100-elf_header.c" 3 4
      0
# 79 "100-elf_header.c"
             :
   printf("%s", "");
   break;
   break;
 }
 printf("\n");
}

/**
 * print_osabi - prints ELF osabi
 * @h: the ELF header struct
 */

void print_osabi(Elf64_Ehdr h)
{
 printf("  OS/ABI:                      ");
 switch (h.e_ident[
# 95 "100-elf_header.c" 3 4
                  7
# 95 "100-elf_header.c"
                          ])
 {
  case 
# 97 "100-elf_header.c" 3 4
      0
# 97 "100-elf_header.c"
                   :
   printf("UNIX - System V");
   break;
  case 
# 100 "100-elf_header.c" 3 4
      1
# 100 "100-elf_header.c"
                   :
   printf("UNIX - HP-UX");
   break;
  case 
# 103 "100-elf_header.c" 3 4
      2
# 103 "100-elf_header.c"
                     :
   printf("UNIX - NetBSD");
   break;
  case 
# 106 "100-elf_header.c" 3 4
      3
# 106 "100-elf_header.c"
                    :
   printf("UNIX - Linux");
   break;
  case 
# 109 "100-elf_header.c" 3 4
      6
# 109 "100-elf_header.c"
                      :
   printf("UNIX - Solaris");
   break;
  case 
# 112 "100-elf_header.c" 3 4
      7
# 112 "100-elf_header.c"
                  :
   printf("UNIX - AIX");
   break;
  case 
# 115 "100-elf_header.c" 3 4
      8
# 115 "100-elf_header.c"
                   :
   printf("UNIX - IRIX");
   break;
  case 
# 118 "100-elf_header.c" 3 4
      9
# 118 "100-elf_header.c"
                      :
   printf("UNIX - FreeBSD");
   break;
  case 
# 121 "100-elf_header.c" 3 4
      10
# 121 "100-elf_header.c"
                    :
   printf("UNIX - TRU64");
   break;
  default:
   print_osabi_more(h);
   break;
 }
 printf("\n");
}

/**
 * print_osabi_more - prints ELF osabi more
 * @h: the ELF header struct
 */

void print_osabi_more(Elf64_Ehdr h)
{
 switch (h.e_ident[
# 138 "100-elf_header.c" 3 4
                  7
# 138 "100-elf_header.c"
                          ])
 {
  case 
# 140 "100-elf_header.c" 3 4
      11
# 140 "100-elf_header.c"
                      :
   printf("Novel11 - Modesto");
   break;
  case 
# 143 "100-elf_header.c" 3 4
      12
# 143 "100-elf_header.c"
                      :
   printf("UNIX - OpenBSD");
   break;
  case 
# 146 "100-elf_header.c" 3 4
      255
# 146 "100-elf_header.c"
                         :
   printf("Standalone App");
   break;
  case 
# 149 "100-elf_header.c" 3 4
      97
# 149 "100-elf_header.c"
                  :
   printf("ARM");
   break;
  default:
   printf("<unknown: %x>", h.e_ident[
# 153 "100-elf_header.c" 3 4
                                    7
# 153 "100-elf_header.c"
                                            ]);
   break;
 }
}

/**
 * print_abiversion - prints ELF ABI version
 * @h: the ELF header struct
 */

void print_abiversion(Elf64_Ehdr h)
{
 printf(" ABI Version:                          %d\n",
   h.e_ident[
# 166 "100-elf_header.c" 3 4
            8
# 166 "100-elf_header.c"
                         ]);
}

/**
 * print_type - prints the ELF type
 * @h: the ELF header struct
 */
void print_type(Elf64_Ehdr h)
{
 char *p = (char *)&h.e_type;
 int i = 0;

 printf("   Type:                            ");
 if (h.e_ident[
# 179 "100-elf_header.c" 3 4
              5
# 179 "100-elf_header.c"
                     ] == 
# 179 "100-elf_header.c" 3 4
                          2
# 179 "100-elf_header.c"
                                     )
  i = 1;
 switch (p[i])
 {
  case 
# 183 "100-elf_header.c" 3 4
      0
# 183 "100-elf_header.c"
             :
   printf("NONE (None)");
   break;
  case 
# 186 "100-elf_header.c" 3 4
      1
# 186 "100-elf_header.c"
            :
   printf("REL (Relocarable file)");
   break;
  case 
# 189 "100-elf_header.c" 3 4
      2
# 189 "100-elf_header.c"
             :
   printf("EXEC (Executable file)");
   break;
  case 
# 192 "100-elf_header.c" 3 4
      3
# 192 "100-elf_header.c"
            :
   printf("DYN (Shared object file");
   break;
  case 
# 195 "100-elf_header.c" 3 4
      4
# 195 "100-elf_header.c"
             :
   printf("CORE (Cors file");
   break;
  default:
   printf("<unknown>: %x", p[i]);
   break;
 }
 printf("\n");
}

/**
 * print_entry - prints the ELF entry point adrdess
 * @h: the ELF header struct
 */
void print_entry(Elf64_Ehdr h)
{
 int i = 0, len = 0;
 unsigned char *p = (unsigned char *)&h.e_entry;

 printf("  ENTRY point address:              x");
 if (h.e_ident[
# 215 "100-elf_header.c" 3 4
              5
# 215 "100-elf_header.c"
                     ] != 
# 215 "100-elf_header.c" 3 4
                          2
# 215 "100-elf_header.c"
                                     )
 {
  i = h.e_ident[
# 217 "100-elf_header.c" 3 4
               4
# 217 "100-elf_header.c"
                       ] == 
# 217 "100-elf_header.c" 3 4
                            2 
# 217 "100-elf_header.c"
                                       ? 7 : 3;
  while (!p[i])
   i--;
  printf("%x", p[i--]);
  for (; i >= 0; i--)
   printf("%02x", p[i]);
  printf("\n");
 }
 else
 {
  i = 0;
  len = h.e_ident[
# 228 "100-elf_header.c" 3 4
                 4
# 228 "100-elf_header.c"
                         ] == 
# 228 "100-elf_header.c" 3 4
                              2 
# 228 "100-elf_header.c"
                                         ? 7 : 3;
  while (!p[i])
   i++;
  printf("%x", p[i++]);
  for (; i <= len; i++)
   printf("%02x", p[i]);
  printf("\n");
 }
}
