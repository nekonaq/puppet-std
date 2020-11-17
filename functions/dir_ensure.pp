function std::dir_ensure($ensure) >> Any {
  $ensure ? {
    'absent' => 'absent',
    false => 'absent',
    default => 'directory',
  }
}
