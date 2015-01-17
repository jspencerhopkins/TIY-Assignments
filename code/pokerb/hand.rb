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
		all_card_values = @cards.collect{|card| card.value}
		unique_values = all_card_values.uniq
		all_card_values.length - 1  == unique_values.length

		# counts = {}
		# @cards.each do |card|
		# 	counts[card.value] = counts[card.value].to_i + 1
		# end
		# counts.any?{|value, number| number == 2 }
	end

	def has_no_matching_cards?
		all_card_values = @cards.collect{|card| card.value}
		unique_values = all_card_values.uniq
		all_card_values.length == unique_values.length
	end

	def has_flush?
		counts = {}
		@cards.each do |card|
			counts[card.suit] = counts[card.suit].to_i + 1
		end
		counts.any?{|suit, number| number == 3 }
	end

	def has_straight?
		all_card_values = @cards.collect{|card| card.value}
		sorted_values = all_card_values.sort.reverse
		sorted_values[0] - sorted_values[2] == 2
	end

	def has_3_of_a_kind?

	end

end