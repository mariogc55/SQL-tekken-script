CREATE TABLE selecting_stage(
stage_name varchar(40),
stage_id int(18),
constraint pk_selecting_stage PRIMARY KEY(stage_id)
);

CREATE TABLE mp_stats(
user_name varchar(20),
top_stats Varchar(20),
tekken_power bigint,
area varchar(20),
numero_victorias bigint,
racha_victorias bigint,
constraint pk_user_name PRIMARY KEY(user_name)
);

CREATE TABLE start_fight(
user_name varchar(20),
fighter_position boolean,
fighter_name varchar(15),
stage_id int(18),

constraint pk_fighter_name PRIMARY KEY(fighter_name),
constraint fk_start_fight_stage foreign key(stage_id) REFERENCES selecting_stage(stage_id),
constraint fk_start_fight_stats foreign key(user_name) REFERENCES mp_stats(user_name)
);

CREATE TABLE fighter(
fighter_name varchar(15),
fighting_style varchar(100),
nationality varchar(40),
height bigint,
weight bigint,
constraint pk_fighter_name PRIMARY KEY(fighter_name),
constraint fk_fighter_name_start foreign key(fighter_name) REFERENCES start_fight(fighter_name)
);

CREATE TABLE winner(
user_name varchar(20),
winner tinyint(5),
daño_combo int(200),
daño_total int(200),
top_stats varchar(20),
tekken_power bigint,
numero_victorias bigint,
racha_victorias bigint,
constraint pk_winner PRIMARY KEY(winner),
constraint fk_winner foreign key(user_name) REFERENCES mp_stats(user_name)
);

select * from fighter;
SET foreign_key_checks = 0;
-- Inserta los datos
INSERT INTO fighter values("Claudio","Sirius Exorcist Arts","Italy",180,80);
INSERT INTO fighter values("Zafina","Ancient Assassination Arts","unknown",169,54);
INSERT INTO fighter values("Paul","Integrated Martial Arts Based on Judo","United States",187,95);
INSERT INTO fighter values("Raven","Ninjutsu","unknown",184,79);
INSERT INTO fighter values("Victor","Super Spy SQB","France",188,82);
INSERT INTO fighter values("Reina","unknown","unknown",162,51);
INSERT INTO fighter values("Azucena","Mixed Martial Arts(striker)","Peru",171,61);
INSERT INTO fighter values("Shaheen","Close Quarters Combat","Saudi Arabia",185,80);
INSERT INTO fighter values("Law","Martial Arts","United States",179,80);
INSERT INTO fighter values("Leroy","Wing Chun","United States",187,77);
INSERT INTO fighter values("Leo","Baji Quan","Germany",178,58);
INSERT INTO fighter values("Yoshimitsu","Advanced Manji Ninjutsu","None(formerly Japan)",178,67);
INSERT INTO fighter values("Feng","Taijiquan","China",190,83);
INSERT INTO fighter values("Hwoarang","Taekwondo","South Korea",184,80);
INSERT INTO fighter values("Nina","Assasination Arts","Ireland",168,56);
INSERT INTO fighter values("Kazuya","Mishima-Style Fighting Karate","None(relinquished japanese nationality)",181,85);
INSERT INTO fighter values("Jin","Karate","Japan",183,87);
INSERT INTO fighter values("Xiaoyu","Baguazhang,Piguazhang-Based Chinese Martial Arts","china",159,49);
INSERT INTO fighter values("Lee","Martial Arts","Japan",178,72);
INSERT INTO fighter values("Asuka","Kazama-Style Traditional Martial Arts","Japan",167,57);
INSERT INTO fighter values("Panda","Heihachi-Style Advanced Kuma Shin Ken","None",277,320);
INSERT INTO fighter values("Kuma","Heihachi-Style Advanced Kuma Shin Ken","None",280,360);
INSERT INTO fighter values("Lili","Self-Taught Style","Monaco",180,66);
INSERT INTO fighter values("Alisa","Thruster-Based High-Mobility Fighting Style","Russia",165,60);
INSERT INTO fighter values("Lars","Tekken Force Martial Arts","Sweden",180,85);
INSERT INTO fighter values("Jun","Kazama-Style Traditional Martial Arts","Japan",170,57);
INSERT INTO fighter values("Devil Jin","Unknown","None","0","0");
INSERT INTO fighter values("jack-8","Brute Force","Unknown",225,400);
INSERT INTO fighter values("King","Pro Wresting","Mexico",200,147);
INSERT INTO fighter values("Steve","Boxing","United Kingdom",184,72);
INSERT INTO fighter values("Dragunov","Commando Sambo","Russia",192,98);
INSERT INTO fighter values("Bryan","Kickboxing","United States",186,87);
-- 32 personajes
-- Habilita la restricción de clave foránea
SET foreign_key_checks = 1;
select * from fighter;

