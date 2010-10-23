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
	@echo
	@echo "  [make]  Intalling user binaries"
	@echo "  [ln]    Linking $< to ~/.$<"
	@ln -sfT $(CURDIR)/bin $(HOME)/.bin

install-dir-% : %
	@echo
	@echo "  [make]  Entering $<"
	@make --no-print-directory -C $* install 

git-setup:
	@echo
	@echo "  [git]   Init vendors submodules"
	@sh -c "if git submodule 2>/dev/null >/dev/null; then git submodule init; git submodule update; else echo '  [git]   submodule unavailable, disabled some vendors'; fi"

$(HOME)/.history:
	@echo "  [make]  Creating ~/.history"
	@mkdir $(HOME)/.history 2>/dev/null

install: git-setup $(foreach f, $(CONFIGS), install-dir-$(f) ) $(HOME)/.history

