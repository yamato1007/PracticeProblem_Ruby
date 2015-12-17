module Enumerable
	def myInject(init = 0)
		tmp = init
		self.each do |item|
			tmp = yield tmp, item
		end
		tmp
	end
end

puts [1,2,3,4,5,6,7,8,9].myInject([]){|sum,a| sum << a}
