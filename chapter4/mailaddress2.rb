address = "mail@sample.jp.com"
userlength = /@/ =~ address
puts <<"EOS"
user length : #{userlength}
user section : #{$`}
host section : #{$'}
EOS

