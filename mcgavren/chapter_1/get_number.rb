# frozen_string_literal: true

puts "Welcome to 'Get My Number"
print "What's your name?: "
name = gets.chomp.capitalize
puts "Welcome #{name}!"

puts "I've got a random number between 1 and 100."
puts 'Can you guess it?'
target = rand(1..100)
guesses_count = 0
check = true
while guesses_count < 10 && check
  puts "You've got #{10 - guesses_count} guesses left."
  print 'Enter number: '
  guess = gets.to_i
  guesses_count += 1
  case target <=> guess
  when -1
    puts 'Oops. Your guess was HIGH'
  when 1
    puts 'Oops. Your guess was LOW'
  when 0
    puts "Good job, #{name}!"
    puts "You guessed my number in #{guesses_count} guesses!"
    check = false
  end
end

puts "Sorry. You didn't get my number. (It was #{target}.)" if check
