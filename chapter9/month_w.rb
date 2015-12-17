manth = %w(JAN FEB MAR APR MAY JUN JULY AUG SEPT OCT NOV DEC)
File.open("manth.txt","w") do |f|
	manth.each { |m| f.puts m }
end