select * from mp_stats;
SET foreign_key_checks = 0;
-- Inserta los datos
INSERT INTO mp_stats values("Delta123","Peso pesado",125547,"Europa 1",21,4);
INSERT INTO mp_stats values("Jhon47","Abrumador",1872413,"America 1",41,4);
INSERT INTO mp_stats values("Fighter_master12","Agresivo",211354,"Europa 1",82,12);
INSERT INTO mp_stats values("伟大的老师","Abrumador",194521,"Asia",75,8);
INSERT INTO mp_stats values("EpicPlayer12","Agitador",175642,"Europa 1",36,6);

-- Habilita la restricción de clave foránea
SET foreign_key_checks = 1;
select * from mp_stats;

select * from selecting_stage;
SET foreign_key_checks = 0;
-- Inserta los datos
INSERT INTO selecting_stage values("Arena",0);
INSERT INTO selecting_stage values("Arena(Underground)",1);
INSERT INTO selecting_stage values("Urban Square(Evening)",3);
INSERT INTO selecting_stage values("Urban Square",4);
INSERT INTO selecting_stage values("Yakushima",5);
INSERT INTO selecting_stage values("Coliseum of fate",6);
INSERT INTO selecting_stage values("Rebel hangar",7);
INSERT INTO selecting_stage values("Fallen Destiny",8);
INSERT INTO selecting_stage values("Descend into subconcious",9);
INSERT INTO selecting_stage values("Sanctum",10);
INSERT INTO selecting_stage values("Into the stratosphere",11);
INSERT INTO selecting_stage values("Ortiz Farm",12);
INSERT INTO selecting_stage values("Celebration on the seine",13);
INSERT INTO selecting_stage values("secluded Training Ground",14);
INSERT INTO selecting_stage values("Elegant Palace",15);
INSERT INTO selecting_stage values("Midnight Siege",16);
INSERT INTO selecting_stage values("Random Stage",17);
-- Habilita la restricción de clave foránea
SET foreign_key_checks = 1;
select * from selecting_stage;

Select * from start_fight;
SET foreign_key_checks = 0;
-- Inserta los datos
INSERT INTO start_fight values("Delta123",0,"Law",12);
INSERT INTO start_fight values("Jhon47",1,"Kuma",12);
INSERT INTO start_fight values("Fighter_master12",0,"Yoshimitsu",3);
INSERT INTO start_fight values("伟大的老师",1,"Paul",3);
INSERT INTO start_fight values("EpicPlayer12",1,"Jin",7);
-- Habilita la restricción de clave foránea
SET foreign_key_checks = 1;
select * from start_fight;

Select * from winner;
SET foreign_key_checks = 0;
-- Inserta los datos
INSERT INTO winner values("Delta123",0,125,200,"Peso pesado",125547,21,4);
INSERT INTO winner values("Jhon47",1,64,125,"Abrumador",1872413,41,4);
INSERT INTO winner values("Fighter_master12",2,110,120,"Agresivo",211354,82,12);
INSERT INTO winner values("伟大的老师",3,145,200,"Abrumador",194521,75,8);
INSERT INTO winner values("EpicPlayer12",4,125,145,"Agitador",175642,36,6);

-- Habilita la restricción de clave foránea
SET foreign_key_checks = 1;
select * from winner;
