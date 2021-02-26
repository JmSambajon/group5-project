Select nss.franchise,
		nss.conference,
		nss.win,
		nss.lost,
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
INTO team_summary
FROM individual_player_stats as ips 
JOIN team_abbreviations as ta ON (ta.team = ips.team)
JOIN nba_season_stats as nss on (nss.franchise = ta.franchise)
Group BY nss.franchise
Order By nss.conference;

Select * from team_summary;