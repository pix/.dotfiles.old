CONFIGS = \
					bashrc \
					bash.d


default : all

all : $(CONFIGS)

clean :
	rm *~ ftp-install-script || true

install-file-% : %
	ln -sfT $(CURDIR)/$* $(HOME)/.$*

install: $(foreach f, $(CONFIGS), install-file-$(f) )

