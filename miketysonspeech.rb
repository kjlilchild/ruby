puts "Please enter a statement in which to convert to Mike Tyson speech:"

user_input = gets.chomp.downcase

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
    puts user_input
end

