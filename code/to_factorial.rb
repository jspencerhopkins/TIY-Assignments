# create a ruby function to compute factorials

class Fixnum

  def to_factorial
  	if self == 0
  		1
  	else
  		self * (self-1).to_factorial
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

test 5.to_factorial, 120
test 10.to_factorial, 3628800