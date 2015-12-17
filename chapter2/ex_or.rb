#!/usr/bin/ruby

a,b = true,false
[false,true].each do |a|
	[false, true].each do |b|
	       	puts("#{a} #{b} : #{((a && !b) || (!a && b))}\n")
	end
end
