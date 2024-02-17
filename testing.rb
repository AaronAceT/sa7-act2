'''Problem 1'''
def tag(name, content)
    "<#{name}>#{content}</#{name}>"
  end
  
  puts tag :p, "This is a paragraph."
  puts tag :h1, "This is a header."
  
  '''Problem 2'''
  numbers = [1, 2, 3, 4, 5]
  numbers.each { |num| puts num * 2 }
  tripled_numbers = numbers.map { |num| num * 3 }
  puts tripled_numbers
  
  '''Problem 3'''
  def safe_divide(a, b)
    begin
      a / b
    rescue ZeroDivisionError
      puts "Error: Division by zero is not allowed."
    end
  end
  
  puts safe_divide(10, 2)
  puts safe_divide(5, 0)
  
  '''Problem 4'''
  begin
    content = File.read("input.txt")
    reversed_content = content.reverse
    File.open("output.txt", "w") { |file| file.write(reversed_content) }
  rescue Errno::ENOENT
    puts "Error: input.txt not found."
  end
  
  '''Problem 5'''
  class InvalidAgeError < StandardError; end
  
  def validate_age(age)
    if age < 0
      raise InvalidAgeError, "Age cannot be negative."
    else
      puts "Age is valid"
    end
  rescue InvalidAgeError => e
    puts e.message
  end
  
  validate_age(-5)
  validate_age(30)
  
 '''Problem 6'''
  student = { name: "Alice", age: 20, grade: "A" }
  student.each { |key, value| puts "#{key.capitalize}: #{value}" }
  
 '''Problem 7'''
  numbers = [1, 2, 3, 4, 5, 6]
  even_numbers = numbers.select { |num| num.even? }
  even_numbers.each { |num| puts num }
  
  '''Problem 8'''
  def warn_unless(condition, message)
    puts message unless condition
  end
  
  warn_unless(true, "This is a warning.")
  warn_unless(false, "This is a warning.")
  
  '''Problem 9'''
  $app_status = "OK"
  
  def check_status
    puts "Status: #{$app_status}"
  end
  
  check_status
  $app_status = "Error"
  check_status
  
 '''Problem 10'''
  5.times { puts "Ruby is fun!" }
  
  '''Problem 11'''
  (1..5).each { |num| puts num }
  
  '''Problem 12'''
  begin
    File.open("sample.txt") do |file|
      file.each_with_index do |line, index|
        puts "#{index + 1}: #{line.chomp}"
        break if index == 2
      end
    end
  rescue Errno::ENOENT
    puts "Error: sample.txt not found."
  end
  
'''Problem 13'''
  ARGV.each { |name| puts "Hello, #{name}!" }
  
 '''Problem 14'''
  words = ["Ruby", "is", "awesome"]
  word_lengths = words.map { |word| word.length }
  puts word_lengths
  
  '''Problem 15'''
  def divide_numbers(dividend, divisor)
    dividend / divisor
  rescue ZeroDivisionError
    puts "Cannot divide by zero!"
  end
  
  puts divide_numbers(10, 2)
  puts divide_numbers(10, 0)