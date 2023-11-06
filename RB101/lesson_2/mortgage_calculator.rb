def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

# Gets and validates user input
loan_amount = ''
loop do
  puts "What is the total loan amount in dollars?"
  loan_amount = gets.chomp
  if integer?(loan_amount)
    loan_amount = loan_amount.to_i
    break
  else
    puts "That's not a valid number, please try again."
  end
end

apr = ''
loop do
  puts "What is the Annual Percentage Rate (APR?)"
  apr = gets.chomp
  if float?(apr) || integer?(apr)
    apr = apr.to_f / 100
    break
  else
    puts "That's not a valid number, please try again."
  end
end

loan_duration_years = ''
loop do
  puts "What is the Loan Duration (in years)?"
  loan_duration_years = gets.chomp
  if integer?(loan_duration_years)
    loan_duration_years = loan_duration_years.to_i
    break
  else
    puts "That's not a valid number, please try again."
  end
end

# calculate monthly numbers
mpr = apr / 12
loan_duration_months = loan_duration_years * 12

# calculates monthly payments
monthly_payment = (loan_amount *
                  (mpr / ((1 - ((1 + mpr)**
                  (-loan_duration_months))))))

puts "calculating..."
sleep 1

puts "The monthly payment is $#{monthly_payment}."
