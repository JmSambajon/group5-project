Create Table individual_player_stats (
	player VARCHAR NOT NULL,
	pos VARCHAR NOT NULL,
	age INT NOT NULL,
	team VARCHAR NOT NULL,
	game INT NOT NULL,
	gamestarted INT NOT NULL,
	minutesplayed INT NOT NULL,
	fieldgoalmade INT NOT NULL,
	fieldgoalattempt INT NOT NULL,
	fieldgoalpercentage INT NOT NULL,
	threepointmade INT NOT NULL,
	threepointattempt INT NOT NULL,
	threepointpercentage INT NOT NULL,
	twopointmade INT NOT NULL,
	twopointattempt INT NOT NULL,
	twopointpercentage INT NOT NULL,
	efficencyfgpercentage INT NOT NULL,
	freethrowsmade INT NOT NULL,
	freethrowattempt INT NOT NULL,
	freethrowpercentage INT NOT NULL,
	offensiverebound INT NOT NULL,
	defensiverebound INT NOT NULL,
	totalrebound INT NOT NULL,
	assist INT NOT NULL,
	steaL INT NOT NULL,
	block INT NOT NULL,
	turnover INT NOT NULL,
	personalfoul INT NOT NULL,
	points INT NOT NULL,
	FOREIGN KEY (Team)
	REFERENCES Team_abbreviations(Team)
);

SELECT * FROM individual_player_stats;

Create Table NBA_season_stats (
	franchise VARCHAR NOT NULL,
	conference VARCHAR NOT NULL,
	win INT NOT NULL,
	lost INT NOT NULL,
	winpercentage INT NOT NULL,
	gamesbehind INT NOT NULL,
	conferencerecord VARCHAR NOT NULL,
	divisionrecord VARCHAR NOT NULL,
	homerecord VARCHAR NOT NULL,
	roadrecord VARCHAR NOT NULL,
	overtimerecord VARCHAR NOT NULL,
	last10record VARCHAR NOT NULL,
	streak VARCHAR NOT NULL,
	PRIMARY KEY (franchise)
);

SELECT * FROM NBA_season_stats;

Create Table Team_abbreviations (
	Team VARCHAR NOT NULL,
	Franchise VARCHAR NOT NULL,
	FOREIGN KEY (Franchise) REFERENCES NBA_season_stats (Franchise),
	PRIMARY KEY (Team)
);

SELECT * FROM team_abbreviations;

SELECT version();
