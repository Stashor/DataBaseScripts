CREATE FUNCTION dbo.Team_players 
(
@team varchar(40)
)
RETURNS table
AS
BEGIN

declare @x int

select @x=id_team
from [dbo].[General_Team_Info]
where [dbo].[General_Team_Info].team_name=@team

return
(
select  [name], [country], [goals], [assists], [rating]
from [dbo].[Player]
where [id_team]=@team
)

END