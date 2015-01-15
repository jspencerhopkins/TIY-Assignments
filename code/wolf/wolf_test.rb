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

  def test_older_wolve_is_dominant_to_younger
  	old_wolf = Wolf.new(:mike, 8)
  	assert old_wolf.dominant_over?(@wolf)
  end

  def test_younger_wolve_is_submissive_to_older_wolf
    young_wolf = Wolf.new(:zed, 1)
    assert young_wolf.submissive_to?(@wolf)
  end

end