/*
Выводи таблицу премьер лиги с названиями команд и их результатами
*/
create procedure EPL_table
as
select [position], [team_name], [wins], [draws], [losses], [goals_scored], [goals_conceded], [points]
from [dbo].[General_Team_Info], [dbo].[League_stats]
where [dbo].[General_Team_Info].[id_team] = [dbo].[League_stats].[id_team]
order by [position]