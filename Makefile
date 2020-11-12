# stack makefile
#
# options:
# install, test
output:
	@cd cli && cargo build

install:
	@mkdir $HOME/stack/
	@cp -R API/stdlib /usr/include
	@cp -R API/modules $HOME/stack
	@cp cli/target/stack /bin && cp cli/target/stack.pdb /bin

test:
	@stack run tests/hello.st
	@stack run tests/random.st
	@stack run tests/colors.st
	@stack run tests/bintree.st