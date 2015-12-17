class Person
	attr_reader :strength
	attr_reader :cleverness
	REVISE = {
		strength: 1.0,
		cleverness: 1.0
	}
	def initialize(st=10,cl=10)
		@strength = st
		@cleverness = cl
	end
	#$B%"%/%;%5%a%=%C%I$N%(%$%j%"%9$r:n$k(B
	alias base_strength strength
	alias base_cleverness cleverness

	#$B0z?t$K;XDj$5$l$?JQ?tL>$NJQ?t$NCMJV$9(B
	def getPalam(palamName_arg)
		#$B0z?t$K!w$,4^$^$l$F$$$h$&$H$$$^$$$H!"F1$8F0:n$r$9$k$h$&$K!w$r>C$9(B
		palamName = palamName_arg.to_s.delete("@")
		#$BJQ?t$NCM$rF@$k(B
		value = self.instance_variable_get("@" + palamName)
		#$BJd@5$9$k=E$_$rF@$k(B
		revise = self.class.const_get(:REVISE)[palamName.intern]
		#$BJd@5CM$7$?CM$rJV$9(B
		revise != nil ? value * revise : value
	end

	#$BA4$F$NJQ?t$H$=$NCM$r%O%C%7%e$GJV$9(B
	def getAllPalam
		self.instance_variables.inject({}) do |hash, name| 
			hash.merge(name => self.getPalam(name))
		end
	end

	#$BJd@5:Q$_%Q%i%a!<%?$rJV$9(B
	def strength
		getPalam(__method__)
	end
	def cleverness
		getPalam(__method__)
	end
	
	
	#$B$3$N%/%i%9$NDj?t$NCM0lMw$rI=<((B
	def nowConst_get
		self.class.constants.map do |name|
			"#{name} + #{self.class.const_get name}"
		end
	end
end
class Fighter < Person
	REVISE = {
		strength: 1.5,
		cleverness: 1.0
	}
end
class Wizard < Person
	REVISE = {
		strength: 0.5, 
		cleverness: 3.0
	}
end


person = Person.new
fighter = Fighter.new
wizard = Wizard.new
puts fighter.getAllPalam
puts wizard.getAllPalam
puts wizard.cleverness

#$B7Q>5Mm$_$N8!>ZMQ(B
#$B7k2L(B
#	self$B$O>o$K8=:_$N%$%s%9%?%s%9$r<($9(B
#	$B$D$^$j(Bself.class$B$,8F$S=P$5$l$?>l=j$,$?$H$(%9!<%Q%/%i%9$N%a%=%C%IFb$G$"$C$F$b(B
#	$B%l%7!<%P$,%5%V%/%i%9$N%$%s%9%?%s%9$G$"$l$P$=$N%5%V%/%i%9$r<($9(B
#puts Person.new.nowConst
#puts Fighter.new.nowConst
#puts Wizard.new.nowConst
#puts Person.new.nowClass
#puts Fighter.new.nowClass
#puts Wizard.new.nowClass
#puts Person.new.nowConst_get
#puts Fighter.new.nowConst_get
#puts Wizard.new.nowConst_get
