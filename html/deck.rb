require './card'

class Deck

	def initialize
		@cards = []
			["H", "D", "C", "S"].each do |suit|
				[2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"].each do |value|
					@cards << Card.new(value, suit)
			end
		end
		shuffle
	end

	def shuffle
		@cards = @cards.shuffle!
	end

	def size
		@cards.length
	end

	def deal(n)
		@cards.shift(n)
	end

	# def initialize
	# 	@cards = []
	# 		[:hearts, :diamonds, :clubs, :spades].each do |suit|
	# 			[2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace].each do |value|
	# 				@cards << Card.new(value, suit)
	# 		end
	# 	end
	# 	shuffle
	# end


end
