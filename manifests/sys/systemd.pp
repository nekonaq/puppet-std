class std::sys::systemd::reload {
  info('--')
  exec { 'systemd::reload':
    command => '/bin/systemctl daemon-reload 2>/dev/null',
    refreshonly => true,
  }
}
