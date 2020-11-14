# stack makefile
#
# options:
# output, install, test
output:
	@cd stack && cargo build
	@cd heap && cargo build

install:
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

test:
	@stack run tests/hello.st
	@stack run tests/random.st
	@stack run tests/colors.st
	@stack run tests/bintree.st
	@stack run tests/binary.st