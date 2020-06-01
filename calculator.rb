### Main Objectives ###
# 1. User input first number
# 2. User input modifier (+ - / *)
# 3. User inputs last number
# 4. Display results
# 5. Error checking (proper input type for numbers and operators)
# 6. Build onto the results
# 7. Clear results

### Bonus Objectives ###
# 1. Order of operations
# 2. One user input i.e. (1 + 1) on same line
# 3. Calculator history
# 4. Calculator memory
# 5. Trig functions (Sin, Cos, etc)
# 6. Exit calculator w/ 'exit' command
  
def menu
  puts "\n"
  puts "-------------------------------"
  puts "Ready to crunch numbers!? (y/n)"
  input = gets.chomp.to_s
  if input == "y"
    first_num
  else
    puts "OK. Maybe another time..."
    exit
  end
end

def first_num
  puts "Enter first number:"
  input = gets.chomp
  check = Integer(input) rescue false
  if check
    @num1 = input.to_f
    operator
  else
    puts "That's not a number... Try again"
    first_num
  end
end

def operator
  puts "Choose an operator: Add [+], Subtract [-], Multipy [*], Divide [/]"
  input = gets.chomp.to_s
  case input
  when "+"
    add
  when "-"
    sub
  when "*"
    mult
  when "/"
    div
  else 
    puts "This calculator can't perform that operation :( ... Please try again"
    operator
  end
end

def second_num
  puts "Enter second number:"
  input = gets.chomp
  check = Integer(input) rescue false
  if check
    @num2 = input.to_f
  else
    puts "That's not a number... Try again"
    second_num
  end
end

def add
  second_num
  @answer = @num1 + @num2
  @operator = "+"
  result
  crunch_more
end

def sub
  second_num
  @answer = @num1 - @num2
  @operator = "-"
  result
  crunch_more
end

def mult
  second_num
  @answer = @num1 * @num2
  @operator = "*"
  result
  crunch_more
end

def div
  second_num
  @answer = @num1 / @num2
  @operator = "/"
  result
  crunch_more
end

def result
  puts "\n"
  puts "---------------------"
  puts "#{@num1} #{@operator} #{@num2}" 
  puts "Result =  #{@answer}"
  puts "---------------------"
  puts "\n"
end

def crunch_more
  puts "Want to keep crunching?? (y/n)"
  input = gets.chomp.to_s
  if input == "y"
    puts "\n"
    puts "Current display: #{@answer}"
    puts "\n"
    @num1 = @answer
    operator
  else
    puts "\n"
    puts "The calculator has been cleared. You can start fresh."
    puts "\n"
    @num1 = 0
    menu
  end
end

menu

