Create procedure sum_goals
@id_team int,
@sum int output
as
select @sum=sum(goals)
from [dbo].[Player]
where [dbo].[Player].id_team=@id_team