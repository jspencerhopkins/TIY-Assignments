require 'minitest/autorun'
require './card'

class TestCard < MiniTest::Unit::TestCase

	def setup #this runs before each test
    @card = Card.new(4, :spades)
  end

  def test_card_exisits
  	assert @card
  end

  def test_card_has_suit
  	assert_equal :spades, @card.suit
  end


end