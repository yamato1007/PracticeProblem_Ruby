class Dog
	def initialize (name = "dog")
		@name = name
	end
	def name
		@name
	end
	def name=(name)
		@name = name
	end
end

dog = Dog.new
puts dog.name
dog.name = "wanwan"
puts dog.name
