USER_NAME       = Camille Moncelier
USER_MAIL       = moncelier@devlife.org
SMTP_USERNAME   = pixdamix@gmail.com
SMTP_SERVER     = smtp.gmail.com
SMTP_PORT       = 587
SMTP_ENCRYPTION = tls

ifneq "$(wildcard ../Makefile.local)" ""
include ../Makefile.local
endif

CONFIGS = \
					Xdefaults \
					dir_colors \
					tmux.conf \
					gdbinit \
					gitconfig \
					sqliterc

include ../Makefile.rules

gitconfig : gitconfig.local Makefile
	@echo "  [sed]   Generating local gitconfig"
	@sed \
	-e "s/SMTP_ENCRYPTION/$(SMTP_ENCRYPTION)/g" \
	-e "s/SMTP_USERNAME/$(SMTP_USERNAME)/g" \
	-e "s/SMTP_SERVER/$(SMTP_SERVER)/g" \
	-e "s/SMTP_PORT/$(SMTP_PORT)/g" \
	-e "s/USER_NAME/$(USER_NAME)/g" \
	-e "s/USER_MAIL/$(USER_MAIL)/g" \
	< gitconfig.local > gitconfig

