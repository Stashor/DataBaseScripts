/*
Процедура обеспечивает трансфер между командами английской премьер лиги
Переход игрока в команду другой страны или на уровень ниже обрабатывается его удалением из БД
*/

create procedure transfer
@player varchar(50),
@team1 varchar(50),
@team2 varchar(50)
as
declare @x int, @y int
select @x=id_player
from [dbo].[Player] where name=@player
select @y=id_team
from [dbo].[General_Team_Info]
where [team_name]=@team2
delete from [dbo].[Match_Player]
where [dbo].[Match_Player].id_player=@x
update [dbo].[Player] set
id_team = @y,
goals = 0,
assists = 0,
red_cards = 0,
yellow_cards = 0,
rating = 0
where id_player=@x