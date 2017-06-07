/*
Процедура сравнивает игру команды дома и на выезде
на основе подсчета с помощью двух курсоров голов
*/

Create procedure Goals_Home_Away
@team varchar(50)
as
Print @team + ' goals'
declare @x int, @Home_Goals int, @Away_Goals int, @y int
select @x=id_team from [dbo].[General_Team_Info] where [team_name]=@team
DECLARE cur_home CURSOR FOR SELECT [goals_scored] FROM [dbo].[Home_team];
DECLARE cur_away CURSOR FOR SELECT [goals_scored] FROM [dbo].[Away_team];
set @Home_Goals=0
open cur_home
FETCH NEXT FROM cur_home INTO @y 
WHILE @@FETCH_STATUS=0
BEGIN
    SELECT @Home_Goals=@Home_Goals+@y
    FETCH NEXT FROM cur_home INTO @y
END
print 'At home:' + convert(varchar(10), @Home_Goals)
close cur_home
DEALLOCATE cur_home

set @Away_Goals=0
open cur_away
FETCH NEXT FROM cur_Away INTO @y 
WHILE @@FETCH_STATUS=0
BEGIN
    SELECT @Away_Goals=@Away_Goals+@y
    FETCH NEXT FROM cur_away INTO @y
END
print 'At away ' + convert(varchar(10), @Away_Goals)
close cur_away
DEALLOCATE cur_away