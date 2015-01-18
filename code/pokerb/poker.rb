require './deck'
require './player'

class ThreeCardPoker

	attr_reader :player, :dealer, :deck, :player_hand

	def initialize
		@deck = Deck.new
		@player = Player.new(@deck.deal(3))
		@dealer = Player.new(@deck.deal(3))
	end

	def display_player_hand
		"Player #{@player.display}"
	end

	def display_dealer_hand
		"Dealer #{@dealer.display}"

end

# game = ThreeCardPoker.new

# puts game.display_player_hand