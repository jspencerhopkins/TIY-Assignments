# Ex 1 -- Select every team from the NFC North
Team.where(division: "North", conference: "NFC").map{|team| team.name}

# Ex 2 -- Select every team with at least 11 wins
Team.where("wins >= 11").map{|team| team.name}

# Ex 3 -- Select every team with at least 8 wins that did not make the playoffs
Team.where("wins >= 8 AND playoff = 0").map{|team| team.name}

# *** SKIP *** Ex 4 -- Rename every team with fewer than 4 wins "Losers"

# Ex 5 -- Select every team that plays in a city of fewer than 5 million people, and the name of the city
# CAN'T FIGURE OUT
Team.joins(:city).where("population_2013 < 5000000")

# Ex 6 -- Select every AFC team that plays in a city that is shrinking in population
Team.joins(:city).where("conference = 'AFC' AND population_change < 0").map{|team| team.name}

# Ex 7 -- Select every city that has a team
City.joins(:teams).map{|city| city.name}.uniq

# Ex 8 -- Select every state that has a team
State.joins(cities: :teams).map{|state| state.name}.uniq

# Ex 9 -- Select every team that plays in California


# Ex 10 -- Find the 3 smallest cities with NFL teams
City.joins(:teams).sort_by{|city| city.population_2013}.map{|city| city.name}[0..2]

# Ex 11 -- Find the number of teams in cities of between 1 million and 2 million (as of 2013)


