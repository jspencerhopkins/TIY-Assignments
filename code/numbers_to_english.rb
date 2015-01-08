

class Fixnum

	def number_to_english(number)

		if number < 0
			return 'Please enter a number that isn\'t negative.'
		end
		if number == 0
			return 'zero'
		end

		numWord = ''

		onesPlace = [
			'one',
			'two',
			'three',
			'four',
			'five',
			'six',
			'seven',
			'eight',
			'nine',
		]

		tensPlace = [
			'ten',
			'twenty',
			'thirty',
			'fourty',
			'fifty',
			'sixty',
			'seventy',
			'eighty',
			'ninety',
		]

		teenagers = [
			'eleven',
			'twelve',
			'thirteen',
			'fourteen',
			'fifteeen',
			'sixteen',
			'seventeen',
			'eighteen',
			'nineteen'
		]

		left = number
		write = left/100

		left = left - write*100

		if write > 0
			hundreds = number_to_english(write)
			number = 
































