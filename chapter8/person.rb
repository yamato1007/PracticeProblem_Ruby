class Person
	def initialize(a=10)
		self.age = a
	end
	def age
		@age
	end
	def age=(age)
		raise ArgumentError,"年齢が非整数 arg = #{age}" unless age.integer?
		raise ArgumentError,"年齢が負数 arg = #{age}" unless age >= 0
		@age = age
	end
end

p = Person.new
puts p.age
begin
	p = Person.new(-100) 
rescue
	puts "Worning: #$!"
else
	puts p.age
end
begin
	p = Person.new(23.1) 
rescue
	puts "Worning: #$!"
else
	puts p.age
end

