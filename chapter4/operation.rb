# coding:utf-8

dist = {
	plus: Proc.new{|a,b| a + b},
	sub: Proc.new{|a,b| a - b},
	mul: Proc.new{|a,b| a * b},
	div: Proc.new{|a,b| a / b}
}

a_str = ["1 plus 3","16 sub 32","16 mul 16","256 div 2"]
a_str.each do |str|
	print str + " : "
	element = str.split
	operation = dist[element[1].to_sym]
	a = element[0].to_i 
	b = element[2].to_i
	puts operation.call a, b
end

