CONFIGS = \
					misc \
					zsh \
					bash \
					vim \
					bin \
					vendors


default : all

all : $(CONFIGS) git-setup

install-dir-bin : bin
	ln -sfT $(CURDIR)/bin $(HOME)/.bin

install-dir-% : %
	make -C $* install

git-setup:
	@echo '[git] submodule init'
	@git submodule init 
	@git submodule update

install: git-setup $(foreach f, $(CONFIGS), install-dir-$(f) )

