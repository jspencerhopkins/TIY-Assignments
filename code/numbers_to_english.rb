# this is going to be a method that converts
# integers into their English language representation

class Fixnum

	def to_english
		names_as_array = %w(zero one two three four five six seven eight nine)
		names_as_array[self]
		

	end

end

puts 0.to_english #=> "one"
puts 1.to_english #=> "one"
puts 2.to_english #=> "two"