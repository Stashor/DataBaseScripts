/*
� ������ ��������� ������� ������� �� ��� �������, ��������� ������� ���������� � ���,
��� �� ������ ������� � ��� ������� ��������� � ���
(��� ����������� � ������ ���� ��� �� ������, ��� ��� �� ��� ������� �������)
*/

delete from [dbo].[Match_Player]
where [dbo].[Match_Player].id_player = (select id_player from [dbo].[Player] where [dbo].[Player].name = 'Ryan Giggs')

delete from [dbo].[Player]
where [dbo].[Player].name = 'Ryan Giggs'