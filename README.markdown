Install these dotfiles
======================

    $ git clone https://pix@github.com/pix/dotfiles.git
    $ make 
    $ make install


Information about dotfiles
--------------------------

- VIM:
  - [BufferList]          : mapped to C-v C-v like tmux window list shortcut (C-b C-b)
  - [TagList]             : Mapped to F3 for tag list and Alt-F3 to update tags
  - [Align]               : V to select lines :Align token
  - [Surround]            : ysiw) to surround using )
  - [nerdcommenter]       : Comment: ,cs - Toggle: ,c<space>
  - [detectindent]        : Indentation levels are autodetected
  - [yankring]            : :YRShow to show yank history
  - [syntastic]           : Automatic syntax checking
  - [A]                   : :A to alternate files quickly (.c --> .h etc)
  - [Doxygentoolkit]      : :Dox to generate doxygen comments
  - [trailing-whitespace] : :FixWhitespace
  - [vis]                 : C-v to highlight a block, then :B s/^pattern/newtext/g to replace inside the block

- tmux
  - Alt-F1 -> Alt-F12 : Selects corresponding windows
  - C-b C-b           : Shows window selection dialog

- git
  - git wtf               : Show  state of your repository
  - git rank-contributors : rank contributors by the total size of the diffs they're responsible for
  - git ls                : ls files according to .gitignore

- zsh
  - <C-F> : Edit the current command line in vi
  - <C-J> : Push a command onto a stack


[taglist]:             http://vim-taglist.sourceforge.net/manual.html
[bufferlist]:          http://www.vim.org/scripts/script.php?script_id=1325
[align]:               http://www.vim.org/scripts/script.php?script_id=294
[surround]:            http://github.com/tpope/vim-surround/blob/master/doc/surround.txt
[nerdcommenter]:       http://www.vim.org/scripts/script.php?script_id=1218
[detectindent]:        http://www.vim.org/scripts/script.php?script_id=1171
[yankring]:            http://www.vim.org/scripts/script.php?script_id=1234
[a]:                   http://www.vim.org/scripts/script.php?script_id=31
[syntastic]:           http://www.vim.org/scripts/script.php?script_id=2736
[doxygentoolkit]:      http://www.vim.org/scripts/script.php?script_id=987
[trailing-whitespace]: http://www.vim.org/scripts/script.php?script_id=3201
[vis]:                 http://mysite.verizon.net/astronaut/vim/index.html#VIS
