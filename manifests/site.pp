node default {
  file {'/root/README':
    ensure => file,
    content => 'This is an README',
    owner => root,
    }
  file {'/root/README':
    owner => root,
    }
}
