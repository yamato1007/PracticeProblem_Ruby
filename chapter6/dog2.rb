class Dog
	attr_reader:kind
	attr_accessor:name
	def initialize (kind,name = "dog")
		@kind = kind
		@name = name
		@feeling = "sad"
	end
	def meal(str)
		@feeling = "good"
	end
	def feeling
		return_feel = @feeling
		@feeling = "sad"
		return_feel
	end

end

dog = Dog.new "pochi"
puts dog.name
dog.meal "dogfood"
puts dog.feeling
puts dog.feeling
