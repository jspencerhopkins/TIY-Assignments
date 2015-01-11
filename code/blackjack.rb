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



test = Game.new

shuffled_deck = test.deck.shuffle

my_cards = []

2.times do
	my_cards << shuffled_deck.pop
end	
	

puts my_cards
