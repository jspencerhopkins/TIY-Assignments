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

  def test_game_deck_is_an_array
  	assert@bjack.deck.is_a? Array
  end

end