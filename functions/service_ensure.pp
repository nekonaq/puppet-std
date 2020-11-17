function std::service_ensure($ensure, $service_ensure) >> Any {
  $_service_ensure = $ensure ? {
    'absent'	=> 'stopped',
    false	=> 'stopped',
    default	=> $service_ensure,
    };

  $_service_enable = $ensure ? {
    'absent'	=> false,
    false	=> false,
    default	=> $_service_ensure ? {
      'running'	=> true,
      true	=> true,
      default	=> false,
    },
  };

  $service_enable =
  {
    'ensure'	=> $_service_ensure,
    'enable'	=> $_service_enable,
  }
}
