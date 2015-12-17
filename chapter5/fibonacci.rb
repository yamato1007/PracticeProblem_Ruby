progression = [1,1]
times = 10
times.times {progression << progression[-1] + progression[-2]}
puts progression
