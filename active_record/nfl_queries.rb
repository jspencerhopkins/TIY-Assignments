# Ex 1 -- Select every team from the NFC North
Team.where(division: "North", conference: "NFC").map{|team| team.name}

# Ex 2 -- Select every team with at least 11 wins
Team.where("wins >= 11").map{|team| team.name}

# Ex 3 -- Select every team with at least 8 wins that did not make the playoffs
Team.where("wins >= 8 AND playoff = 0").map{|team| team.name}

# *** SKIP *** Ex 4 -- Rename every team with fewer than 4 wins "Losers"

# Ex 5 -- Select every team that plays in a city of fewer than 5 million people, and the name of the city
 
