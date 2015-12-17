#!usr/bin/ruby
# coding: utf-8
def jugd a
    if a.integer?
    	puts "Integer"
    elsif a.infinite?
    	puts "Infinite"
    elsif a.nan?
    	puts "NaN"
    end
end

jugd 10
jugd 1/0
jugd -1/0
jugd 0/0
