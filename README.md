# Vagrant

This repository stores [Hawk](https://github.com/ClusterLabs/hawk) Packer definitions of various
distributions and products.


## openSUSE Tumbleweed

**Building**

```bash
packer build -parallel=false \
  -var iso_url=http://download.opensuse.org/tumbleweed/iso/openSUSE-Tumbleweed-NET-x86_64-Snapshot20160529-Media.iso \
  -var iso_checksum=324a29b9e1cb5fd3f3fb92a65681939fff66ec6cd735aeff555a2bd7d4d495f0 \
  definitions/tumbleweed-x86_64.json
```

**Downloads**

* Available at Atlas
  [x86_64](https://atlas.hashicorp.com/opensuse/boxes/openSUSE-Tumbleweed-x86_64)


## openSUSE Leap 42.3

**Building**

```bash
packer build -parallel=false definitions/42.3-x86_64.json
```

**Downloads**

* Available at Atlas
  [x86_64](https://atlas.hashicorp.com/opensuse/boxes/openSUSE-42.3-x86_64)


## openSUSE Leap 42.2

**Building**

```bash
packer build -parallel=false definitions/42.2-x86_64.json
```

**Downloads**

* Available at Atlas
  [x86_64](https://atlas.hashicorp.com/opensuse/boxes/openSUSE-42.2-x86_64)


## openSUSE Leap 42.1

**Building**

```bash
packer build -parallel=false definitions/42.1-x86_64.json
```

**Downloads**

* Virtualbox
  [x86_64](http://download.opensuse.org/vagrant/openSUSE-42.1-virtualbox-x86_64-1.0.1.box)
* Libvirt/KVM
  [x86_64](http://download.opensuse.org/vagrant/openSUSE-42.1-libvirt-x86_64-1.0.1.box)
* VMware
  [x86_64](http://download.opensuse.org/vagrant/openSUSE-42.1-vmware-x86_64-1.0.1.box)
* Also available at Atlas
  [x86_64](https://atlas.hashicorp.com/opensuse/boxes/openSUSE-42.1-x86_64)


## openSUSE openSUSE 13.2

**Building**

```bash
packer build -parallel=false definitions/13.2-x86_64.json
packer build -parallel=false definitions/13.2-i586.json
```

**Downloads**

* Virtualbox
  [x86_64](http://download.opensuse.org/vagrant/openSUSE-13.2-virtualbox-x86_64-1.0.1.box)
  [i586](http://download.opensuse.org/vagrant/openSUSE-13.2-virtualbox-i586-1.0.1.box)
* Libvirt/KVM
  [x86_64](http://download.opensuse.org/vagrant/openSUSE-13.2-libvirt-x86_64-1.0.1.box)
  [i586](http://download.opensuse.org/vagrant/openSUSE-13.2-libvirt-i586-1.0.1.box)
* VMware
  [x86_64](http://download.opensuse.org/vagrant/openSUSE-13.2-vmware-x86_64-1.0.1.box)
  [i586](http://download.opensuse.org/vagrant/openSUSE-13.2-vmware-i586-1.0.1.box)
* Also available at Atlas
  [x86_64](https://atlas.hashicorp.com/opensuse/boxes/openSUSE-13.2-x86_64)
  [i586](https://atlas.hashicorp.com/opensuse/boxes/openSUSE-13.2-i586)


## openSUSE openSUSE 13.1

**Building**

```bash
packer build -parallel=false definitions/13.1-x86_64.json
packer build -parallel=false definitions/13.1-i586.json
```

**Downloads**

* Virtualbox
  [x86_64](http://download.opensuse.org/vagrant/openSUSE-13.1-virtualbox-x86_64-1.0.1.box)
  [i586](http://download.opensuse.org/vagrant/openSUSE-13.1-virtualbox-i586-1.0.1.box)
* Libvirt/KVM
  [x86_64](http://download.opensuse.org/vagrant/openSUSE-13.1-libvirt-x86_64-1.0.1.box)
  [i586](http://download.opensuse.org/vagrant/openSUSE-13.1-libvirt-i586-1.0.1.box)
* VMware
  [x86_64](http://download.opensuse.org/vagrant/openSUSE-13.1-vmware-x86_64-1.0.1.box)
  [i586](http://download.opensuse.org/vagrant/openSUSE-13.1-vmware-i586-1.0.1.box)
* Also available at Atlas
  [x86_64](https://atlas.hashicorp.com/opensuse/boxes/openSUSE-13.1-x86_64)
  [i586](https://atlas.hashicorp.com/opensuse/boxes/openSUSE-13.1-i586)
  
  
  
 **TODO**
 * Fix: The 'environment' minion config option has been renamed to 'saltenv'. Using image-build as the 'saltenv' config value:    In saltenv 'image-build', looking at rel_path 'top.sls' to resolve 'salt://top.sls'
[DEBUG   ] In saltenv 'image-build', ** considering ** path '/var/cache/salt/minion/files/image-build/top.sls' to resolve 'salt://top.sls'
[DEBUG   ] compile template: /var/cache/salt/minion/files/image-build/top.sls
 * Install virt-what
 * Fix Insecure logging configuration detected! Sensitive data may be logged.                                                                                                               
