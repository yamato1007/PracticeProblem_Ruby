a = [1,2,3,4,5,6,7,8]
size = 3
b = []
(a.size - size + 1).times do |i|
	b << a[i,size]
end
puts b
