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
	#アクセサメソッドのエイリアスを作る
	alias base_strength strength
	alias base_cleverness cleverness

	#引数に指定された変数名の変数の値返す
	def getPalam(palamName_arg)
		#引数に＠が含まれていようといまいと、同じ動作をするように＠を消す
		palamName = palamName_arg.to_s.delete("@")
		#変数の値を得る
		value = self.instance_variable_get("@" + palamName)
		#補正する重みを得る
		revise = self.class.const_get(:REVISE)[palamName.intern]
		#補正値した値を返す
		revise != nil ? value * revise : value
	end

	#全ての変数とその値をハッシュで返す
	def getAllPalam
		self.instance_variables.inject({}) do |hash, name| 
			hash.merge(name => self.getPalam(name))
		end
	end

	#補正済みパラメータを返す
	def strength
		getPalam(__method__)
	end
	def cleverness
		getPalam(__method__)
	end
	
	
	#このクラスの定数の値一覧を表示
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

#継承絡みの検証用
#結果
#	selfは常に現在のインスタンスを示す
#	つまりself.classが呼び出された場所がたとえスーパクラスのメソッド内であっても
#	レシーバがサブクラスのインスタンスであればそのサブクラスを示す
#puts Person.new.nowConst
#puts Fighter.new.nowConst
#puts Wizard.new.nowConst
#puts Person.new.nowClass
#puts Fighter.new.nowClass
#puts Wizard.new.nowClass
#puts Person.new.nowConst_get
#puts Fighter.new.nowConst_get
#puts Wizard.new.nowConst_get
