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


end