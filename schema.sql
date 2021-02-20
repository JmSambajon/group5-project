Create Table individual_player_stats (
	player VARCHAR NOT NULL,
	Pos VARCHAR NOT NULL,
	Age INT NOT NULL,
	Team VARCHAR NOT NULL,
	Game INT NOT NULL,
	GameStarted INT NOT NULL,
	MinutesPlayed INT NOT NULL,
	FieldGoalMade INT NOT NULL,
	FieldGoalAttempt INT NOT NULL,
	FieldGoalPercentage INT NOT NULL,
	ThreePointMade INT NOT NULL,
	ThreePointAttempt INT NOT NULL,
	ThreePointPercentage INT NOT NULL,
	TwoPointMade INT NOT NULL,
	TwoPointAttempt INT NOT NULL,
	TwoPointPercentage INT NOT NULL,
	efficencyFGPercentage INT NOT NULL,
	FreeThrowsMade INT NOT NULL,
	FreeThrowAttempt INT NOT NULL,
	FreeThrowPercentage INT NOT NULL,
	OffensiveRebound INT NOT NULL,
	DeffensiveRebound INT NOT NULL,
	TotalRebound INT NOT NULL,
	Assist INT NOT NULL,
	SteaL INT NOT NULL,
	Block INT NOT NULL,
	Turnover INT NOT NULL,
	PersonalFoul INT NOT NULL,
	Points INT NOT NULL,
	PRIMARY KEY (Team)
);

Create Table NBA_season_stats (
	Franchise VARCHAR NOT NULL,
	Conference VARCHAR NOT NULL,
	Win INT NOT NULL,
	Lost INT NOT NULL,
	WinPercentage INT NOT NULL,
	GamesBehind INT NOT NULL,
	ConferenceRecord VARCHAR NOT NULL,
	DivisionRecord VARCHAR NOT NULL,
	HomeRecord VARCHAR NOT NULL,
	RoadRecord VARCHAR NOT NULL,
	OverTimeRecord VARCHAR NOT NULL,
	Last10Record VARCHAR NOT NULL,
	Streak VARCHAR NOT NULL,
	PRIMARY KEY (Franchise)
);

Create Table Team_abbreviations (
	Team VARCHAR NOT NULL,
	Franchise VARCHAR NOT NULL,
	FOREIGN KEY (Franchise) REFERENCES NBA_season_stats (Franchise),
	FOREIGN KEY (Team) REFERENCES individual_player_stats (team),
	PRIMARY KEY (Franchise,Team)
);

SELECT * FROM individual_player_stats;
SELECT * FROM NBA_season_stats;
SELECT * FROM Team_abbreviations;