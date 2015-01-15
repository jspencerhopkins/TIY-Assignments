class Card

	attr_reader :suit

	def initialize(value, suit)
		@value = value
		@suit = suit
	end

	def value
		if @value.is_a?(Fixnum)
			@value
		elsif @value == :ace
			11
		else
			10
		end
	end
			

end