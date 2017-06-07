/*
Таблица с информацией о выступлении команды во всех матчах,
 в которых она учавствовала, не зависимо от места проведения матча
 */
use EPL

select team_name, manager, goals_scored, fouls, yellow_cards, red_cards, possession, shots, shots_on_target
from [dbo].[General_Team_Info], [dbo].[Home_team]
where [dbo].[General_Team_Info].id_team = [dbo].[Home_team].id_team and [dbo].[General_Team_Info].team_name = 'Manchester United'
Union
select team_name, manager, goals_scored, fouls, yellow_cards, red_cards, possession, shots, shots_on_target
from [dbo].[General_Team_Info], [dbo].[Away_team]
where [dbo].[General_Team_Info].id_team = [dbo].[Away_team].id_team and [dbo].[General_Team_Info].team_name = 'Manchester United'