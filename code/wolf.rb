class Wolf

	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end

	def howl
		if @age <= 3
			"howl"
		else
			"HOWL"
		end
	end

	def dominant_over?(other_wolf)
		@age > other_wolf.age
	end

	def submissive_to?(other_wolf)
		@age < other_wolf.age
	end

end