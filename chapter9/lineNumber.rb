readFile = "manth.txt"
writeFile = "lineNum_manth.txt"
File.open(readFile,"r") do |r|
	File.open(writeFile,"w") do |w|
		i = 1
		while line = r.gets
			w.puts "#{i} #{line}"
			i += 1
		end
	end
end

