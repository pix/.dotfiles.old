# Quick rename ###############################################################
#
sanitize-perms() {
  if [ $# -ne 0 ]; then
    sudo chmod -Rv a-rwX,u+rwX $*
    sudo chown -Rv ${USER}":users" $*
  else
    sudo chmod -Rv a-rwX,u+rwX ./
    sudo chown -Rv ${USER}":users" ./
  fi

}

