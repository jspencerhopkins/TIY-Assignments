require 'minitest/autorun'
require './wolfpack'
require './wolf'

class TestWolfpack < MiniTest::Unit::TestCase

	def setup
		@wolfpack = Wolfpack.new
	end

end