require 'minitest/autorun'
#require 'minitest/pride'
require './blackjack'

class TestGame < MiniTest::Unit::TestCase

	def setup #this runs before each test
    @blackjack = Blackjack.new
  end

	def test_game_exists
    assert @blackjack
  end


end