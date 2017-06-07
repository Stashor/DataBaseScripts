use EPL
/*
�������� ���������� � �������
*/
CREATE TABLE General_Team_Info
(
	id_team int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	team_name varchar(40) NOT NULL,
	manager varchar(40) NOT NULL
);
/*
����� ���������� �������
*/
CREATE TABLE Gen_Stats
(
	id_team int FOREIGN KEY REFERENCES General_Team_Info(id_team),
	possession float,
	pass_success float,
	aerials_won float,
	yellow_cards int,
	red_cards int,
	rating float
);
/*
���������� �� ���� ������� � �������
*/
CREATE TABLE Def_Stats
(
	id_team int FOREIGN KEY REFERENCES General_Team_Info(id_team),
	goals_conceded float,
	shots_on_target float,
	shots_blocked float,
	tackles float,
	interseptions float,
	fouls float
);
/*
���������� �� ���� ������� � ���������
*/
CREATE TABLE Att_Stats
(
	id_team int FOREIGN KEY REFERENCES General_Team_Info(id_team),
	scored float,
	shots float,
	shots_on_target float,
	successful_dribbles float,
	ofsides float,
	combination_goals float,
	set_peace_goals float,
	penalty_goals float,
	counter_attack_goals float,
	own_goals float
);
/*
���������� ������� � ����
*/
CREATE TABLE League_stats
(
	id_team int FOREIGN KEY REFERENCES General_Team_Info(id_team),
	position int,
	wins int,
	draws int,
	losses int,
	goals_scored int,
	goals_conceded int,
	points int
);
/*
������ �������
*/
CREATE TABLE Player
(
	id_player int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	id_team int FOREIGN KEY REFERENCES General_Team_Info(id_team),
	name varchar(40),
	country varchar(40),
	height float,
	mass float,
	appearances int,
	goals int,
	assists int,
	red_cards int,
	yellow_cards int,
	rating float
)
/*
���� ���������� �����
*/
CREATE TABLE Match
(
	id_match int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	date Date
);
/*
���������� �������� ������� � �����
*/
CREATE TABLE Home_team
(
	id_team int FOREIGN KEY REFERENCES General_Team_Info(id_team),
	id_match int FOREIGN KEY REFERENCES Match(id_match),
	goals_scored int,
	fouls int,
	yellow_cards int,
	red_cards int,
	possession float,
	shots int,
	shots_on_target int
);
/*
���������� �������� ������� � �����
*/
CREATE TABLE Away_team
(
	id_team int FOREIGN KEY REFERENCES General_Team_Info(id_team),
	id_match int FOREIGN KEY REFERENCES Match(id_match),
	goals_scored int,
	fouls int,
	yellow_cards int,
	red_cards int,
	possession float,
	shots int,
	shots_on_target int
);
/*
����������� ������� ����� ������, �������������� � �����
*/
CREATE TABLE Match_Player
(
	id_player int FOREIGN KEY REFERENCES Player(id_player),
	id_match int FOREIGN KEY REFERENCES Match(id_match),
	goals int,
	assists int,
	yellow_cards int,
	red_cards int,
	aerials_won int,
	tackles int,
	interseptions int
);

