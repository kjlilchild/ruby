class CreditCard
	@outstandingBalance
	@@creditLimit = 1000.00

	def initialize
		@outstandingBalance = 0
	end

	def bal
		return @outstandingBalance
	end

	def add(amt)
		@outstandingBalance += amt
		if @outstandingBalance > amt && @outstandingBalance < @@creditLimit
		end
		balance = @@creditLimit - @outstandingBalance
		balance.to_f
		puts "After your purchase of $#{amt}. Your Balance is: #{balance}"
	end
		
	

	def pay(amt)
		@outstandingBalance -= amt
		balance = @@creditLimit - @outstandingBalance
		puts "After your payment of $#{amt}. Your Balance is: #{balance}"
	end
end


myCard = CreditCard.new
myCard.add(700)
myCard.add(100)
myCard.pay(500)
myCard.pay(600)







