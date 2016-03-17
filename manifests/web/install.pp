class lamp::web::install (
  $packages = $lamp::packages
) inherits lamp {

package { $packages:
  ensure => 'present',
}

class { '::apache':
  mpm_module       => 'prefork',
  default_vhost    => false,
  server_signature => 'Off',
  server_tokens    => 'Prod',
}

}
