require 'minitest/autorun'
require './wolf'

# A wolfpack is a group of wolves
# A wolf has a name and an age
# The leader of the wolfpack is the oldest wolf.

class TestWolf < MiniTest::Unit::TestCase

	def setup
		 @wolf = Wolf.new(:gary, 2)
  end

  def test_does_wolf_exisit
  	assert @wolf
  end

  def test_wolf_name_is_gary
  	assert_equal :gary, @wolf.name
  end

  def test_wolf_age_is_2
  	assert_equal 2, @wolf.age
  end

  def test_can_wolf_howl
  	assert_equal "howl", @wolf.howl
  end

end