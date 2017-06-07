/*
Если статистика игрока изменилась, значит должна измениться и статистика команды
количество голов за сезон и подобное
Тригер срабатывает на uppdate таблицы Player и пересчитывает статистику команды,
за которую он играет
*/

Create trigger on_update
on [dbo].[Player]
for update
as
if @@ROWCOUNT=1
begin
Declare @y int, @x int, @z int, @s int
select @y=id_team from inserted
select @x=sum(goals), @z=sum(yellow_cards), @s=SUM(red_cards) from [dbo].[Player] where id_team=@y
Update [dbo].[League_stats] set 
goals_scored=@x
Update [dbo].[Gen_Stats] set
[yellow_cards]=@z,
[red_cards]=@s
where id_team=@y
end