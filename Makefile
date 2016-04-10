
PREFIX:=../
DEST:=$(PREFIX)$(PROJECT)

# Expect to find rebar in the PATH. If you don't have rebar, you can get it
# from https://github.com/rebar/rebar .
REBAR=rebar

.PHONY: all doc test clean

all:
	@$(REBAR) get-deps compile

doc:
	@$(REBAR) get-deps compile doc

test:
	@$(REBAR) skip_deps=true eunit

clean:
	@$(REBAR) clean

libs:
	make -C c_src all

libs-clean:
	make -C c_src clean
