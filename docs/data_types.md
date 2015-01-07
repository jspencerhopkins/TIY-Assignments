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

### `Strings`
* **What does it mean?** A string object holds and maipulates an arbitrary sequence of bytes, typically representing characters
* **How do you make one?**  place characters in between single or double quotes
* **Why would you want one of those?** present text, get input from user
* **What can you do with a string?**
```ruby
  # You can print text:
  puts 'Hello World!'
  
  # You can add strings together:
  puts 'I like ' + 'apple pie.'
```

### `Array`
* **What does it mean?** Arrays are ordered, integer-indexed collections of any object.
* **How do you make one?** `my_array = [1,2,3,4]` 
* **Why would you want one of those?** to store an ordered list of objects
* **What can you do with a range?**
```ruby
  # You can store names:
  names = ['Ada', 'Belle', 'Chris']

  # You can select (print) objects from arrays:
  puts names[1] #=> 'Belle'
  
  # You can iterate through them
  names.each do |n|
    puts "My friend is " + n
  end
  #=> 'My friend is Ada'
  #=>'My friend is Belle'
  #=>'My friend is Chris'
  ```

### `Hash`
* **What does it mean?** A hash is a dictionary-like collection of unique keys and their values.  Also called assoicative arrays, but where an Array uses integers as its index, a hash allows you to use any object type.
* **How do you make one?** `my_array = [1,2,3,4]` 
* **Why would you want one of those?** store keys and values
* **What can you do with a range?**
```ruby
  # You can store names and birthdays:
  president_birthdays = { 
    'Abraham Lincoln' => 'February 12, 1809', 
    'William Henry Harrison' => 'February 9, 1773', 
    'George Washington' => 'February 22, 1732', 
    'Ronald Reagan' => 'February 6, 1911' 
  }

  # You can select objects from hashes:
  puts presidents_birthdays['George Washington' #=> 'February 22, 1732'