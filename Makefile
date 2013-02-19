CONFIGS_SUB = \
					misc \
					vim \
					shell.zsh \
					shell.bash \
					vendors

CONFIG_DIR = \
                    shell.d \
					bin


default : all

all : $(CONFIGS_SUB) git-setup

install-dir-% : %
	@echo "  [ln]    Linking $< to ~/.$<"
	@ln -sfT $(CURDIR)/$< $(HOME)/.$<

install-subdir-% : %
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

install: git-setup $(foreach f, $(CONFIG_DIR), install-dir-$(f) ) $(foreach f, $(CONFIGS_SUB), install-subdir-$(f) ) $(HOME)/.history

