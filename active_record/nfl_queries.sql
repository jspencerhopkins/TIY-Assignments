-- Exercise 1
SELECT * FROM teams.name WHERE division = 'North' AND conference = 'NFC';

-- Exercise 2
SELECT * FROM teams.name WHERE wins >= 11;

-- Exercise 3
SELECT * FROM teams.name WHERE wins >= 8 AND playoff = 0;

-- Exercise 4
UPDATE teams SET name = "Losers" WHERE wins < 4;

-- Exercise 5
SELECT cities.name, teams.* FROM cities, teams WHERE teams.city_id = cities.id AND cities.population_2013 < 5000000;

-- Exercise 6
SELECT teams.name FROM cities, teams WHERE teams.city_id = cities.id AND cities.population_change < 0 AND teams.conference ='AFC';

-- Exercise 7
SELECT cities.name FROM cities, teams WHERE teams.city_id = cities.id;

-- Exercise 8 
SELECT states.name FROM cities, teams, states WHERE teams.city_id = cities.id AND cities.state_id = states.id;

-- Exercise 9
SELECT teams.name FROM cities, teams, states WHERE teams.city_id = cities.id AND cities.state_id = states.id AND states.name = 'CALIFORNIA';