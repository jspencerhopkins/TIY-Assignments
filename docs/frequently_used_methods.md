# Methods I use a lot

## Array

/-/-/ WENT OVER THESE IN 01.14.15 LECTURE /-/-/

* [1, 2] + [ 6, 7 ] => [1, 2, 6, 7]
* <<
* ==
* []
* []=
* collect(!) (aka map(!))
* compact(!)
* each
* empty?
* index
* first
* flatten(!)
* include?
* index
* join
* last
* length (aka size)
* pop
* push
* reject(!)
* reverse
* select(!)
* shift
* shuffle
* sort(!)
* sort_by(!)
* uniq(!)
* unshift

## Enumerable

* all?  						# => %w{ant bear cat}.all? {|word| word.length >= 3}   #=> true
* any?  						# => %w{ant bear cat}.any? {|word| word.length >= 3}   #=> true
* each_with_index 	# => ['cat', 'dog', 'pig', 'goat'].each_with_index {|animal, idx| puts animal if idx % 2 == 0}								
* group_by
* inject
* max
* max_by
* member?
* min
* min_by
* partition
* reduce

## String

* *
* +
* <<
* =~
* []
* []=
* capitalize(!)
* chomp(!)
* downcase(!)
* each_line
* empty?
* gsub(!)
* include?
* sub(!)
* to_i
* to_f
* to_sym

## Object

* class
* inspect
* instance_of?
* is_a?
* kind_of?
* methods
* nil?
* respond_to?
* send
* tap

## Hash

* []
* []=
* delete
* each
* each_key
* each_value
* empty?
* fetch
* has_key?
* has_value?
* include?
* invert
* keep_if
* key
* keys
* length
* merge(!)
* reject(!)
* select(!)
* values

## Range

* 
