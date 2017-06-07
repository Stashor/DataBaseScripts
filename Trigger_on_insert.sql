/*
Тригер на добавление новых значений в таблицу об учавствовавших в матче игроках,
который пересчитывает показатели игрока в течение сезона
*/

create trigger after_insert
on [dbo].[Match_Player]
after insert
as 
if @@rowcount=1
begin
declare @y int, @x int, @z int, @f int, @g int
select @y=id_player, @x=goals, @z=assists, @f=[yellow_cards], @g=[red_cards] from inserted
update [dbo].[Player] set 
[appearances] = [appearances]+1,
[goals]=[goals]+@x,
[assists]=[assists]+@z,
[yellow_cards]=[yellow_cards]+@f,
[red_cards]=[red_cards]+@g 
where  [id_player] = @y
End
