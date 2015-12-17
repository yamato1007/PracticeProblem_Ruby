a = [1,10,12,3,8,90,34,82]
puts a.sort
puts a.sort{|a,b| b<=>a}
puts a.inject{|sum,num| sum + num}
puts a.inject{|sum,num| sum + num} / a.size
