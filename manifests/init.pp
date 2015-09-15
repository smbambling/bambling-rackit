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
  $version     = $rackit::params::version,
  $source_url  = $rackit::params::source_url,
  $destination = $rackit::params::destination,
) inherits rackit::params {

  validate_string($version)

  include rackit::install
  include rackit::config

  Class['rackit::install'] ->
  Class['rackit::config'}

}
