a = []
10.times { a<<rand(6)+1 }
sum = 0
a.length.times do |i|
	puts "a[#{i}] -> #{a[i]}"
	sum += a[i]
end
puts sum
