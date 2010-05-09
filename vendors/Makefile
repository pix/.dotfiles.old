ifneq "$(wildcard ../Makefile.local)" ""
include ../Makefile.local
endif

CONFIGS = \
					sshuttle 


default : all

all : $(CONFIGS)

clean :
	rm *~ ftp-install-script || true


install-file-sshuttle:
	ln -sf $(CURDIR)/sshuttle/sshuttle ~/.bin/


install-file-% : %
	ln -sfT $(CURDIR)/$* $(HOME)/.$*

install: $(foreach f, $(CONFIGS), install-file-$(f) )

