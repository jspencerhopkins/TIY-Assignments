class Card

	attr_accessor :suit

	def initialize(value, suit)
		@suit = suit
		@value = value
	end

	def value
		if @value.is_a?(Fixnum) && @value <= 10
			@value
		elsif @value == :ace
			11
		else
			10
		end
	end

	# def display
		

end
