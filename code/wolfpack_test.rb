require 'minitest/autorun'
require './wolfpack'
require './wolf'

class TestWolfpack < MiniTest::Unit::TestCase

	def setup
		@wolfpack = Wolfpack.new(wolves)
	end

	def test_wolfpack_exits
		assert @wolfpack
	end

	

end