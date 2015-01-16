require './card'

class Deck

	def initialize
		@cards = []
			[:hearts, :diamonds, :clubs, :spades].each do |suit|
				[2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace].each do |value|
					@cards << Card.new(value, suit)
			end
		end
	end

	def size
		@cards.length
	end

end
