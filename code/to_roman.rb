# I want a method that will convert integers into their Roman numeral representation.
# For example:
# 3.to_roman => "III"
# 15.to_roman => "XV"

class Fixnum

  def to_roman
    if self == 0
      ""
    elsif self <= 3
      "I" * self
    elsif self == 4
      "IV"
    elsif self <= 8
      "V" + (self - 5).to_roman
    elsif self == 9
      "IX"
    elsif self < 40
      "X" + (self - 10).to_roman
    elsif self < 50
      "XL" + (self - 40).to_roman
    elsif self < 90
      "L" + (self - 50).to_roman  
    elsif self < 100
      "XC" + (self - 90).to_roman


    end
  end
end

def test(actual_value, expectation)
  if actual_value == expectation
    puts "success"
  else
    puts "expected #{expectation} but got #{actual_value}"
  end
end

test 1.to_roman, "I"
test 2.to_roman, "II"
test 4.to_roman, "IV"
test 5.to_roman, "V"
test 6.to_roman, "VI"
test 9.to_roman, "IX"
test 10.to_roman, "X"
test 25.to_roman, "XXV"
test 39.to_roman, "XXXIX"
test 49.to_roman, "XLIX"
test 89.to_roman, "LXXXIX"
test 99.to_roman, "XCIX"