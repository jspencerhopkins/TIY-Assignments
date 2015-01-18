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

  def test_player_starts_with_3_cards_from_deck
  	assert_equal 3, @game.player.hand.size
  end

	def test_dealer_starts_with_3_cards_from_deck
  	assert_equal 3, @game.dealer.hand.size
  end  

end