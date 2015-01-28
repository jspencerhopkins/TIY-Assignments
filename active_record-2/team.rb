class Team < ActiveRecord::Base

	belongs_to :city

	def division_rivals
     Team.where(conference: self.conference, division: self.division).where.not(id: self.id)
	end

end