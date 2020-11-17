function std::pp($arg) >> String {
  inline_template("<%- require 'json' -%><%= JSON.pretty_generate(@arg) %>")
}
