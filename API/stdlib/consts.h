#ifndef STARLANG_CONSTS_H
#define STARLANG_CONSTS_H

#define STARLANG_VER "0.1.0"

#define __PATH__ argv[0]
#define ARG1     argv[1]
#define ARG2     argv[2]
#define ARG3     argv[3]
#define ARG4     argv[4]
#define ARG5     argv[5]

#if defined(_WIN32) || defined(WIN32) || defined(__MINGW32__) || defined(__BORLANDC__)
 #define __OS__ "WINDOWS"
#elif defined(linux) || defined(__CYGWIN__)
 #define __OS__ "LINUX"
#elif (defined(__APPLE__) || defined(__OSX__) || defined(__MACOS__)) && defined(__MACH__)
 #define __OS__ "MACOSX"
#else
 #define __OS__ "UNKNOWN"
#endif

#endif //Starlang consts.h