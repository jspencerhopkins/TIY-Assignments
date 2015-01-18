require './deck'
require './player'

class ThreeCardPoker

	attr_reader :player, :dealer, :deck

	def initialize
		@deck = Deck.new
		@player = Player.new(@deck.deal(3))
		@dealer = Player.new(@deck.deal(3))
		@player_hand = @player.display
	end

end