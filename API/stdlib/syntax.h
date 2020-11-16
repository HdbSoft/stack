#ifndef STACK_SYNTAX_H
#define STACK_SYNTAX_H

#define does {
#define fi   }

#define end  return 0

#include <dlfcn.h>

#ifdef _WIN32
 #include <Windows.h>
 #define DLL_EXPORT \
    __declspec(dllexport)
#else
 #define DLL_EXPORT
#endif

lib link(String path) {
    return (lib)dlopen(path, RTLD_LAZY);
}

#endif //stack syntax.h