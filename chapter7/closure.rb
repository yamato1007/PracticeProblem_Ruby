def method1(x)
	if block_given?
		yield x
	else
		x
	end
end

def method2(x,&block)
	if block
		block.call x
	else
		x
	end
end

puts method1(3){|x| x ** x}
puts method2(3){|x| x ** x}
