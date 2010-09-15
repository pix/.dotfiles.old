USER_NAME       = Camille Moncelier
USER_MAIL       = moncelier@devlife.org
SMTP_USERNAME   = pixdamix@gmail.com
SMTP_SERVER     = smtp.gmail.com
SMTP_PORT       = 587
SMTP_ENCRYPTION = tls
GITHUB_USER     = pix

ifneq "$(wildcard ../Makefile.local)" ""
include ../Makefile.local
endif

CONFIGS = \
					Xdefaults \
					dir_colors \
					tmux.conf \
					gdbinit \
					gitconfig \
					sqliterc \
					wgetrc \
					ackrc \
					ssh_config \
					ctags

include ../Makefile.rules

install-file-ssh_config:
	@echo -n "  [ln]    Linking ssh_config to ~/.ssh/config"
	@[ -h ~/.ssh/config -o ! -f ~/.ssh/config ] && ln -sfT $(CURDIR)/ssh_config $(HOME)/.ssh/config && echo || echo " : IGNORED"

gitconfig : gitconfig.in Makefile
	@echo "  [sed]   Generating local gitconfig"
	@sed \
	-e "s/SMTP_ENCRYPTION/$(SMTP_ENCRYPTION)/g" \
	-e "s/SMTP_USERNAME/$(SMTP_USERNAME)/g" \
	-e "s/SMTP_SERVER/$(SMTP_SERVER)/g" \
	-e "s/SMTP_PORT/$(SMTP_PORT)/g" \
	-e "s/USER_NAME/$(USER_NAME)/g" \
	-e "s/USER_MAIL/$(USER_MAIL)/g" \
	-e "s/GITHUB_USER/$(GITHUB_USER)/g" \
	< gitconfig.in > gitconfig

