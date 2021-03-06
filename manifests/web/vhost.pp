define lamp::web::vhost (
  $vhost_ensure  = $lamp::vhost_ensure,
  $port          = $lamp::port,
  $docroot       = $lamp::docroot,
  $docroot_owner = $lamp::docroot_owner,
  $docroot_group = $lamp::docroot_group,
  $ssl           = $lamp::ssl,
  $ssl_cert      = $lamp::ssl_cert,
  $ssl_key       = $lamp::ssl_key,
  $vhost_name    = $name,
  $phpinfo       = $lamp::phpinfo
) {
  apache::vhost { "$vhost_name":
    ensure         => "$vhost_ensure",
    port           => "$port",
    docroot        => "$docroot/$vhost_name",
    docroot_owner  => "$docroot_owner",
    docroot_group  => "$docroot_group",
    ssl            => $ssl,
    ssl_cert       => "$ssl_cert",
    ssl_key        => "$ssl_cert",
    require        => Class['lamp::web::install'],
    options        => ['Includes', 'MultiViews', 'FollowSymLinks'],
  }

  file { "$docroot$vhost_name/phpinfo.php":
    ensure  => "$phpinfo",
    content => "$vhost_name \n <?php phpinfo(); ?>",
    owner   => "$docroot_owner",
    group   => "$docroot_group",
    mode    => '644',
  }

}
