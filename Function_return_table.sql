/*
Функция возвращающая состав команды и статистики всех ее игроков
*/

CREATE FUNCTION dbo.Team_players 
(
@team varchar(40)
)
RETURNS table
AS
return
(
select  [name], [country], [goals], [assists], [rating]
from [dbo].[Player]
where [id_team]=(
select id_team
from [dbo].[General_Team_Info]
where [dbo].[General_Team_Info].team_name=@team
)
)