@echo off

if "%1" == "source" (
	echo "Getting stack source..."
	curl https://github.com/HdbSoft/stack/archive/main.zip -o stack.zip
	tar xvf stack.zip
	: Get stack source code

	echo "Building & installing stack..."
	cd stack-main && make install
	: Building stack

	echo "Stack installed successfully!!"

) else (
	printf "Getting stack 0.1.0..."
	curl "https://github.com/HdbSoft/stack/releases/download/0.1.0/stack.zip" -o stack.zip
	tar xvf stack.zip
	: Get stack binaries

	echo "Installing stack"
	cd stack-0.1.0 && make locate
	: Locating stack

	echo "Stack installed successfully!!"
)