Puppet pkgin Module
===================

This is a Puppet module to install and uninstall packages using [`pkgin`][0], a
binary package manager for `pkgsrc` as used by [Joyent SmartMachines][1] by
enabling a provider for the standard [`package` resource type][2].

Usage
-----

```puppet
package { 'vim':
  ensure   => present,
  provider => pkgin,
}
```

Author
------

Paul Mucur (http://mudge.name)

  [0]: http://pkgin.net/
  [1]: http://www.joyent.com/products/smartmachines/
  [2]: http://docs.puppetlabs.com/references/stable/type.html#package
