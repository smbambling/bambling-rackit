# == Class rackit::install
#
# This class is meant to be called from rackit
# It sets variables according to platform
#
class rackit::install {

  # Include archive class to install required faraday gems
  include ::archive

  $install_source = $rackit::source_url
  $install_file = inline_template('<%=File.basename(URI::parse(@install_source).path)%>')

  file { $rackit::destination:
    ensure => directory,
    ensure  => directory,
    owner   => $rackit::rackit_user,
    group   => $rackit::rackit_group,
    mode    => '0755',
  } ->
  archive { "/tmp/${install_file}":
    source       => $rackit::source_url,
    extract      => true,
    extract_path => $rackit::destination,
    creates      => "${rackit::destination}/bin/rackit",
  }

}
