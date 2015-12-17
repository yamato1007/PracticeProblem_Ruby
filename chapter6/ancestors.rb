class MySuperClass
end
class MyClass < MySuperClass
	include Comparable
end
puts MyClass.ancestors

