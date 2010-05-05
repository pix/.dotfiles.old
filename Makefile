CONFIGS = \
					misc \
					zsh \
					vim \


default : all

all : $(CONFIGS)

install-dir-% : %
	make -C $* install

install: $(foreach f, $(CONFIGS), install-dir-$(f) )

