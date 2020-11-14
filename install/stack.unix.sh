stack_version="0.1.0"

stack_dir="stack-" + $stack_version

stack_release="https://github.com/HdbSoft/stack/releases/download/"
stack_release+=$stack_version + "/"

if [ $1 == "source" ]; then
	echo "Getting stack source..."
	curl https://github.com/HdbSoft/stack/archive/main.zip -o stack.zip
	unzip stack.zip
	# Get stack source code

	echo "Building & installing stack..."
	cd stack-main && make install
	# Building stack

	echo "Stack installed successfully!!"
else
	printf "Getting stack $stack_version..."
	stack_zip=$stack_release + "stack.zip"
	curl $stack_zip -o stack.zip
	unzip stack.zip
	# Get stack binaries

	echo "Installing stack"
	cd $stack_dir && make locate
	# Locating stack

	echo "Stack installed successfully!!"
fi