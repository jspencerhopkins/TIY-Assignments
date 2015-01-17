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

	def test_hand_has_high_card
		assert_equal 11, @hand.high_card.value
	end

	def test_hand_has_a_pair
		hand_with_pair = Hand.new([Card.new(10, :spades), Card.new(10, :diamonds), Card.new(5, :spades)])

		assert hand_with_pair.has_pair?
	end

end