function std::file_ensure($ensure) >> Any {
  $ensure ? {
    'absent' => 'absent',
    false => 'absent',
    default => 'file',
  }
}
