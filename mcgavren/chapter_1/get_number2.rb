# frozen_string_literal: true

puts "Welcome to 'Get My Number!'"
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

puts "I've got a random number between 1 and 100."
puts 'Can you guess it?'
target = rand(1..100)

num_guesses = 0
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "You've got #{10 - num_guesses} guesses left."
  print 'Make a guess: '
  guess = gets.to_i

  num_guesses += 1

  if guess > target
    puts 'Oops. Your guess was HIGH.'
  elsif guess < target
    puts 'Oops. Your guess was LOW.'
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end
end

puts "Sorry. You didn't get my number. (It was #{target}.)" unless guessed_it
