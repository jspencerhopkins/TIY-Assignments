require 'minitest/autorun'
require './player'
require './card'


class PlayerTest < MiniTest::Unit::TestCase

	def setup
		cards = [Card.new(4, :diamonds), Card.new(:jack, :hearts), Card.new(7, :diamonds)]
		@player = Player.new(cards)
	end		

	def test_player_has_hand
		assert @player.hand
	end

	def test_player_displays_hand
		assert_equal "4 of Diamonds, Jack of Hearts, 7 of Diamonds", @player.display
	end

	def test_player_hand_can_have_unique_cards
		assert @player.has_no_matching_cards?
	end

	def test_player_hand_has_high_card
		assert_equal 11, @player.high_card.value
	end

	def test_player_hand_has_a_pair
		hand_with_pair = Player.new([Card.new(10, :spades), Card.new(10, :diamonds), Card.new(5, :spades)])
		assert hand_with_pair.has_pair?
	end

	def test_player_hand_has_3_cards_of_the_same_suit
		hand_with_flush = Player.new([Card.new(10, :spades), Card.new(9, :spades), Card.new(5, :spades)])
		assert hand_with_flush.has_flush?
	end

	def test_player_hand_has_3_consecutive_cards_of_mixed_suits
		hand_with_straight = Player.new([Card.new(:jack, :diamonds), Card.new(:queen, :spades), Card.new(10, :hearts)])
		assert hand_with_straight.has_straight?
	end

	def test_straight_has_no_pair
		hand_with_pair = Player.new([Card.new(:queen, :diamonds), Card.new(:queen, :spades), Card.new(10, :hearts)])
		refute hand_with_pair.has_straight?
	end

	def test_player_hand_has_three_of_a_kind
		hand_with_three_of_a_kind = Player.new([Card.new(:jack, :diamonds), Card.new(:jack, :spades), Card.new(:jack, :hearts)])
		assert hand_with_three_of_a_kind.has_3_of_a_kind?
	end

	def test_player_hand_has_straight_flush
		hand_with_straight_flush = Player.new([Card.new(:jack, :diamonds), Card.new(:queen, :diamonds), Card.new(10, :diamonds)])
		assert hand_with_straight_flush.has_straight_flush?
	end

	def test_straight_flush_hand_w_Q_J_10_of_H_beats_8_7_6_of_D
		sf_hand1 = Player.new([Card.new(:queen, :hearts), Card.new(:jack, :hearts), Card.new(10, :hearts)])
		sf_hand2 = Player.new([Card.new(8, :diamonds), Card.new(7, :diamonds), Card.new(6, :diamonds)])
		assert sf_hand1 > sf_hand2
	end

	def test_straight_flush_hand_beats_3_of_a_kind_hand
		sf_hand = Player.new([Card.new(:queen, :hearts), Card.new(:jack, :hearts), Card.new(10, :hearts)])
		threeKind_hand = Player.new([Card.new(:jack, :diamonds), Card.new(:jack, :spades), Card.new(:jack, :hearts)])
		assert sf_hand > threeKind_hand
	end

	def test_3_of_a_kind_hand_beats_straight
		threeKind_hand = Player.new([Card.new(:jack, :diamonds), Card.new(:jack, :spades), Card.new(:jack, :hearts)])
		straight_hand = Player.new([Card.new(:jack, :diamonds), Card.new(:queen, :spades), Card.new(10, :hearts)])
		assert threeKind_hand > straight_hand
	end

	def test_player_hand_has_value
		hand_with_three_of_a_kind = Player.new([Card.new(:jack, :diamonds), Card.new(:jack, :spades), Card.new(:jack, :hearts)])
		assert_equal 11_000_000_000_000, hand_with_three_of_a_kind.hand_rank
	end

end