#ifndef STACK_CONSTS_H
#define STACK_CONSTS_H

#define __STACK_VER__ "0.1.0"

#define __PATH__ argv[0]
#define ARG1     argv[1]
#define ARG2     argv[2]
#define ARG3     argv[3]
#define ARG4     argv[4]
#define ARG5     argv[5]

#ifdef __clang__
 #define __compiler__ "clang"
#elif __GNUC__
 #define __compiler__ "gcc"
#elif _MSC_VER
 #define __compiler__ "MSCV"
#elif __BORLANDC__
 #define __compiler__ "borland"
#elif __MINGW32__
 #define __compiler__ "mingw32"
#else
 #define __compiler__ "unknown"
#endif

#if defined(_WIN32) || defined(WIN32) || defined(__MINGW32__) || defined(__BORLANDC__)
 #define __OS__ "WINDOWS"
#elif defined(linux) || defined(__CYGWIN__)
 #define __OS__ "LINUX"
#elif (defined(__APPLE__) || defined(__OSX__) || defined(__MACOS__)) && defined(__MACH__)
 #define __OS__ "MACOSX"
#else
 #define __OS__ "UNKNOWN"
#endif

#endif //stack consts.h