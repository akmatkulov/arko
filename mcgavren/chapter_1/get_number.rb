# frozen_string_literal: true

puts "Welcome to 'Get My Number!'"
print "What's your name? "
name = gets.chomp
puts "Welcome, #{name}!"

puts "I've got a random number between 1 and 100."
puts 'Can you guess it?'
target = rand(1..100)

num_guesses = 0
check = false

until num_guesses == 10 || check
  puts "You've got #{10 - num_guesses} guesses left."
  print 'Make a guess: '
  guess = gets.to_i
  num_guesses += 1
  puts 'Oops. Your guess was LOW.' if guess < target
  puts 'Oops. Your guess was HIGH.' if guess > target
  if guess == target
    puts "You win! #{target}"
    check = true
  end
end

puts "You loose sorry! #{target}" unless check
