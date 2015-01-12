require 'minitest/autorun'
require './wolfpack'
require './wolf'

class TestWolfpack < MiniTest::Unit::TestCase

	def setup
		@wolfpack = Wolfpack.new
	end

	def test_wolfpack_has_2_or_more_wolves
		assert true, @wolfpack.length
	end

	

end