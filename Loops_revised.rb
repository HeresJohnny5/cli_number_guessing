puts "Let's play a game shall we? I'm going to choose a random number between 1 and 50.
It's your goal to guess that random number in 5 attempts or less. Don't worry I'll help you along the way."

random_number = Random.new.rand(50)

while user_attempt <= 5
	user_attempt = 1

	print "Guess number #{user_attempt} is? "
	user_answer = gets.chomp.to_i

	if user_answer == random_number
		puts "Awesome job! You guess the random number in #{user_attempt} attempts."
		break
	elsif
		user_answer < random_number
		puts "Sorry #{user_answer} is incorrect, try higher next time."
	elsif 
		user_answer > random_number
		puts "Sorry #{user_answer} is incorrect, try lower next time."
	end	

end