# Number guessing function. User attempts to guess a number, which is at random between 1 and 5
def number_guessing_game()
	# user guess count keeping track of how many attempts the user took to get the correct answer
	user_guess = 0

	loop do
		# Random.new.rand(5) - Ruby code to randomly generate a number between 1 and 5 
		# Since the code is inside the loop it'll change each time through the loop
		random_number = Random.new.rand(5)
		print "Pick a number between 1 and 5 or choose 'a number greater than 5' to end the program. "
		answer = gets.chomp
		answer = answer.to_i
		
		if answer > 5
			puts "I'm sorry you didn't want to try, however for your sake the random number was #{random_number}"
			break
		elsif answer != random_number
			user_guess += 1
			puts "Sorry, your guess of #{answer} is incorrect. The random number this round was #{random_number}. You've now guessed #{user_guess} times."
			puts "Try again."
		elsif answer == random_number
			puts "That's correct, the random number was #{random_number}. It took you #{user_guess} times to guess correctly."
			break
		end
	end
end

number_guessing_game()