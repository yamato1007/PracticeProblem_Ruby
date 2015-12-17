address = "mail@sample.jp.com"
add_split = address.split("@")
puts <<"EOS"
user section : #{add_split[0]}
host section : #{add_split[1]}
EOS

