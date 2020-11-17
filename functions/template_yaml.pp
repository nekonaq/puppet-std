function std::template_yaml($hiera_key, $template, $context={}, $value_type=Hash, $indent=0) >> String {
  # notice(mns::pp({'hiera_key' => $hiera_key, 'template' => $template}))
  $cont0 = epp($template, $context)
  # notice(mns::pp({'hiera_key' => $hiera_key, 'template' => $template, 'epp_output' => $cont0}))
  $cont1 = parseyaml($cont0)
  # notice(mns::pp({'hiera_key' => $hiera_key, 'cont1' => $cont1}))
  $hiera_data = lookup($hiera_key, $value_type, 'deep', {})
  # notice(mns::pp({'hiera_key' => $hiera_key, 'template' => $template, 'lookup' => mns::pp($hiera_data)}))
  $cont = $cont1.deep_merge($hiera_data)
  # notice(mns::pp({'hiera_key' => $hiera_key, 'template' => $template, 'cont' => $cont}))
  # notice(mns::pp({'hiera_key' => $hiera_key, 'template' => $template}), to_yaml($cont))
  mns::to_yaml($cont, $indent)
}
