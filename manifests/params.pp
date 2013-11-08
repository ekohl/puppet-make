class make::params{
  
  case $operatingsystem {
    'fedora', 'centos', 'redhat': {
       $make_package = 'make'
    }
    'ubuntu', 'debian': {
       $make_package = [ 'make' ]
    }
  }
}
