class lamp::params {
  $vhost_ensure  = 'present'
  $root_password = 'strongpassword'
  $port          = '80'
  $docroot       = '/var/www/'
  $ssl           = false
  $ssl_cert      = '/etc/ssl/apache.crt'
  $ssl_key       = '/etc/ssl/apache.key'
  $phpinfo       = 'present'
  if $operatingsystem == 'Ubuntu' {
    $docroot_owner = 'www-data'
    $docroot_group = 'www-data'
    $packages      = [
                    "php5",
                    "tree",
                    "php5-cli",
                    "php-pear",
                    "php5-dev",
                    "php5-gd",
                    "php5-mcrypt",
                    "php5-ldap",
                    "php5-xmlrpc",
                    "php5-mysql",
                    "rsync",
                    "httpie"
                    ]
                  }
  if $operatingsystem == 'Centos' {
    $docroot_owner = 'apache'
    $docroot_group = 'apache'
    $packages      = [
                    "php",
                    "tree",
                    "php-cli",
                    "php-pear",
                    "php-gd",
                    "php-ldap",
                    "php-xmlrpc",
                    "php-mysql",
                    "rsync",
                    ]
  }
}
