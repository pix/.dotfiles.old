# Goodbye more, lets play with most ##########################################
#
MOST=$(whence most)
if [ $? -eq 0 ] ; then
	alias more='most'
	alias less='most'
	export PAGER='most'
fi
