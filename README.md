# The Starlang programming language
Starlang is a small, fast and lightweight programming language that allows the C/C++ control and the JAVA ergonomy. Starlang conpiles into C code, but this process is automatized by the Starlang compiler, wich outputs an executable file (*.exe*, *.app*, *.out*...).

### Getting Starlang
If you want to get the Starlang compiler and API, you have 2 options, get the binaries in the releases page or build it from the source code, but in both cases you need to have the GCC compiler installed.

#### Binary releases
First, go to the [releases page](https://github.com/HdbSoft/Starlang/releases) and go to the latest version release, then get the *.zip* file and uncompress it, place the compiler files in the **/bin** folder if you are on macOS or LINUX, or in **C:\WINDOWS** if you are on Windows. Then place the API files in the **$HOME/Starlang** folder and you will have done. Finally, run this command:
```bash
$ starlang -h
```
and it should output some text.

#### Building it from source
If you want to build Starlang from source, you have to get the first thing you need to do is to clone the source code:
```bash
$ git clone https://github.com/HdbSoft/Starlang.git starlang
$ cd starlang
```
and then use make to build and install it:
```bash
$ make && make install
```

### The Starlang API
The Starlang API contains some features which could be used in your program. Here you have the modules list:
- **stdlib.sth:** I/O and other functions
- **bintree.sth:** Binary trees library
- **colors.sth:** Console colors library
- **dll.sth:** Dll management library
- **embedded.sth:** Embedded programming library
- **keyboard.sth:** Keyboard detection library
- **maths.sth:** Maths constants and functions
- **rng.sth:** Random number generation library

You can import them by using the `@import` macro:
```c
@import stdlib.sth
@import bintree.sth
@import colors.sth
@import dll.sth
@import embedded.sth
@import keyboard.sth
@import maths.sth
@import rng.sth
```

### Examples
In this paragraph you can see some Starlang examples:

#### Hello, World!
```c
@import stdlib.sth

main {
	WriteStringln("Hello, World!");
	out 0;
}
```

#### Random number generation
```c
@import stdlib.sth
@import rng.st

main {
	int n = randnum();

	WriteIntln(n);
	out 0;
}
```

#### Binary tree
```c
@import stdlib.sth
@import bintree.st

main {
	node* root = new_node(1);

	root->left  = new_node(0);
	root->right = new_node(2);

	WriteIntln(root->data);
	WriteIntln(root->left->data);
	WriteIntln(root->right->data);

	out 0;
}
```

#### Console colors
```c
@import stdlib.sth
@import colors.st

main {
	FORE_COLOR_GREEN;

	WriteStringln("Hello, World!");
	out 0;
}
```

### Contributing
If you want to contribute, you need to fork this repository, and then commit on it:
```bash
$ git commit -m "Commit message"
```
then push your changes to your fork:
```bash
$ git push origin main
```
and finally make a pull request.

### [License](LICENSE.md)
MIT License

Copyright (c) 2020 HdbSoft

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

<br>
<br>

I hope you liked Starlang, please give us a star ⭐
