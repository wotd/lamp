class lamp::db::install (
  $root_password = $lamp::root_password
) inherits lamp {

  class { '::mysql::server':
    root_password    => "$root_password ",
    override_options => { 'mysqld' => { 'max_connections' => '1024' } }
  }
}
