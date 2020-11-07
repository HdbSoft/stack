#ifndef __DLL__
#define __DLL__

#include <dlfcn.h>

#ifdef _WIN32
 #define DLL_EXPORT __declspec(dllexport)
#else
 #define DLL_EXPORT
#endif

var IncludeDLL(String path) {
	return dlopen(path, RTLD_LAZY);
}

var GetDllValue(void* dllfile, String value) {
	return (var)dlsym(dllfile, value);
}

#endif //Starlang dll.st