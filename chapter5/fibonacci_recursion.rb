def fibonacci n
	if n>2 then fibonacci(n-1) + fibonacci(n-2)
	else 1
	end
end

30.times {|i| puts (fibonacci i)}
