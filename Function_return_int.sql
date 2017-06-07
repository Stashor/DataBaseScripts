/*
Функция пересчитывающая количество очков команды, заработанных за сезон
*/

create function dbo.getPoints
(
@team varchar(40)
)
RETURNS int
as
begin
declare @x int, @y int, @z int

select @z=id_team
from [dbo].[General_Team_Info]
where [dbo].[General_Team_Info].team_name=@team

select @x=wins, @y=draws
from [dbo].[League_stats]
where [dbo].[League_stats].[id_team]=@z

return @x*3+@y
end