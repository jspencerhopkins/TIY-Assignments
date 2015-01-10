require 'minitest/autorun'
#require 'minitest/pride'
require './blackjack'

class TestGame < MiniTest::Unit::TestCase

	def setup #this runs before each test
    @bjack = Blackjack.new
  end

	def test_game_exists
    assert @bjack
  end

  def test_game_desk_exists
  	assert @bjack.deck
  end


end