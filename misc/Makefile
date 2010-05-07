USER_NAME = Camille Moncelier
USER_MAIL = moncelier@devlife.org

ifneq "$(wildcard ../Makefile.local)" ""
include ../Makefile.local
endif

CONFIGS = \
					Xdefaults \
					dir_colors \
					tmux.conf \
					gdbinit \
					gitconfig 


default : all

all : $(CONFIGS)

clean :
	rm *~ ftp-install-script || true

gitconfig : gitconfig.local
	sed -e "s/USER_NAME/$(USER_NAME)/g" \
			-e "s/USER_MAIL/$(USER_MAIL)/g" \
			< gitconfig.local > gitconfig

install-file-% : %
	ln -sfT $(CURDIR)/$* $(HOME)/.$*

install: $(foreach f, $(CONFIGS), install-file-$(f) )

