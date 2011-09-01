
PREFIX:=../
DEST:=$(PREFIX)$(PROJECT)

REBAR=./rebar

GIT_USER=$(shell git config --global user.name)
GIT_EMAIL=$(shell git config --global user.email)

all:
	@$(REBAR) get-deps compile

edoc:
	@$(REBAR) doc

test:
	@rm -rf .eunit
	@mkdir -p .eunit
	@$(REBAR) skip_deps=true eunit

clean:
	@$(REBAR) clean

build_plt:
	@$(REBAR) build_plt

dialyzer:
	@$(REBAR) analyze

app:
	@$(REBAR) create template=mochiwebapp dest=$(DEST) appid=$(PROJECT)

package:
	@$(REBAR) create template=mochiwebpackage dest=$(DEST) appid=$(PROJECT) author="${GIT_USER} <${GIT_EMAIL}>"