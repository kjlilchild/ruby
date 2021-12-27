

def fizz_buzz(x)
	
	if x % 3 == 0 && x % 5 == 0
		puts "#{x} FIZZBUZZ"
	elsif x % 3 == 0
		puts "#{x} FIZZ"
	elsif x % 5 == 0
		puts "#{x} BUZZ"
	else
		puts "#{x} IS BORING"
	end
end



fizz_buzz()


