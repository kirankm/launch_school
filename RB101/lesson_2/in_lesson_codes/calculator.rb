=begin
  Ask the user for 2 numbers
  Ask the user for an operation to perform
  Perform the operation on the two numbers
  Output the result
=end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def is_valid_number(num)
  num.to_i().to_s() == num
end

prompt("Welcome to Calculator!")
number1 = 0
loop do
  prompt("What's the first number?")
  number1 = Kernel.gets().chomp()
  break if is_valid_number(number1)
  puts "Hmm that doesn't look like a valid number"
end

number2 = 0
loop do
  prompt("What's the second number?")
  number2 = Kernel.gets().chomp()
  break if is_valid_number(number2)
  puts "Hmm that doesn't look like a valid number"
end

prompt("What's the opeation to perform? 1) add 2)subtract 3)multiply 4 divide")
operator = Kernel.gets().chomp()

result = case operator 
          when "1"
            number1.to_i + number2.to_i
          when "2"
            number1.to_i - number2.to_i
          when "3"
            number1.to_i * number2.to_i
          when "4"
            number1.to_f/number2.to_i
end

prompt("The result is #{result}")