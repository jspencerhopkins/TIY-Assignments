class City < ActiveRecord::Base
	belongs_to :state
	has_many :teams

	# def self.densest(n)
	# 	order('population_density DESC').limit(n)
	# end

	# def in_state_cities
	# 	state.cities
	# end

	def self.fastest_growing
		order('population_change DESC').map{|city| city.name}.first
	end

	def self.shrinking
		where('population_change < 0').map{|city| city.name}
	end

end