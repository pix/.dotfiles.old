#!/bin/sh
which vim >/dev/null 2>/dev/null
if [ $? -eq 0 ]; then 
  export EDITOR=vim
fi
