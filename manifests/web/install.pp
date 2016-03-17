class lamp::web::install ($apache_ensure = $lamp::apache_ensure){
$packages = [
  "php5",
  "php5-cli",
  "php-pear",
  "php5-dev",
  "php5-gd",
  "php5-mcrypt",
  "php5-ldap",
  "php5-xmlrpc",
  "php5-imagick",
  "php5-mysql",
  "nfs-common",
  "rsync",
  "httpie"
]

package { $packages:
  ensure => "$apache_ensure",
}

class { '::apache':
  package_ensure   => "$apache_ensure",
  mpm_module       => 'prefork',
  default_vhost    => false,
  server_signature => 'Off',
  server_tokens    => 'Prod',
}

}
