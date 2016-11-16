#make

####Table of Contents

1. [Overview](#overview)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Parameters](#parameters)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

##Overview

Installs the 'make' package.

##Usage

```puppet
  include ::make
```

To override the package name,

```puppet
  class { '::make':
    package_name => 'gmake',
  }
```

##Parameters

---
#### package_name (type: String)
Name of package for make.

- *Default*: 'make'

---
####package_ensure (type: String)
Value of `ensure` attribute for make package.

- *Default*: 'present'

##Limitations

Supports Puppet v3 and v4 against a matrix of Ruby versions documented
in .travis.yml on the following platforms.

* Debian 7
* EL 5
* EL 6
* EL 7
* SLES/SLED 10
* SLES/SLED 11
* SLES/SLED 12
* Ubuntu 12.04
* Ubuntu 14.04
* Ubuntu 16.04

##Development

To contribute, fork
[https://github.com/croddy/puppet-make.git](https://github.com/croddy/puppet-make.git),
make a branch for your changes, and file a pull request.

##Contributors

Thank you to all of our [https://github.com/croddy/puppet-make/graphs/contributors](contributors).
