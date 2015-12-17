def make_gen(a,b)
	ans = 0
	Proc.new do
		ans *= b
		ans += a if ans == 0
		ans
	end
end

gen1 = make_gen(1,2)

100.times do |i|
	print "#{i} + :"
	puts gen1.call
end

