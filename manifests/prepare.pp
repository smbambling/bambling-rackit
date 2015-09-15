# == Class rackit::prepare
#
# This class is meant to be called from rackit
# It sets variables according to platform
#
class rackit::prepare {

  if $rackit::manage_user {
    group { $rackit::rackit_group:
      ensure => present,
      gid    => $rackit::rackit_gid,
    }

    user { $rackit::rackit_user:
      ensure  => present,
      uid     => $rackit::rackit_uid,
      gid     => $rackit::rackit_gid,
      groups  => $rackit::rackit_group,
      shell   => '/bin/bash',
      home    => $rackit::rackit_destination,
      comment => $rackit::rackit_user_comment,
      require => Group[$rackit::rackit_group],
    }
  }

} 
