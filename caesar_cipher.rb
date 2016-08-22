

#Caesar Cipher--asks for input

puts "Please enter a sentence:"

hi = gets.chomp

puts "Please enter a shift factor:"

shift = gets.chomp

a = hi.split(//)

alpha = ('a'..'z').to_a.concat(('A'..'Z').to_a)

puts ' '

#-------------------------------

a.map {

	|n| 

	if !alpha.include?(n)
		print n
	else
		x = alpha.index(n)
		y = x+shift.to_i
			if y >= 26 
				y = y-26
			end
		 

		 print alpha[y]
		 
	end

}






























