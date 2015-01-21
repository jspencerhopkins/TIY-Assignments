require 'minitest/autorun'
require './deck'


class DeckTest < MiniTest::Unit::TestCase

	def setup
		@deck = Deck.new
	end

	def test_deck_has_52_cards
		assert_equal 52, @deck.size
	end

	def test_deck_can_deal_and_cards_are_removed_from_deck
		cards = @deck.deal(3)
		assert_equal 49, @deck.size
	end

	#test shuffle

	#test if cards are in deck

	#

end

