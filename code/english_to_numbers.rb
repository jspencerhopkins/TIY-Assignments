# Brian's code

#########################################################

# I want a function that will convert English language numbers into 
# their numerical representation.
# For example:
# english_to_number('one') #=> 1
# english_to_number('ninety six') #=> 96
# The function should at least work up to 100. 1_000_000_000_000 would be better.

def english_to_number(word_or_words)
  if word_or_words == nil #in case recursive call has no argument
  	word_or_words = ''
  end
  number_hash = {
  	'one' => 1,
  	'two' => 2,
  	'three' => 3,
  	'four' => 4,
  	'five' => 5,
  	'six' => 6,
  	'seven' => 7,
  	'eight' => 8,
  	'nine' => 9,
  	'ten' => 10,
  	'eleven' => 11,
  	'twelve' => 12,
  	'thirteen' => 13,
  	'fourteen' => 14,
  	'fifteen' => 15,
  	'sixteen' => 16,
  	'seventeen' => 17,
  	'eighteen' => 18,
  	'nineteen' => 19,
  	'twenty' => 20,
  	'thirty' => 30,
  	'forty' => 40,
  	'fifty' => 50,
  	'sixty' => 60,
  	'seventy' => 70,
  	'eighty' => 80,
  	'ninety' => 90
  }  
  if word_or_words.include?('million')
  	millions, remainder = word_or_words.split('million')
  	return english_to_number(millions) * 1_000_000 + english_to_number(remainder)
  elsif word_or_words.include?('thousand')
  	thousands, remainder = word_or_words.split('thousand')
  	return english_to_number(thousands) * 1000 + english_to_number(remainder)
  elsif word_or_words.include?('hundred')
    hundreds, remainder = word_or_words.split('hundred')
    return english_to_number(hundreds) * 100 + english_to_number(remainder)
  end
  array_of_words = word_or_words.split
  array_of_words.inject(0){|sum, string| sum + number_hash[string]}
end

puts english_to_number('one') #=> 1
puts english_to_number('twenty') #=> 20
puts english_to_number('twenty five') #=> 25
puts english_to_number('one hundred') #=> 100
puts english_to_number('six hundred thirty two') #=> 632
puts english_to_number('four thousand eight hundred twelve') #=> 4812
puts english_to_number('nine hundred seventeen million thirty six') #=> 917000036


#########################################################


# My code
# def engToNum word

# 	# need to make sure it is a string in the array

# possibleWords = 	{'one' => 1 , 
# 					'two' => 2, 
# 					'three' => 3, 
# 					'four' => 4, 
# 					'five' => 5, 
# 					'six' => 6, 
# 					'seven' => 7, 
# 					'eight' => 8, 
# 					'nine' => 9, 
# 					'ten' => 10,
# 					'eleven' => 11,
# 					'twelve' => 12,
# 					'thirteen' => 13,
# 					'fourteen' => 14,
# 					'fifteen' => 15,
# 					'sixteen' => 16, 
# 					'seventeen' => 17, 
# 					'eighteen' => 18, 
# 					'nineteen' => 19,
# 					'twenty' => 20,
# 					'twenty-one' => 21,
# 					'twenty-two' => 22,
# 					'twenty-three' => 23,
# 					'twenty-four' => 24,
# 					'twenty-five' => 25,
# 					'twenty-six' => 26,
# 					'twenty-seven' => 27,
# 					'twenty-eight' => 28,
# 					'twenty-nine' => 29,
# 					'thirty' => 30,
# 					'thirty-one' => 31,
# 					'thirty-two' => 32,
# 					'thirty-three' => 33,
# 					'thirty-four' => 34,
# 					'thirty-five' => 35,
# 					'thirty-six' => 36,
# 					'thirty-seven' => 37,
# 					'thirty-eight' => 38,
# 					'thirty-nine' => 39,
# 					'fourty' => 40,
# 					'fourty-one' => 41,
# 					'fourty-two' => 42,
# 					'fourty-three' => 43,
# 					'fourty-four' => 44,
# 					'fourty-five' => 45,
# 					'fourty-six' => 46,
# 					'fourty-seven' => 47,
# 					'fourty-eight' => 48,
# 					'fourty-nine' => 49,
# 					'fifty' => 50, 
# 					'fifty-one' => 51,
# 					'fifty-two' => 52,
# 					'fifty-three' => 53,
# 					'fifty-four' => 54,
# 					'fifty-five' => 55,
# 					'fifty-six' => 56,
# 					'fifty-seven' => 57,
# 					'fifty-eight' => 58,
# 					'fifty-nine' => 59,
# 					'sixty' => 60,
# 					'sixty-one' => 61,
# 					'sixty-two' => 62,
# 					'sixty-three' => 63,
# 					'sixty-four' => 64,
# 					'sixty-five' => 65,
# 					'sixty-six' => 66,
# 					'sixty-seven' => 67,
# 					'sixty-eight' => 68,
# 					'sixty-nine' => 69,
# 					'seventy' => 70,
# 					'seventy-one' => 71,
# 					'seventy-two' => 72,
# 					'seventy-three' => 73,
# 					'seventy-four' => 74,
# 					'seventy-five' => 75,
# 					'seventy-six' => 76,
# 					'seventy-seven' => 77,
# 					'seventy-eight' => 78,
# 					'seventy-nine' => 79,
# 					'eighty' => 80,
# 					'eighty-one' => 81,
# 					'eighty-two' => 82,
# 					'eighty-three' => 83,
# 					'eighty-four' => 84,
# 					'eighty-five' => 85,
# 					'eighty-six' => 86,
# 					'eighty-seven' => 87,
# 					'eighty-eight' => 88,
# 					'eighty-nine' => 89,
# 					'ninety' => 90,
# 					'ninety-one' => 91,
# 					'ninety-two' => 92,
# 					'ninety-three' => 93,
# 					'ninety-four' => 94,
# 					'ninety-five' => 95,
# 					'ninety-six' => 96,
# 					'ninety-seven' => 97,
# 					'ninety-eight' => 98,
# 					'ninety-nine' => 99,
# 					'one hundred' => 100}


# #if word.include? "-"
# #	puts ''

# possibleWords[word] || "Please type in a number from 1 to 100"

# end

# puts engToNum("twenty-four")