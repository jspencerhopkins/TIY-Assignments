require './card'

class Hand

	attr_accessor :cards

	def initialize(cards)
		@cards = cards
	end

	def high_card
		@cards.max_by{|card| card.value}
	end

	def has_pair?
		counts = {}

		@cards.each do |card|
			counts[card.value] = counts[card.value].to_i + 1
		end
		counts.any?{|value, number| number == 2 }
	end

end