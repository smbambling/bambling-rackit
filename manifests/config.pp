# == Class rackit::config
#
# This class is meant to be called from rackit
# It sets variables according to platform
#
class rackit::config {
  
  $concat_target_rackit_conf = "${rackit::destination}/conf/rackit.conf"

  concat { $concat_target_rackit_conf:
    ensure => present,
    owner  => $rackit::rackit_user,
    group  => $rackit::rackit_group,
    mode   => '0755',
  }

  require ::file_header

  concat::fragment { 'puppet_header':
    target  => $concat_target_rackit_conf,
    content => template($::file_header::pound_header),
    order   => '00',
  }

  concat::fragment { 'rackit.conf_main':
    target  => $concat_target_rackit_conf,
    content => template('rackit/rackit.conf.erb'),
    order   => '01',
  }
}
