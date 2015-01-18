require 'minitest/autorun'
require './poker'
require './player_test'
require './deck_test'
require './card_test'


class PokerTest < MiniTest::Unit::TestCase

	def setup
    @game = ThreeCardPoker.new
  end

  def test_game_has_a_player
  	assert @game.player
  end

  def test_game_has_a_dealer
  	assert @game.dealer
  end
end