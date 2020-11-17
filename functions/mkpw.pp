function std::mkpw($words = 4) >> Any {
  $modpath = get_module_path('std');
  generate("${modpath}/bin/mkpw", $words)
}

