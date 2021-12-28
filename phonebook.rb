#Empty hash to store names and numbers in.
$phonebook = {}

#view your contacts. Also used as a "main menu"
def view()
    puts $phonebook

    puts "What would you like to do? (add|delete|exit)"
    answer = gets.chomp.downcase
    if answer.include? 'add'
        add_user(user_name, user_number)
    elsif answer.include? 'delete'
        puts delete()
    elsif answer.include? 'exit'
        exit
    else
        view()
    end
end

# gets user name
def user_name()
    puts 'Please enter a name:'
    name = gets.chomp.capitalize
    return name
end

# gets user phone number
def user_number()
    puts "Please enter a phone number:"
    color = gets.chomp.capitalize
    return color
end

#takes users name and number and saves it to phonebook.
def add_user(name, number)
    $phonebook[name] = number

    puts "Would you like to add another person? (yes|no)" 
    answer = gets.chomp.downcase
    if answer.include? 'yes'
        add_user(user_name, user_number)
    else
        view()
    end
end

# This is to delete a user. Phonebook is updated globally.
def delete()
    puts "Please type in the name you would like to remove."
    name = gets.chomp.capitalize
    $phonebook.delete(name)
end

#first line of code that runs
add_user(user_name, user_number)

puts "What would you like to do? (add|delete|view|exit)"
answer = gets.chomp.downcase
if answer.include? 'add'
    add_user(user_name, user_number)
elsif answer.include? 'delete'
    delete()
elsif answer.include? 'view'
    view()
else
    exit
end


