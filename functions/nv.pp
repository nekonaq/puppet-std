function std::nv($value, $cond, $defval = undef) >> Any {
  $value ? { $cond => $value, default => $defval }
}
# e.g. std::nv($settings['key'], Hash, {})
