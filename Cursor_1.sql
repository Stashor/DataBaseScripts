/*
Скрипт с помощью курсора пробегает по таблице игроков и выбирает 
игроков одной страны или одной команды
*/

DECLARE  @name    VARCHAR(50),
         @country VARCHAR(50),
         @message VARCHAR(80)
PRINT 'Players of Manchester United:'
DECLARE player_cursor CURSOR LOCAL FOR
    SELECT [name], [country]
    FROM [dbo].[Player]
    WHERE [id_team]=1
OPEN player_cursor
FETCH NEXT FROM player_cursor INTO @name, @country 
WHILE @@FETCH_STATUS=0
BEGIN
    SELECT @message=@name + ' from ' + @country
    PRINT @message
    FETCH NEXT FROM player_cursor INTO @name, @country
END
CLOSE player_cursor
DEALLOCATE player_cursor