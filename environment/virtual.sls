## Similar to hosts file.  Defines configuration for variousl virtual machines.
## count: number of machines that should be deployed
## ram: amount of ram each instance should have
## cpu: number of CPU cores each instance should have
## os: OS that instance should be deployed on
## disk: root disk size
## networks: specify how you want your final, post-deployment network to be configured.
##   bridge: true if this host will be used as a hypervisor
##   vlan: true if you will be tagging on this host
##   interface entries: top level definition will be the name of the physical interface
##     network: the network to which it will bind (must match answers.sls)
##     primary: true if it will get DHCP, otherwise false
##     bridge: true if a bridged interface, otherwise false
##     vlan: vlanID if a vlan, otherwise false.

virtual:
  cache:
    count: 1
    ram: 8192000
    cpu: 2
    os: centos7
    disk: 512G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  cephmon:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: sfe
          primary: false
          bridge: false
          vlan: false
  mds:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: sfe
          primary: false
          bridge: false
          vlan: false
  haproxy:
    count: 1
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  antora:
    count: 1
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 16G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  mysql:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 128G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  rabbitmq:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  memcached:
    count: 3
    ram: 8192000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  keystone:
    count: 3
    ram: 8192000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  glance:
    count: 2
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 64G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: sfe
          primary: false
          bridge: false
          vlan: false
  nova:
    count: 2
    ram: 8192000
    cpu: 8
    os: centos7
    disk: 128G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  neutron:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  horizon:
    count: 2
    ram: 8192000
    cpu: 8
    os: centos7
    disk: 128G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  heat:
    count: 2
    ram: 8192000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  cinder:
    count: 3
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  volume:
    count: 3
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: sfe
          primary: false
          bridge: false
          vlan: false
  designate:
    count: 3
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  bind:
    count: 3
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  swift:
    count: 2
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 64G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: sfe
          primary: false
          bridge: false
          vlan: false
  zun:
    count: 2
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 64G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  placement:
    count: 2
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 64G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  graylog:
    count: 1
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 512G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  network:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: public
          primary: false
          bridge: false
          vlan: false
        ens5:
          network: private
          primary: false
          bridge: false
          vlan: false
  ovsdb:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  barbican:
    count: 2
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  magnum:
    count: 2
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  sahara:
    count: 2
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  manila:
    count: 3
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  share:
    count: 1
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: sfe
          primary: false
          bridge: false
          vlan: false
        ens5:
          network: public
          primary: false
          bridge: false
          vlan: false
  etcd:
    count: 3
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
