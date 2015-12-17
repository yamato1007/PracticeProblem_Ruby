#!/usr/bin/ruby
puts "puts"
for i in 1..100
	puts i
end
puts "each"
(1..100).each { |i| puts i}
puts "times"
100.times { |i| puts i + 1}
