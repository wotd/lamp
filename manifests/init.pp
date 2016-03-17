# == Class: lamp
#
# Full description of class lamp here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'lamp':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class lamp (
  $apache_ensure = $lamp::params::apache_ensure,
  $mysql_ensure  = $lamp::params::mysql_ensure,
  $root_password = $lamp::params::root_password,
  $port          = $lamp::params::port,
  $docroot       = $lamp::params::docroot,
  $docroot_owner = $lamp::params::docroot_owner,
  $docroot_group = $lamp::params::docroot_group,
  $ssl           = $lamp::params::ssl,
  $ssl_cert      = $lamp::params::ssl_cert,
  $ssl_key       = $lamp::params::ssl_key,
) inherits lamp::params {
  include lamp::db::install
  include lamp::web::install
  lamp::web::vhost { 'puppet_default':  }

}
