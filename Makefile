CONFIGS = \
					misc \
					zsh \
					bash \
					vim \
					bin


default : all

all : $(CONFIGS)

install-dir-bin : bin
	ln -sfT $(CURDIR)/bin $(HOME)/.bin

install-dir-% : %
	make -C $* install

install: $(foreach f, $(CONFIGS), install-dir-$(f) )

