# == Class rackit::params
#
# This class is meant to be called from rackit
# It sets variables according to platform
#
class rackit::params {
  $version = '1.0.0'
  $source_url = "https://github.com/rackit-lang/rackit/releases/download/v${version}/precompiled.zip"
  $destination = '/opt/rackit'
  $manage_user = true
  $rackit_user = 'rackit'
  $rackit_group = 'rackit'
  $rackit_uid = '5555'
  $rackit_gid = '5555'
  $rackit_user_comment = 'RackIT Data Center Inventory Management'
}
