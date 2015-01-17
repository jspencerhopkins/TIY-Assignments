require './card'
class Hand

	include Comparable

	attr_accessor :cards

	def initialize(cards)
		@cards = cards
	end

	def high_card
		@cards.max_by{|card| card.value}
	end

	def has_pair?
		all_card_values = @cards.collect{|card| card.value}
		all_card_values.uniq.length == 2		
	end

	def has_no_matching_cards?
		all_card_values = @cards.collect{|card| card.value}
		unique_values = all_card_values.uniq
		all_card_values.length == unique_values.length
	end

	def has_flush?
		all_card_suits = @cards.collect{|card| card.suit}
		all_card_suits.uniq.length == 1
	end

	def has_straight?
		all_card_values = @cards.collect{|card| card.value}
		sorted_values = all_card_values.sort
		sorted_values[2] - sorted_values[0] == 2
	end

	def has_3_of_a_kind?
		all_card_values = @cards.collect{|card| card.value}
		all_card_values.uniq.length == 1		
	end

	def has_straight_flush?
		self.has_flush? && self.has_straight?
	end

	def <=>(other_hand)
		hand_rank<=> other_hand.hand_rank
	end

	def hand_rank
		if has_straight_flush?
			1_000_000 * high_card.value
		else has_3_of_a_kind?
			100_000 * high_card.value
		end
	end	

end