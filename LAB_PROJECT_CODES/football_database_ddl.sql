-- create player table
CREATE TABLE player(
	id SERIAL,
	name varchar(50) NOT NULL,
	country varchar(50),
	date_of_birth DATE NOT NULL,
		CONSTRAINT player_pKey PRIMARY KEY(id)
);


-- create manager table
CREATE TABLE manager(
	id SERIAL,
	name varchar(50) NOT NULL,
	country varchar(50),
	date_of_birth DATE NOT NULL,
		CONSTRAINT manager_pKey PRIMARY KEY(id)
);


-- create stadium table
CREATE TABLE stadium(
	name varchar(50),
	city varchar(50) NOT NULL,
	country varchar(50) NOT NULL,
	capacity INT  
		CONSTRAINT stadium_capacity_constraint CHECK (capacity > 0),
		CONSTRAINT stadium_pKey PRIMARY KEY(name)
); 


-- create league table
CREATE TABLE league(
	name varchar(20) NOT NULL,
	country varchar(50),
	division INT NOT NULL
		CONSTRAINT league_division_constraint CHECK (division >= 1 and division <= 10),
		CONSTRAINT league_pKey PRIMARY KEY (name, country)
);


-- create team table
CREATE TABLE team(
	id SERIAL,
	stadium_name varchar(50) NOT NULL,
	league_name varchar(20) NOT NULL,
	country varchar(50) NOT NULL,
	full_name varchar(70) NOT NULL UNIQUE,
	founded_on DATE,
	budget NUMERIC(15, 2)
		CONSTRAINT team_budget_constraint CHECK (budget >= 0),
		CONSTRAINT team_pKey PRIMARY KEY (id),
		CONSTRAINT team_stadium_fKey FOREIGN KEY(stadium_name) REFERENCES stadium(name)
			ON DELETE SET NULL
			ON UPDATE CASCADE,
		CONSTRAINT team_league_fKey FOREIGN KEY(league_name, country) REFERENCES league(name, country)
			ON DELETE SET NULL
			ON UPDATE CASCADE
);


-- create plays table 
CREATE TABLE plays(
	player_id SERIAL NOT NULL,
	team_id SERIAL NOT NULL,
	starting_date DATE,
	wage NUMERIC(10, 2)
		CONSTRAINT plays_wage_constraint CHECK (wage >= 0),
		CONSTRAINT plays_pKey PRIMARY KEY(player_id),
		CONSTRAINT plays_playerID_fKey FOREIGN KEY(player_id) REFERENCES player(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
		CONSTRAINT plays_teamID_fKey FOREIGN KEY(team_id) REFERENCES team(id)
			ON DELETE SET NULL
			ON UPDATE CASCADE
);


-- create manages table
CREATE TABLE manages(
	manager_id SERIAL NOT NULL,
	team_id SERIAL NOT NULL,
	starting_date DATE,
	wage NUMERIC(10, 2) 
		CONSTRAINT manages_wage_constraint CHECK (wage >= 0),
		CONSTRAINT manages_pKey PRIMARY KEY (manager_id),
		CONSTRAINT manages_managerID_fKey FOREIGN KEY(manager_id) REFERENCES manager(id)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
		CONSTRAINT manages_teamID_fKey FOREIGN KEY(team_id) REFERENCES team(id)
			ON DELETE SET NULL
			ON UPDATE CASCADE
);


-- create matches table 
CREATE TABLE matches(
	match_id SERIAL,
	home_team_id SERIAL NOT NULL,
	away_team_id SERIAL NOT NULL,
	date_of_match DATE,
	venue varchar(50),
	home_team_goals INT 
		CONSTRAINT matches_home_team_goal_constraint CHECK (home_team_goals >= 0),
	away_team_goals INT
		CONSTRAINT matches_away_team_goal_constraint CHECK (away_team_goals >= 0),
	winner INT NOT NULL
		CONSTRAINT matches_winner_constraint CHECK ((winner>=0) and (winner<=2)), -- 1 if home team wins, 2 if away team wins, 0 if draw
		CONSTRAINT matches_pKey PRIMARY KEY(match_id),
		CONSTRAINT matches_homeID_fKey FOREIGN KEY(home_team_id) REFERENCES team(id)
			ON DELETE No Action
			ON UPDATE CASCADE,
		CONSTRAINT matches_awayID_fKey FOREIGN KEY(away_team_id) REFERENCES team(id)
			ON DELETE No Action
			ON UPDATE CASCADE,
		CONSTRAINT matches_venue_fKey FOREIGN KEY(venue) REFERENCES stadium(name)
			ON DELETE No Action
			ON UPDATE CASCADE
);


-- create scorer table 
CREATE TABLE scorer(
	match_id SERIAL,
	player_id SERIAL,
	scored_for boolean, -- true if scored for home, false if scored for away
	time_of_goal NUMERIC(4,2) 
		CONSTRAINT scorer_time_of_goal_constraint check (time_of_goal >= 0 and time_of_goal <= 130),
	CONSTRAINT scorer_pKey PRIMARY KEY (match_id, player_id, time_of_goal),
	CONSTRAINT scorer_matchID_fKey FOREIGN KEY(match_id) REFERENCES matches(match_id)
		ON DELETE No Action
		ON UPDATE CASCADE,
	CONSTRAINT scorer_playerID_fKey FOREIGN KEY(player_id) REFERENCES player(id)
		ON DELETE No Action
		ON UPDATE CASCADE
);