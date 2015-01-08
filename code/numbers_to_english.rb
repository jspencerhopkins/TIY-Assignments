
class Fixnum

	def number_to_english

		# only going to handle positives numbers... for now

		if self < 0
			return 'Please enter a number that isn\'t negative.'
		end
		if self == 0
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

		# using 44 as an example

		# handling hundreds

		left = self
		# now left = 44

		write = left/100
		# write = 0.44

		left = left - write*100
		# left = 0.44 - (44) = -43.56

		if write > 0
			hundreds = write.number_to_english
			numWord = numWord + hundreds - ' hundred'

			if left > 0
				numWord = numWord + ' '
			end
		end

		# handling tens
		

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

		# handling ones

		write = left
		left = 0

		if write > 0
			numWord = numWord + onesPlace[write -1]
		end

		numWord

	end	
end



puts 44.number_to_english

