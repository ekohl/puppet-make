#make

####Table of Contents

1. [Overview](#overview)
2. [Usage - Configuration options and additional functionality](#usage)
3. [Limitations - OS compatibility, etc.](#limitations)
4. [Development - Guide for contributing to the module](#development)

##Overview

Installs the make package.

##Usage

```puppet
  include make
```

To override the package name,

```puppet
  class { 'make':
    package_name => 'gmake',
  }
```

##Limitations

Tested with Ubuntu and CentOS.

##Development

To contribute, fork https://github.com/cmroddy/puppet-make.git, make a branch for your changes, and file a pull request.
