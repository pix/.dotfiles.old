ifneq "$(wildcard ../Makefile.local)" ""
include ../Makefile.local
endif

CONFIGS = \
					sshuttle 

include ../Makefile.rules

install-file-sshuttle:
	@echo "  [ln]    Installing sshuttle to ~/.bin/"
	@ln -sf $(CURDIR)/sshuttle/sshuttle ~/.bin/

