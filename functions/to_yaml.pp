function std::to_yaml($arg, $indent=0) >> String {
  $arg.to_yaml().split("\n")[1, -1].map |$el| { sprintf("\n%*s%s", $indent, '', $el)}.join('')
}
