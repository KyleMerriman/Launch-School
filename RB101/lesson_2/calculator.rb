def prompt(message)
	puts "=> #{message}"
end

def valid_number?(num)
	num.to_i != 0
end

def valid_operator?(operator)
	operator == "+" || 
	operator == "-" ||
	operator == "*" ||
	operator == "/"
end

first_number = ""
second_number = ""
operator = ""


prompt("Welcome to the Calculator, what's your name?")
name = ''
loop do
	name = gets.chomp
	if name.empty?
		prompt("Please enter a name.")
	else
		break
	end
end

prompt("Hi #{name}.")

loop do
	#ask the user for the numbers, and the operator
	loop do
		prompt("Please enter a number.")
		first_number = gets.chomp.to_i
		if valid_number?(first_number)
			break
		else
			prompt("That's not a valid number.")
		end
	end


	loop do
		prompt("Please enter the operation.")
		operator = gets.chomp
		if valid_operator?(operator)
			break
		else
			prompt("That's not a valid operator.")
		end
	end
	
	loop do
		prompt("Please enter the second number.")
		second_number = gets.chomp.to_i
		if valid_number?(second_number)
			break
		else
			prompt("That's not a valid number.")
		end
	end

	#calculate and output
	case operator
	when "+"
		result = first_number + second_number
		output = "Adding"
	when "-"
		result = first_number - second_number
		output = "Subtracting"
	when "/"
		result = first_number / second_number
		output = "Dividing"
	when "*"
		result = first_number * second_number
		output = "Multiplying"
	end

	prompt("#{output} numbers.")
	sleep 1
	prompt(result)

	prompt("Perform another calculation? (y/n)")
	answer = gets.chomp.downcase
	if answer == "n"
		break
	end

end