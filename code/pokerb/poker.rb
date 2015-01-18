require './deck'
require './player'

class ThreeCardPoker

	attr_reader :player, :dealer, :deck, :player_hand

	def initialize
		@deck = Deck.new
		@player = Player.new(@deck.deal(3))
		@dealer = Player.new(@deck.deal(3))
		check_for_winner
	end

	def display_player_hand
		"Player #{@player.display}"
	end

	def display_dealer_hand
		"Dealer #{@dealer.display}"
	end

	def check_for_winner
		if player.hand_rank > dealer.hand_rank
			"Player wins!"
		elsif player.hand_rank < dealer.hand_rank
			"Dealer wins!"
		else
			"Game ends in tie"
		end
	end

end

game = ThreeCardPoker.new

puts game.display_player_hand
puts '.........'
puts game.display_dealer_hand
puts '.........'
puts game.check_for_winner

