export HISTSIZE=100000
export HISTFILE=~/.zsh_history
export SAVEHIST=100000
setopt  \
	inc_append_history \
  hist_ignore_all_dups \
  hist_reduce_blanks \
  hist_verify \
  hist_expire_dups_first \
  hist_find_no_dups \
  extended_history \
  share_history
 
# why do I need this ?
fc -R

# wait 10 seconds before querying for a rm which contains a *
setopt rmstarwait
