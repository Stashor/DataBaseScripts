 use EPL
/*
заполнение информации о командах АПЛ
*/
insert into dbo.General_Team_Info(team_name, manager) values
('Manchester United', 'Jose Mourinho'),
('Manchester City', 'Pep Guardiola'),
('Arsenal', 'Arsene Wenger'),
('Chelsea', 'Antonio Konte'),
('Liverpool', 'Jurgen Klopp'),
('Totanham Hotsuprs', 'Mauricio Pochetino');
/*
их статистика в лиге
*/
insert into dbo.League_stats values
(1, 6, 17, 14, 5, 52, 29, 65),
(2, 4, 21, 9, 6, 72, 38, 72),
(3, 5, 21, 6, 9, 72, 43, 69),
(4, 1, 28, 3, 5, 76, 29, 87), 
(5, 3, 21, 10, 6, 75, 42, 73),
(6, 2, 24, 8, 4, 73, 24, 80);

/*
игровая статистика команды Манчестер Юнайтед
*/
insert into dbo.Def_Stats values
(1, 0.5, 5.4, 3.5, 8.9, 4.4, 6.7)

insert into dbo.Att_Stats values
(1, 1.5, 11.5, 7.6, 4.5, 4.5, 0.7, 0.4, 0.1, 1.2, 0)

insert into dbo.Gen_Stats values
(1, 63.45, 93.7, 9.3, 3, 0, 7.01)

/*
Заполнение информации о нескольких игроках Манчестер Юнайтед
*/
insert into dbo.Player(id_team, name, country, height, mass, appearances, goals, assists, red_cards, yellow_cards, rating) values
(1, 'Paul Pogba', 'France', 191, 79, 28, 4, 0, 7, 3, 7.71),
(1, 'Zlatan Ibrahimovic', 'Sweden', 195, 95, 27, 17, 5, 0, 7, 7.41),
(1, 'Ander Herrera', 'Spain', 182, 70, 27, 1, 3, 0, 5, 7.39),
(1, 'Henrikh Mkhitaryan', 'Armenia', 177, 75, 14, 4, 1, 0, 1, 6.94),
(1, 'Wayne Rooney', 'England', 176, 83, 13, 5, 5, 0, 8, 6.81);
/*
информация о матче между Манчестер Юнайтед и Челси,
включает в себя информацию о выступлении команд в матче
*/
insert into dbo.Match(date) values
('2017-04-16')

insert into dbo.Home_team values
(1, 1, 2, 5, 4, 0, 53.7, 9, 6)

insert into dbo.Away_team values
(4, 1, 0, 9, 3, 0, 46.3, 5, 0)

/*
Статистика нескольких игроков Манчестер Юнайтед учавствовавших в матче
Поль Погба
Златан Ибрагимович
Андер Эррера
Уэйн Руни
*/
insert into dbo.Match_Player values
(1, 1, 0, 1, 0, 0, 5, 8, 2),
(2, 1, 1, 1, 1, 0, 7, 2, 0),
(3, 1, 0, 0, 0, 0, 3, 2, 1),
(5, 1, 1, 0, 0, 0, 5, 3, 2);
