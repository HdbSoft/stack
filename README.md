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

<br>
<br>

I hope you liked Starlang, please give us a star ⭐
