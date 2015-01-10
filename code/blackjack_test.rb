require 'minitest/autorun'
#require 'minitest/pride'
require './blackjack'

class TestGame < MiniTest::Unit::TestCase

	def setup #this runs before each test
    @bjack = Game.new
    @deck = Deck.new
  end

	def test_game_exists
    assert @bjack
  end

  def test_game_deck_exists
  	assert @bjack.deck
  end


end