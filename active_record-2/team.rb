class Team < ActiveRecord::Base

	belongs_to :city
	has_one :coach
	has_many :home_games, class_name: "Game", foreign_key: "game_id"
	has_many :away_games, class_name: "Game", foreign_key: "game_id"

	# def division_rivals
 #     Team.where(conference: self.conference, division: self.division).where.not(id: self.id)
	# end

	#Define Team#won? which should say whether a team won a particular game. 
	#Test it against the data you entered.

	def won?

	end



end