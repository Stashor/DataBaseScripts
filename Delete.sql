/*
В случае окончания игроком карьеры ил его продажи, требуется удалить информацию о нем,
как об игроке команды и все таблицы связанные с ним
(его выступления в матчах роли уже не играют, так как он уже покинул команду)
*/

delete from [dbo].[Match_Player]
where [dbo].[Match_Player].id_player = (select id_player from [dbo].[Player] where [dbo].[Player].name = 'Ryan Giggs')

delete from [dbo].[Player]
where [dbo].[Player].name = 'Ryan Giggs'