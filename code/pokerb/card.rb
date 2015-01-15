class Card

	attr_reader :suit

	def initialize(value, suit)
		@value = value
		@suit = suit
	end

	# NEED TO RE-DEFINE CARDS (2..14)

	# def value
	# 	if @value.is_a?(Fixnum)
	# 		@value
	# 	elsif @value == :ace
	# 		11
	# 	else
	# 		10
	# 	end
	# end
	
	def display
		"#{@value.to_s.capitalize} of #{suit.to_s.capitalize}"
	end	

end