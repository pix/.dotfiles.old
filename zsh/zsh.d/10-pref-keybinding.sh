# Key binding ################################################################
#
bindkey "^[[3~"   delete-char           # xterm
bindkey "^[[1~"   beginning-of-line     # Linux console
bindkey "^[OH"    beginning-of-line     # xterm
bindkey "^[[H"    beginning-of-line     # xterm
bindkey "^[[4~"   end-of-line           # Linux console
bindkey "^[OF"    end-of-line           # xterm
bindkey "^[[F"    end-of-line           # xterm
bindkey "\M\b"    backward-delete-word  # xterm
bindkey "^[[5D"   backward-word         # xterm
bindkey "^[[5C"   forward-word          # xterm
bindkey "ÿ"       backward-delete-word  # xterm (silly)
bindkey "^[[3;3~" delete-word           # xterm
bindkey "^[[1;5D" backward-word         # xterm XFree86 4.3
bindkey "^[[1;5C" forward-word          # xterm XFree86 4.3
bindkey "^[O5D"   backward-word         # screen
bindkey "^[O5C"   forward-word          # screen
bindkey "^[[7~"   beginning-of-line     # aterm
bindkey "^[[8~"   end-of-line           # aterm
bindkey "^[Od"    backward-word         # aterm
bindkey "^[Oc"    forward-word          # aterm
bindkey "^[^[[3~" delete-word           # aterm

#bindkey "^T" push-line
