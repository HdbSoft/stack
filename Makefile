# stack makefile
#
# options:
# output, build, locate, install, test
output:
	@cd stack && cargo build
	@cd heap && cargo build

build:
	@mkdir build
	@cp -R API/stdlib build/stdlib
	@cp -R API/modules build/modules
	@cp stack/target/stack build/ && cp stack/target/stack.pdb build/
	@cp heap/target/heap build/ && cp heap/target/heap.pdb build/

locate:
	@mkdir $HOME/stack/
	@mkdir $HOME/stack/api/
	@mkdir $HOME/stack/cmp/
	@mkdir $HOME/stack/heap/
	@cp -R API/stdlib /usr/include
	@cp -R API/modules $HOME/stack/api
	@cp stack/target/stack $HOME/stack/cmp/ && cp stack/target/stack.pdb $HOME/stack/cmp/
	@cp heap/target/heap $HOME/stack/heap/ && cp heap/target/heap.pdb $HOME/stack/heap/
	export PATH=$HOME/stack/cmp:$PATH
	export PATH=$HOME/stack/heap:$PATH

install:
	@make && make locate

test:
	@stack run tests/hello.st
	@stack run tests/random.st
	@stack run tests/colors.st
	@stack run tests/bintree.st
	@stack run tests/binary.st