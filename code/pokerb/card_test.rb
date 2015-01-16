require 'minitest/autorun'
require './card'

# a card has a suit and a value
# (numbered cards are worth their number - ace > king > queen, jack > 10
class CardTest < MiniTest::Unit::TestCase

	def setup
		@card = Card.new(4, :diamonds)
		@king_card = Card.new(:king, :spades)
	end

	def test_card_has_value
		assert_equal 4, @card.value
	end

	def test_card_has_suit
		assert_equal :diamonds, @card.suit
	end

	def test_king_is_greater_than_queen
		queen_card = Card.new(:queen, :hearts)
		assert @king_card.value > queen_card.value
	end

	# def test_ace_valued_at_11
	# 	ace = Card.new(:ace, :hearts)
	# 	assert_equal 11, ace.value
	# end

	def test_numbered_card_displays_its_suit_and_value
		assert_equal "4 of Diamonds", @card.display
	end

	def test_face_card_displays_its_suit_and_value
		assert_equal "King of Spades", @king_card.display
	end


end