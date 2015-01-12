class Wolf

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

	
end