Install these dotfiles
======================

    $ git clone https://pix@github.com/pix/dotfiles.git
    $ make 
    $ make install


Information about dotfiles
--------------------------

- VIM:
  - [BufferList]      : mapped to C-v C-v like tmux window list shortcut (C-b C-b)
  - [TagList]         : Mapped to F3 for tag list and Alt-F3 to update tags
  - [Align]           : V to select lines :Align token
  - [Surround]        : ysiw) to surround using )
  - [nerdcommenter]   : Comment: ,cs - Toggle: ,c<space>
  - [detectindent]    : Indentation levels are autodetected
  - [yankring]        : :YRShow to show yank history
  - [syntastic]       : Automatic syntax checking

- tmux
  - Alt-F1 -> Alt-F12 : Selects corresponding windows
  - C-b C-b           : Shows window selection dialog

- git
  - git wtf               : Show  state of your repository
  - git rank-contributors : rank contributors by the total size of the diffs they're responsible for
  - git ls                : ls files according to .gitignore

[taglist]:       http://vim-taglist.sourceforge.net/manual.html
[bufferlist]:    http://www.vim.org/scripts/script.php?script_id=1325
[align]:         http://www.vim.org/scripts/script.php?script_id=294
[surround]:      http://github.com/tpope/vim-surround/blob/master/doc/surround.txt
[nerdcommenter]: http://www.vim.org/scripts/script.php?script_id=1218
[detectindent]:  http://www.vim.org/scripts/script.php?script_id=1171
[yankring]:      http://www.vim.org/scripts/script.php?script_id=1234
