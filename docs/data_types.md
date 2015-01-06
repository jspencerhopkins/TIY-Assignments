### `Numbers`
* **What does it mean?** numerical figures - integers, floats, etc
* **How do you make one?**  type it in
* **Why would you want one of those?** add, subtract, multiply, divide
* **What can you do with a number?**
```ruby
  # You can add:
  2 + 2 #=> 4
  
  # You can subtract:
  4 - 2 #=> 2
  
  # You can multiply:
  4 * 4 = 16
  
  # You can divide:
  4 / 2 = 2
```

# Strings

- single vs. double quotes
- escape characters

# Arrays

- ordered lists in brackets
- using iterators

# Hashes

- Unordered lists in curly brackets 

=======================================

### `Range`
* **What does it mean?** It's a sequence of numbers or letters that has no gaps in it.
* **How do you make one?** `(7..11)` #contains 7, 8, 9, 10, and 11. 
* **Why would you want one of those?** You could get every year since the Declaration of Independence was signed with `(1776..2015)`. Or if you want every day in February, that could be represented as `(1..28)`. You could even grab every letter of the alphabet with `('a'..'z')`.
* **What can you do with a range?**
```ruby
  # You can find if something is inside a range:
  (1..10).include?(5) #=> true
  (1..10).include?(300) #=> false

  # You can find out how big it is:
  (1..10).size #=> 10
  (1776..2015).size #=> 240
  
  # You can iterate over it:
  (13..19).each{|n| print "#{n} " } #=> 13 14 15 16 17 18 19
```