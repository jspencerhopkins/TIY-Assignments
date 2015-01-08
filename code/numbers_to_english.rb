

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
			numWord = numWord + hundreds - ' hundred'

			if left > 0
				numWord = numWord + ' '
			end
		end

		write = left/10
		left = left - write*10

		if write > 0
			if ((write ==1) and (left > 0))
				numWord = numWord + teenagers[left-1]
				left = 0
			else
				numWord = numWord + tensPlace[write-1]
			end

			if left > 0
				numWord = numWord + ' '
			end
		end

		write = left
		left = 0

		if write > 0
			numWord = numWord + onesPlace[write -1]
		end

		numWord

	end

puts number_to_english( 44)