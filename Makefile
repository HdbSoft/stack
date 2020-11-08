# Starlang makefile
#
# options:
# install, test
output:
	@cd cli && cargo build

install:
	@mkdir $HOME/Starlang/
	@cp -R API/stdlib /usr/include
	@cp -R API/modules $HOME/Starlang
	@cp cli/target/starlang /bin && cp cli/target/starlang.pdb /bin

test:
	@starlang run tests/hello.st
	@starlang run tests/random.st
	@starlang run tests/colors.st
	@starlang run tests/bintree.st