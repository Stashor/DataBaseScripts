/*
��� �������� ������� Match ��������� ������� ������� ��������� � ���� ������
������ ������� ������� �� ����������� �������� � �������� ������, � ��� �� ���� ������� �������������� � �����
*/
create trigger before_delete
on [dbo].[Match]
for delete
as 
if @@rowcount=1
begin
declare @x int
select @x=id_match from deleted
delete from [dbo].[Home_team] where id_match = @x
delete from [dbo].[Away_team] where id_match = @x
delete from [dbo].[Match_Player] where id_match = @x
End
