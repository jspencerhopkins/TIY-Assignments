class Game

	attr_accessor :deck

	def initialize
		@deck = [	2, 2, 2, 2,
							3, 3, 3, 3,
							4, 4, 4, 4,
							5, 5, 5, 5, 
							6, 6, 6, 6, 
							7, 7, 7, 7, 
							8, 8, 8, 8, 
							9, 9, 9, 9, 
							10, 10, 10, 10, 
							10, 10, 10, 10, 
							10, 10, 10, 10, 
							10, 10, 10, 10,
							11, 11, 11, 11
						]
  end

	# need to setup dealer & player
	# shuffle cards
	# deal 2 cards to each player
  

end



new_game = Game.new

shuffled_deck = new_game.deck.shuffle

player_hand = []

2.times do
	player_hand << shuffled_deck.pop
end	

puts "The player's hand is #{player_hand[0]} and #{player_hand[1]}"


dealer_hand = []

2.times do
	dealer_hand << shuffled_deck.pop
end
	
puts "The dealers's hand is #{dealer_hand[0]} and #{dealer_hand[1]}"

puts shuffled_deck.inject(:+)



