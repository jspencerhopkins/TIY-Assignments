# Ex 1 -- Select every team from the NFC North
SELECT teams.name FROM teams WHERE division = 'North' AND conference = 'NFC';

# Ex 2 -- Select every team with at least 11 wins
SELECT teams.name FROM teams WHERE wins >= 11;

# Ex 3 -- Select every team with at least 8 wins that did not make the playoffs
SELECT teams.name FROM teams WHERE wins >= 8 AND playoff = 0;

# Ex 4 -- Rename every team with fewer than 4 wins "Losers"
UPDATE teams SET name = "Losers" WHERE wins < 4;

# Ex 5 -- Select every team that plays in a city of fewer than 5 million people, and the name of the city
SELECT cities.name, teams.* FROM cities, teams WHERE teams.city_id = cities.id AND cities.population_2013 < 5000000;

# Ex 6 -- Select every AFC team that plays in a city that is shrinking in population
SELECT teams.name FROM cities, teams WHERE teams.city_id = cities.id AND cities.population_change < 0 AND teams.conference ='AFC';

# Ex 7 -- Select every city that has a team
SELECT cities.name FROM cities, teams WHERE teams.city_id = cities.id;

# Ex 8 -- Select every state that has a team
SELECT states.name FROM cities, teams, states WHERE teams.city_id = cities.id AND cities.state_id = states.id;

# Ex 9 -- Select every team that plays in California
SELECT teams.name FROM cities, teams, states WHERE teams.city_id = cities.id AND cities.state_id = states.id AND states.name = 'CALIFORNIA';