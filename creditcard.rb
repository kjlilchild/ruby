class CreditCard
	#Credit Limit and Balance for Card
	@outstandingBalance
	@@creditLimit = 1000.00

	def initialize
		@outstandingBalance = 0.00
	end

	def bal
		return @@creditLimit - @outstandingBalance
	end

	def add(amt)
		@outstandingBalance += amt
		puts @outstandingBalance
		
	end

		
		
	

	def pay(amt)
		@outstandingBalance -= amt
		puts @outstandingBalance
	end
end


myCard = CreditCard.new
myCard.add(1000)
myCard.pay(533)
puts myCard.bal










