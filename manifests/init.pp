class make {
  include make::params

  package { $make::params::make_package:
    ensure => installed 
  }
}