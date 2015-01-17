require 'minitest/autorun'
require './hand'
require './card'


class HandTest < MiniTest::Unit::TestCase

	def setup
		cards = [Card.new(4, :diamonds), Card.new(:jack, :hearts), Card.new(7, :diamonds)]
		@hand = Hand.new(cards)
	end		

	def test_hand_has_cards
		assert @hand.cards
	end

	def test_hand_can_have_unique_cards
		assert @hand.has_no_matching_cards?
	end

	def test_hand_has_high_card
		assert_equal 11, @hand.high_card.value
	end

	def test_hand_has_a_pair
		hand_with_pair = Hand.new([Card.new(10, :spades), Card.new(10, :diamonds), Card.new(5, :spades)])
		assert hand_with_pair.has_pair?
	end

	def test_hand_has_3_cards_of_the_same_suit
		hand_with_flush = Hand.new([Card.new(10, :spades), Card.new(9, :spades), Card.new(5, :spades)])
		assert hand_with_flush.has_flush?
	end

	def test_hand_has_3_consecutive_cards_of_mixed_suits
		hand_with_straight = Hand.new([Card.new(:jack, :diamonds), Card.new(:queen, :spades), Card.new(10, :hearts)])
		assert hand_with_straight.has_straight?
	end

	# def test_hand_has_three_of_a_kind
	# 	hand_with_three_of_a_kind = Hand.new([Card.new(:jack, :diamonds), Card.new(:queen, :spades), Card.new(10, :hearts)])
	# 	assert hand_with_three_of_a_kind.has_3_of_a_kind?
	# end

end