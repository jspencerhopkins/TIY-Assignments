require 'minitest/autorun'
require './card'

class TestCard < MiniTest::Unit::TestCase

	def setup #this runs before each test
    @card = Card.new(4, :spades)
  end

  def test_card_exisits
  	assert @card
  end

  def test_card_has_suit_and_value
  	assert_equal :spades, @card.suit
  	assert_equal 4, @card.value
  end




end