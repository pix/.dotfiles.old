# Quick rename ###############################################################
#
name() {
	newname=$1
	vared -c -p 'rename to: ' newname
	command mv $1 $newname
}

