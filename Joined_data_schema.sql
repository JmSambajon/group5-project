-- Consolidating 5 years of individual player stats into stat totals by team
Select ta.franchise,	
		sum (ips.points) as Total_points,
		sum (ips.fieldgoalmade) as Fieldgoals_made,
		sum (ips.fieldgoalattempt) as Fieldgoal_attempts,
		sum (ips.threepointmade) as Three_pointers_made,
		sum (ips.threepointattempt) as Three_pointer_attempts,
		sum (ips.freethrowsmade) as Total_Freethrows_made,
		sum (ips.freethrowattempt) as Total_freethrow_attempts,
		sum (ips.offensiverebound) as Total_offensive_rebounds,
		sum (ips.defensiverebound) as Total_defensive_rebounds,
		sum (ips.totalrebound) as Total_rebounds,
		sum (ips.assist) as Total_assists,
		sum (ips.steal) as Total_steals,
		sum (ips.block) as Total_blocks,
		sum (ips.turnover) as Total_turnovers
into summed_player_stats
FROM individual_player_stats as ips 
JOIN team_abbreviations as ta ON (ta.team = ips.team)

-- Consolidating 5 seasons worth of team win/loss records
SELECT franchise as team, 
		conference, 
		SUM(Win) as wins, 
		SUM(Lost) as losses 
INTO team_stats
FROM nba_season_stats
GROUP BY franchise, conference;


--Combining the two consolidated tables
SELECT ts.team, 
		ts.conference,
		ts.wins, 
		ts.losses,
		sps.Total_points,
		sps.Fieldgoals_made,
		sps.Fieldgoal_attempts,
		sps.Three_pointers_made,
		sps.Three_pointer_attempts,
		sps.Total_Freethrows_made,
		sps.Total_freethrow_attempts,
		sps.Total_offensive_rebounds,
		sps.Total_defensive_rebounds,
		sps.Total_rebounds,
		sps.Total_assists,
		sps.Total_steals,
		sps.Total_blocks,
		sps.Total_turnovers
INTO team_summary
FROM team_stats as ts
JOIN summed_player_stats as sps ON (ts.team = sps.franchise);

