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
* each_with_index 	# => ['cat', 'dog', 'pig', 'goat'].each_with_index {|animal, index| puts animal if index % 2 == 0}
* grep							# => (1..100).grep 38..44 # => [38, 39, 40, 41, 42, 43, 44]
* group_by					# => ["Tiger", "Lion", "Puma", "Leopard", "Jaguar", "Cheetah", "Bobcat"].group_by { |cat| cat.length }
* inject						# => [1, 2, 3, 4].inject(0) { |result, element| result + element } # => 10
* max 							# => %w(albatross dog horse).max # => 'horse'
* max_by 						# => %w(albatross dog horse).max_by # => 'albatross'
* member?						# => *** LITTLE FUZZY ***
* min 							# => %w(albatross dog horse).max # => 'albatross'
* min_by						# => %w(albatross dog horse fox).min_by {|item| item.length } # => 'dog'
* partition					# => (1..6).partition {|v| v.even? }  #=> [[2, 4, 6], [1, 3, 5]]
* reduce						# => *** SAME AS INJECT? ***

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
