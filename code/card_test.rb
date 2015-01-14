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

  def test_card_value_less_than_10
  	assert_equal 4, @card.value
  end 

  def test_card_face_card_value
  	face_card = Card.new(:king, :diamonds)
  	assert_equal 10, face_card.value
  end

  def test_ace_equals_eleven
  	ace_of_hearts = Card.new(:ace, :hearts)
  	assert_equal 11, ace_of_hearts.value
  end

  def test_display_of_cards_number
  	assert_equal "4 of Spades", @card.display
  end

  def test_display_of_cards_with_faces
  	queen_of_diamonds = Card.new(:queen, :diamonds)
  	assert_equal "Queen of Diamonds", queen_of_diamonds.display
  end

end