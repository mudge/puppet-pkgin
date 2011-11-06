Puppet pkgin Module
===================

This is a Puppet module to install and uninstall packages using [`pkgin`][0], a
binary package manager for `pkgsrc` as used by [Joyent SmartMachines][1] by
enabling a provider for the standard [`package` resource type][2].

Installation
------------

The latest stable release can be downloaded from the PuppetForge: [mudge/pkgin][3]

Once installed, simply ensure that the `pkgin` module is in your Puppet `modulepath`
then `pkgin` can be used as a package provider.

Usage
-----

```puppet
package { 'vim':
  ensure   => present,
  provider => pkgin,
}

package { 'emacs':
  ensure   => absent,
  provider => pkgin,
}
```

Features
--------

At the moment, this provider only has two of the standard Puppet package provider
features:

* *installable*: The provider can install packages.
* *uninstallable*: The provider can uninstall packages.

Author
------

Paul Mucur (http://mudge.name), 2011.

  [0]: http://pkgin.net/
  [1]: http://www.joyent.com/products/smartmachines/
  [2]: http://docs.puppetlabs.com/references/stable/type.html#package
  [3]: http://forge.puppetlabs.com/mudge/pkgin
