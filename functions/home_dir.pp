function std::home_dir($user) >> String {
  generate('/usr/bin/getent', 'passwd',  $user).split(':')[5]
}
