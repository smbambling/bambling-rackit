# == Class rackit::params
#
# This class is meant to be called from rackit
# It sets variables according to platform
#
class rackit::params {
  $version = '1.0.0'
  $source_url = "https://github.com/rackit-lang/rackit/releases/download/v${version}/precompiled.zip"
  $destination = '/opt/rackit'
}
