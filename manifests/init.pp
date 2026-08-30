class server_configuration {

  package { ['curl', 'wget']:
    ensure => installed,
  }

  file { '/etc/server-management-info':
    ensure  => file,
    content => "Managed configuration baseline provided by iServerSupport.\n",
    mode    => '0644',
  }
}
