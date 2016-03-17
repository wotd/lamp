class lamp::params {
  $apache_ensure = 'present'
  $mysql_ensure  = 'present'
  $root_password = 'strongpassword'
  $port          = '80'
  $docroot       = '/var/www/'
  $docroot_owner = 'www-data'
  $docroot_group = 'www-data'
  $ssl           = false
  $ssl_cert      = '/etc/ssl/apache.crt'
  $ssl_key       = '/etc/ssl/apache.key'
}
