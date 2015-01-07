# Write code to answer each of the following questions. Show the code and, in a comment, its return value.
# Example:
# How many letters are in the word 'abbreviation'?
'abbreviation'.length #=> 12

# Is pi bigger than 22/7?
puts Math::PI > 22/7 #=> true

# a person who's 6'5" is how many inches tall?
puts
puts (6*12)+5

weather = "an absolutely beautiful day"
# write the shortest possible code that will print out the string "Hello! Isn't it an absolutely beautiful day today?"
puts
puts "Hello! Isn't it " + weather

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English what the code does.
"3 + 2 is #{3+2}"
# => "3 + 2 is 5"
# this code takes text and interpolates 3+2 (which equals 5)

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English why the code does what it does.
"Five is #{5 > 4 ? 'greater' : 'less'} than four."
# => "Five is greater than four."
# this code evaluates the '5>4' expression, then if true interpolates to greater or if false interpolates to less - which is emedded inside of text

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English why the code does what it does.
"Five is #{5 > 6 ? 'greater' : 'less'} than six."
# => "Five is less than six."
# this code evaluates the '5>6' expression, then if true interpolates to greater or if false interpolates to less - which is emedded inside of text

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English why the code what it does.
"Five is #{5 == 100 ? '' : 'not '}the same as one hundred."
# => "Five is not the same as one hundred"
# this code compares whether the number 5 is the same as the number 100.  Since 5 is not the same as 100, the expression is false and is interpolated as 'not'

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English what the code does.
[ 1, 2, 3, 4, 5].collect do |n|
  n * 3
end
# => [3,6,9,12,15]
# this code takes the array [1,2,3,4,5] and the iterator "collect" is invoked and each value in the array is multiplied by 3

# beginning with a list of the numbers 3, -2, 7.5, and 90, make a list containing their absolute values.
[3, -2, 7.5, 90].collect do |n|
	n.abs
end
# => [3,2,7.5,90]
# this code takes the array [3,-2,7.5,90] and the iterator "collect" is invoked and then the absolute value method is called on each value.

# Add a comment after the following code block showing its return value.
# Then add a second comment explaining in English what the code does.
[ 'David Rogers', 'Brian Gates', 'Jerry Seinfeld', 'Larry David' ].select do |name|
  name.include?('David')
end
# => ["David Rogers", "Larry David"]
# this code selects the array and returns each value that contains the word 'David'

# create a list of the names Joe, Kelly, Spencer, Peter, Ivan, Andell, Angela, Jeff to use for the next five tasks.
puts
puts students = ["Joe", "Kelly", "Spencer", "Peter", "Ivan", "Andell", "Angela", "Jeff"]

# access the 5th name in the list
puts
puts students[4]

# add my name to the end of the list
students[students.length] = 'Brian'

# make a list of the names in alphabetical order
puts
puts students.sort

# make a list of the names in reverse alphabetical order
puts
puts students.sort.reverse

# make a list of the names from shortest to longest
puts
puts students.sort_by {|x| x.length}

# Add a comment after the following line of code showing its return value.
# Then add a second comment explaining in English what the code does.  
%w(Joe Kelly Spencer Peter Ivan Andell Angela Jeff Brian).partition{|name| name.length == 5 }
# => [["Kelly", "Peter", "Brian"], ["Joe", "Ivan", "Andell", "Angela", "Jeff"]]
# The method partition is called on the array and creates an array with 2 objects - one object is an array with 5 letter strings and the other array is strings that are not equal to 5 letter strings

# Split the above list of names into a group that starts with 'J' and a group that doesn't.
puts
puts %w(Joe Kelly Spencer Peter Ivan Andell Angela Jeff Brian).partition{|name| name =~  /\J/  }

president_birthdays = { 
    'Abraham Lincoln' => 'February 12, 1809', 
    'William Henry Harrison' => 'February 9, 1773', 
    'George Washington' => 'February 22, 1732', 
    'Ronald Reagan' => 'February 6, 1911' 
  }
# write code to access George Washington's birthday from the hash.
puts
puts president_birthdays['George Washington']

# Add a comment after the following block of code showing its return value.
# Then add another comment explaining in English what the code does. 
president_birthdays.each do |key, value|
  puts "President #{key} was born on #{value}."
end


# Imagine you were talking to someone who missed today's class (and the prework). 
# Write down how you would explain how to go about solving the next task. Then write code to solve it.
# Modify the code to print out only the Presidents born during the 18th century. 

# Modify the code to print out only the President born during the 20th century.

# Add James A. Garfield (born November 19, 1831) to the hash, and modify the code (if necessary) to print out only the President born during the 20th century.

# Also add Bill Clinton (born August 19, 1946), and modify the code (if necessary) to print out the two Presidents born during the 20th century. 

# EXPERT LEVEL: modify the code to print out the Presidents in the order of their birth.

# SUPER EXPERT LEVEL: Modify the code to print out the Presidents with February birthdays in the order their birthdays occur during the month.

# SUPER DUPER EXPERT LEVEL: Print out the six Presidents in the order their birthdays occur during the year.

# Create a data structure that has the numbers from one to ten that matches the
# representation of each as a word (like 'one') with the corresponding
# representation as a numeral (like 1). 

# If you print out the names of the numbers from one to three in alphabetical order
# alongside the numeral for each, it could look like
# one (1)
# three (3)
# two (2)
# Create the same kind of print out for the numbers from one to ten.

n = 3; puts "I have #{n} pizza#{n = 1 ? '' : 's'}"
# What is the typo in the above line, and why does it have the effect that it does?

# Fix the typo in the above line of code.