class lamp::db::install (
  $root_password = $lamp::root_password,
  $mysql_ensure  = $lamp::mysql_ensure
) inherits lamp {

  class { '::mysql::server':
    package_ensure        => "$mysql_ensure",
    root_password         => "$root_password ",
    override_options      => { 'mysqld' => { 'max_connections' => '1024' } }
  }
}
