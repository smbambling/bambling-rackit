# Class: rackit
# ===========================
#
# Install and Configure RackIT Data Center Inventory Management
#
# Parameters
# ----------
#
# [*version*]
#   Version string used to find zip file from Github release
#
# [*source_url*]
#   The precompiled.zip source URL, defaults to Github
#
# [*destination*]
#    The destination to which the precomplied.zip
#    will be extracted
#
# Authors
# -------
#
# Steven Bambling <smbambling@gmail.com>
#
class rackit (
  $version             = $rackit::params::version,
  $source_url          = $rackit::params::source_url,
  $destination         = $rackit::params::destination,
  $manage_user         = $rackit::params::manage_user,
  $rackit_user         = $rackit::params::rackit_user,
  $rackit_group        = $rackit::params::rackit_group,
  $rackit_gid          = $rackit::params::rackit_gid,
  $rackit_uid          = $rackit::params::rackit_uid,
  $rackit_user_comment = $rackit::params::rackit_user_comment,
) inherits rackit::params {

  validate_string($version)

  include rackit::prepare
  include rackit::install
  include rackit::config

  Class['rackit::prepare'] ->
  Class['rackit::install'] ->
  Class['rackit::config']

}
