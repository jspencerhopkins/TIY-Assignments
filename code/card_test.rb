require 'minitest/autorun'
#require 'minitest/pride'
require './card'

class TestCard < MiniTest::Unit::TestCase

	def setup #this runs before each test
    @card = Card.new
  end

  # card has suit and value
  def test_card_exisits
  	assert Card.new
  end

end