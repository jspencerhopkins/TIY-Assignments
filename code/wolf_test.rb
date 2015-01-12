require 'minitest/autorun'
require './wolf'

# A wolfpack is a group of wolves
# A wolf has a name and an age

class TestWolf < MiniTest::Unit::TestCase

	def setup
		 @wolf = Wolf.new(:gary, 2)
  end

  def test_does_wolf_exisit
  	assert @wolf
  end

  def test_can_wolf_howl
  	assert_equal "howl", @wolf.howl
  end

end