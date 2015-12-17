#!/usr/bin/ruby
(1..100).each do |i|
	if i % 3 == 0 && i % 5 != 0
		puts i
	end
end

