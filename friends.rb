# This is a program that has a list of people and their phone numbers.

people = {
	
	"Alex" => 12505692277,
	"Brenda" => 12505638877,
	"David" => 125056932255,
	"Melanie" => 12505695435,
	"Donald" => 125056931825,
}

puts "Who's phone number would you like: Alex, Brenda, David, Melanie or Donald?"

#users input a name to find a phone number.
user_input = gets.chomp
user_input.downcase!

if user_input == 'alex'
	puts people['Alex']
elsif user_input == 'brenda'
	puts people['Brenda']
elsif user_input == 'david'
	puts people['David']
elsif user_input == 'melanie'
	puts people['Melanie']
elsif user_input == 'donald'
	puts people['Donald']
else
	puts "Not Recognized"
end

# This is to add a name and phone number to the People list.
print "Please add a name:"
user_name = gets.chomp
user_name.capitalize!
print "Please add their number:"
user_number = gets.chomp

# This adds the new person based on the input data from the user.
people[user_name] = user_number

puts people

# The user has a choice to "add" or "delete" based on these keywords only.
print "Would you like to add or delete a person?"

user_select = gets
user_select.downcase

if user_select.include? "add"
	print "Enter name"
	user_add = gets.chomp
	user_add.capitalize!
	print "Enter phone number"
	user_num_2 = gets.chomp
	people[user_add] = user_num_2
elsif user_select.include? "delete"
	print "Enter name"
	user_delete = gets.chomp
	user_delete.capitalize!
	people.delete(user_delete)
end

for person in people
	puts "My friend #{person[0]}'s phone number is #{person[1]}"
end
