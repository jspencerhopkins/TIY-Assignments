require 'minitest/autorun'
require './card'

# a card has a suit and a value
# (numbered cards are worth their number, face cards = 10, ace = 11)
class CardTest < MiniTest::Unit::TestCase

	def setup
		@card = Card.new(4, :diamonds)
	end

	def test_card_has_value
		assert_equal 4, @card.value
	end

	def test_card_has_suit
		assert_equal :diamonds, @card.suit
	end

	def test_face_card_valued_at_10
		face_card = Card.new(:king, :spades)
		assert_equal 10, face_card.value
	end

	def test_ace_valued_at_11
		ace = Card.new(:ace, :hearts)
		assert_equal 11, ace.value
	end


end