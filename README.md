Puppet pkgin Module
===================

This is a Puppet module to install and uninstall packages using [`pkgin`][0], a
binary package manager for `pkgsrc` as used by [Joyent SmartMachines][1] by
enabling a provider for the standard [`package` resource type][2].

Installation
------------

The latest stable release can be downloaded from the Puppet Module Forge: [mudge/pkgin][3]

Using the `puppet-module` gem, this is as simple as:

```console
$ cd /opt/local/etc/puppet/modules
# puppet-module install mudge/pkgin
Installed "mudge-pkgin-0.0.1" into directory: pkgin
```

(Assuming `/opt/local/etc/puppet/modules` is in your `modulepath`.)

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

If using the Service Management Facility (SMF) to run `puppet agent` (or `puppetd`),
ensure that the `pkgin` binary is in your `PATH` with something like the following:

```xml
<exec_method name='start' type='method'
    exec='/opt/local/bin/puppet agent --config %{config_file}' timeout_seconds='60'>
  <method_context>
    <method_environment>
      <envvar name='PATH' value='/opt/local/bin:/opt/local/sbin:/usr/bin:/usr/sbin'/>
    </method_environment>
  </method_context>
</exec_method>
<property_group name='application' type='application'>
  <propval name='config_file' type='astring' value='/opt/local/etc/puppet/puppet.conf'/>
</property_group>
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
