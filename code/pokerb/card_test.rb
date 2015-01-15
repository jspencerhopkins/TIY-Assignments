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

end