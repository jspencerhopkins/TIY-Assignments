require 'minitest/autorun'
#require 'minitest/pride'
require './blackjack'

class TestGame < MiniTest::Unit::TestCase

	def setup #this runs before each test
    @bjack = Game.new
  end

	def test_game_exists
    assert @bjack
  end

  def test_game_deck_exists
  	assert @bjack.deck
  end

  def test_game_deck_has_52_items
  	assert @bjack.deck.is_a? Array
  	assert_equal 52, @bjack.deck.length
  end
  
  def test_game_deck_sums_to_380
  	assert_equal 380, @bjack.deck.inject(:+)
  end

  def test_player_hand_exists
    assert @bjack.player_hand
  end

end