number = (0..100)

for num in number
	if num % 3 == 0 && num % 5 == 0
		puts "BUZZFIZZ"
	elsif num % 3 == 0
		puts "BUZZ"
	elsif num % 5 == 0
		puts "FIZZ"
	else
		puts num
	end
end
		