function reloadmod(){
	if [ -z "$1" ] ; then 
		echo "You should specify a module"
		return
	fi
	
	sudo rmmod $1 2>/dev/null >/dev/null
	sudo modprobe $* 

}
