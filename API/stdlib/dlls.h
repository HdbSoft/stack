#ifndef STACK_DLLS_H
#define STACK_DLLS_H

#include <dlfcn.h>

#ifdef _WIN32
 #include <Windows.h>
 #define DLL_EXPORT \
    __declspec(dllexport)
#else
 #define DLL_EXPORT
#endif

lib using(String path) {
    return (lib)dlopen(path, RTLD_LAZY);
}

var access(lib dll, String val) {
    return (var)dlsym(dll, val);
}
//dll access functions

#endif //stack dlls.h