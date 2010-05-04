oecommit() 
{ 
  svn commit . -m "[oe] [$(basename $PWD)] $*"
}
