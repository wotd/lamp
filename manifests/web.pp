class lamp::web {
  include lamp::web::install
  include lamp::web::config

  anchor { 'lamp::web::start': }
  anchor { 'lamp::web::end': }

  Anchor['lamp::web::start'] ->
  Class['lamp::web::install'] ->
  Class['lamp::web::config'] ->
  Anchor['lamp::web::end']

}
