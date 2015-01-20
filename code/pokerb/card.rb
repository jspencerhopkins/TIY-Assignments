class Card

	attr_reader :suit

	def initialize(value, suit)
		@value = value
		@suit = suit
	end

	# NEED TO RE-DEFINE CARDS (2..14)

	def value
		if @value.is_a?(Fixnum)
			@value
		elsif @value == :ace
			14
		elsif @value == :king
			13
		elsif @value == :queen
			12
		else @value == :jack
			11
		end
	end
	
	def display
		"#{@value.to_s.capitalize} of #{suit.to_s.capitalize}"
	end	

end