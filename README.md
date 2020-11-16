# The stack programming language
Stack is a small, fast and lightweight programming language that allows the C/C++ control and the JAVA ergonomy. Stack compiles into C code, but this process is automatized by the stack compiler, wich outputs an executable file (*.exe*, *.app*, *.out*...).

### Getting stack
If you want to get the stack compiler and API, you have 2 options, get the binaries or an installer in the releases page or build it from the source code, but if you want to build it from the source code you need to have GCC, GNU Make and Rust (with cargo) installed.

#### Binary releases
In this step you have to between a *.zip* file, a script installer (*.sh*, *.bat*) or a *.exe* installer.

##### *.zip* file
First, go to the [releases page](https://github.com/HdbSoft/stack/releases) and go to the latest version release, then get the *.zip* file and uncompress it, place the compiler files in the **/bin** folder if you are on macOS or LINUX, or in **C:\WINDOWS** if you are on Windows. Then place the API files in the **$HOME/stack** folder and you will have done. Finally, run this command:
```bash
$ stack -h
```
and it should output some text.

##### Script installer
First, go to the [releases page](https://github.com/HdbSoft/stack/releases) and go to the latest version release, then get the *.sh* file if you are on UNIX or the *.bat* file if you are on Windows. Then run it by the following command:
###### Windows
```batch
C:\> .\stack.win.bat
: Normal instalation

C:\> .\stack.win.bat source
: From the source code instalation
```

###### UNIX
```bash
$ ./stack.unix.sh
# Normal instalation

$ ./stack.unix.sh source
# From the source code instalation
```

Finally run the following command:
```bash
stack -h
```

and it should output some text.

##### *.exe* installer
As in the previous steps, you have to go to the [releases page](https://github.com/HdbSoft/stack/releases) and then to the latest release, next you have to click on the *.exe* file and save it, after that you have to run it and it will be installed in your device.

***NOTE:*** The *.exe* file is only for Windows, not for macOS or Linux.

#### Building it from source
If you want to build stack from source, you have to get the first thing you need to do is to clone the source code:
```bash
$ git clone https://github.com/HdbSoft/stack.git stack
$ cd stack
```
and then use make to build and install it:
```bash
$ make install
```

### The stack API
The stack API contains some features which could be used in your program. Here you have the modules list:
- **bintree:** Binary trees library
- **binary:** Bits and bit vectors library
- **colors:** Console colors library
- **cli:** Build great CLIs with this library
- **embed:** Embedded programming library
- **keyboard:** Keyboard detection library
- **maths:** Maths constants and functions
- **rng:** Random number generation library

You can import them by using the `import` macro:
```c
import std
import bintree
import binary
import colors
import cli
import embed
import keyboard
import maths
import rng
```

### Examples
In this paragraph you can see some stack examples:

#### Hello, World!
```c
main does
	WriteStringln("Hello, World!");
	end;
fi
```

#### Random number generation
```c
import rng

main does
	int n = randnum();

	WriteIntln(n);
	end;
fi
```

#### Binary tree
```c
import bintree

main does
	node* root = new_node(1);

	root->left  = new_node(0);
	root->right = new_node(2);

	WriteIntln(root->data);
	WriteIntln(root->left->data);
	WriteIntln(root->right->data);

	end;
fi
```

#### Binary encoding
```c
import binary

main does
	bitvec b = encode(14);
	WriteBitVector(b);

	end;
fi
```

#### Console colors
```c
import colors

main does
	FORE_COLOR_GREEN;

	WriteStringln("Hello, World!");
	end;
fi
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

I hope you liked stack, please give us a star ⭐