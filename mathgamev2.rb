# This is a method that lets a user choose a math game.

def startGame()
    system 'clear'
    puts "Welcome to the Math Flash Card Game. Please select one of the following (add|subtract|multiply|divide)"
    user_input = gets.chomp
    user_input.downcase!

    if user_input.include? 'add'
        addGame    
    elsif user_input.include? 'subtract'
        subtractGame
    elsif user_input.include?'multiply'
        multiplyGame
    elsif user_input.include?'divide'
        divisionGame
    else
        puts "#{user_input} is not a valid selection. Please choose one of the following (add|subtract|multiply|divide)."
        puts "Hit enter to play again"
        gets
        startGame
    end
end

#Method for addition game. Takes two random numbers and adds them. Asks for an answer.
def addGame()
    system 'clear'
    num1 = Random.rand(0..10)
    num2 = Random.rand(0..10)
    correct = num1 + num2
    puts "What is the answer to #{num1} + #{num2}?"
    user_add = gets.chomp.to_i
    if user_add == correct
        puts "Correct! The answer to #{num1} + #{num2} = #{correct}"
    else
        puts "Incorrect!"
    end

    #Asks user if they would like to play again.
puts"Would you like to play again? (yes|no|restart)"
continue = gets.chomp.downcase
if continue.include? 'yes'
    addGame
elsif continue.include? 'no'
    exit
elsif continue.include? 'restart'
    startGame
else
    exit
end
end

#Method for subtraction game. Takes two random numbers and subtracts them.
def subtractGame()
    system 'clear'
    num1 = Random.rand(0..10)
    num2 = Random.rand(0..10)
    correct = num1 - num2
    puts "What is the answer to #{num1} - #{num2}?"
    user_add = gets.chomp.to_i
    if user_add == correct
        puts "Correct! The answer to #{num1} - #{num2} = #{correct}"
    else
        puts "Incorrect!"
    end

    #Asks user if they would like to play again.
puts"Would you like to play again? (yes|no|restart)"
continue = gets.chomp.downcase
if continue.include? 'yes'
    subtractGame
elsif continue.include? 'no'
    exit
elsif continue.include? 'restart'
    startGame
else
    exit
end
end

#Method for multiplication game. Takes two random numbers and multiplies them.
def multiplyGame()
    system 'clear'
    num1 = Random.rand(0..10)
    num2 = Random.rand(0..10)
    correct = num1 * num2
    puts "What is the answer to #{num1} x #{num2}?"
    user_add = gets.chomp.to_i
    if user_add == correct
        puts "Correct! The answer to #{num1} x #{num2} = #{correct}"
    else
        puts "Incorrect!"
    end

    #Asks user if they would like to play again.
puts"Would you like to play again? (yes|no|restart)"
continue = gets.chomp.downcase
if continue.include? 'yes'
    multiplyGame
elsif continue.include? 'no'
    exit
elsif continue.include? 'restart'
    startGame
else
    exit
end
end

#Method for division game. Takes two random numbers and divides them. Asks for an answer.
def divisionGame()
    system 'clear'
    num1 = Random.rand(0..10)
    num2 = Random.rand(1..10)
    correct = num1 / num2
    puts "What is the answer to #{num1} / #{num2}?"
    user_add = gets.chomp.to_i
    if user_add == correct
        puts "Correct! The answer to #{num1} / #{num2} = #{correct}"
    else
        puts "Incorrect!"
    end

    #Asks user if they would like to play again.
puts"Would you like to play again? (yes|no|restart)"
continue = gets.chomp.downcase
if continue.include? 'yes'
    divisionGame
elsif continue.include? 'no'
    exit
elsif continue.include? 'restart'
    startGame
else
    exit
end
end

startGame()
