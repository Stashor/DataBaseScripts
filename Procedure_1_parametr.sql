/*
Вывод информации о выступлении команды во всех матчах сезона, независимо от места проведения
*/

Create procedure Matches
@team varchar(50)
as
select team_name, manager, date, goals_scored, fouls, yellow_cards, red_cards, possession, shots, shots_on_target
from [dbo].[General_Team_Info], [dbo].[Home_team], [dbo].[Match]
where [dbo].[General_Team_Info].id_team = [dbo].[Home_team].id_team and [dbo].[General_Team_Info].team_name = @team and [dbo].[Home_team].id_match=[dbo].[Match].id_match
Union
select team_name, manager, date, goals_scored, fouls, yellow_cards, red_cards, possession, shots, shots_on_target
from [dbo].[General_Team_Info], [dbo].[Away_team], [dbo].[Match]
where [dbo].[General_Team_Info].id_team = [dbo].[Away_team].id_team and [dbo].[General_Team_Info].team_name = @team and [dbo].[Away_team].id_match=[dbo].[Match].id_match