create database cooking_show;
use cooking_show;
show create database cooking_show;

create table cuisine_by_country(cbc_id int(10) unsigned not null auto_increment PRIMARY KEY, country varchar(25) not null, 
constraint valid_country check(country in('Azerbaijani','Egyptian','Albanian','Algerian','American','Arab','Argentinian','Armenian','Austrian','Belgian','Bolivian',
'Belgian','Bolivian','Bosnia and Herzegovina','Bulgarian','Brazilian','British','French','German','Georgian','Jewish','Swiss','Greek','Estonian','Emirati','Japanese',
'Indian','Jordanian','Iraqi','Iranian','Spanish','Israeli','Italian','Canadian','Chinese','Colombian','Korean','Kuwaiti','Sri Lankan','Croatian','Cypriot','Belarusian',
'Lebanese','Lithuanian','Moroccan','Montenegrin','Mexican','Moldovan','Bahraini','Dutch','Omani','Hungarian','Ukrainian','Pakistani','Palestinian','Macedonian','Peruvian',
'Polish','Portuguese','Romanian','Russian','Serbian','Slovak','Slovenian','Syrian','Thai','Tajik','Jamaican','Turkish','Czech','Yemeni','Finnish')) );

create table etiquette(etiq_id int(10) unsigned not null auto_increment PRIMARY KEY, type_of_meal varchar(25) not null);

create table tip(tip_id int(10) unsigned not null auto_increment PRIMARY KEY, tip_description varchar(70) not null);

create table equipment(equip_id int(10) unsigned not null auto_increment PRIMARY KEY, equipment_type varchar(30) not null, instructions varchar(100) not null);

create table step(step_id int(10) unsigned not null auto_increment PRIMARY KEY, step_description varchar(70) not null);

create table recipe_time(rectim_id int(10) unsigned not null auto_increment PRIMARY KEY, preparing_time int(3) not null, cooking_time int(3) not null, 
total_time int(4) not null
constraint valid_preparing_time check(preparing_time>0), constraint valid_cooking_time check(cooking_time>0), 
constraint valid_total_time check(total_time=preparing_time+cooking_time));

create table ingridient_group(ingrigr_id int(2) unsigned not null auto_increment PRIMARY KEY, ingrigr_name varchar(40) not null, ingrigr_description varchar(70) not null, 
constraint valid_ingridient_group_name check (ingrigr_name in('spices and essential oils','coffee tea and their products','preserved foods','sweeteners','fats and oils',
'milk eggs and their products','meat and its products','fish and their products','cereals and their products','various foods of plant origin','products with sweeteners',
'various drinks')));

create table ingridient(ingri_id int(10) unsigned not null auto_increment PRIMARY KEY, ingrigr_id int(2) unsigned not null, quantity varchar(30), 
unclear_quantity varchar(50), calories_per_100_grams numeric(6,2) not null, 
FOREIGN KEY (ingrigr_id) references ingridient_group(ingrigr_id) ON DELETE restrict ON UPDATE cascade);

create table nutritional_info(nutin_id int(10) unsigned not null auto_increment PRIMARY KEY, grams_fat_per_serving numeric(6,2) not null,
grams_protein_per_serving numeric(6,2) not null, grams_carbohydrates_per_serving numeric(6,2) not null, calorie_count numeric(7,2) not null
constraint valid_grams_fat_per_serving check(grams_fat_per_serving>=0), constraint valid_grams_protein_per_serving check(grams_protein_per_serving>=0), 
constraint valid_grams_carbohydrates_per_serving check(grams_carbohydrates_per_serving>=0),constraint valid_calorie_count check(calorie_count>=0));

create table thematic_section(themsec_id int(10) unsigned not null auto_increment PRIMARY KEY, thematic_name varchar(50) not null, thematic_description varchar(150) not null);

create table recipe(recipe_id int(10) unsigned not null auto_increment PRIMARY KEY, recipe_type varchar(7) not null, difficulty_level int(1) not null, 
recipe_name varchar(50) not null, recipe_description varchar(150) not null, meal_type varchar(8) not null, ingri_id int(10) unsigned not null, 
rectim_id int(10) unsigned not null, cbc_id int(10) unsigned not null, nutin_id int(10) unsigned not null, portions int(3) not null,
FOREIGN KEY (ingri_id) references ingridient(ingri_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (rectim_id) references recipe_time(rectim_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (cbc_id) references cuisine_by_country(cbc_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (nutin_id) references nutritional_info(nutin_id) ON DELETE restrict ON UPDATE cascade, 
constraint valid_recipe_type check(recipe_type in ('cooking','pastry')), constraint valid_difficulty_level check(difficulty_level between 1 and 5),
constraint valid_meal_type check(meal_type in('breakfast','brunch','lunch','supper','dinner')), constraint valid_portions check(portions>=0));

create table recipe_etiquette(recipe_id int(10) unsigned not null, etiq_id int(10) unsigned not null, 
PRIMARY KEY(recipe_id, etiq_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (etiq_id) references etiquette(etiq_id) ON DELETE restrict ON UPDATE cascade);

create table recipe_tip(recipe_id int(10) unsigned not null, tip_id int(10) unsigned not null, 
PRIMARY KEY(recipe_id, tip_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (tip_id) references tip(tip_id) ON DELETE restrict ON UPDATE cascade);

create table recipe_equipment(recipe_id int(10) unsigned not null, equip_id int(10) unsigned not null,
PRIMARY KEY(recipe_id, equip_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (equip_id) references equipment(equip_id) ON DELETE restrict ON UPDATE cascade);

create table recipe_step(recipe_id int(10) unsigned not null, step_id int(10) unsigned not null, 
PRIMARY KEY(recipe_id,step_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (step_id) references step(step_id) ON DELETE restrict ON UPDATE cascade);

create table recipe_thematic_section(recipe_id int(10) unsigned not null, themsec_id int(10) unsigned not null,
PRIMARY KEY(recipe_id, themsec_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (themsec_id) references thematic_section(themsec_id) ON DELETE restrict ON UPDATE cascade);

create table recipe_nutritional_info(recipe_id int(10) unsigned not null, nutin_id int(10) unsigned not null, 
PRIMARY KEY(recipe_id, nutin_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (nutin_id) references nutritional_info(nutin_id) ON DELETE restrict ON UPDATE cascade);

create table cook(cook_id int(10) unsigned not null auto_increment PRIMARY KEY, first_name varchar(50) not null, last_name varchar(50) not null,
phone_number varchar(10) not null, date_of_birth date not null, age int(3) not null, years_of_experience int(3) not null, cook_rank varchar(20) not null, 
constraint valid_years_of_experience check(year_of_experience>=0), 
constraint valid_cook_rank check(cook_rank in('third cook','second cook','first cook','assistant chef','chef')) );

create table cook_specialization(cook_id int(10) unsigned not null, cbc_id int(10) unsigned not null,
PRIMARY KEY (cook_id, cbc_id),
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (cbc_id) references cuisine_by_country(cbc_id) ON DELETE restrict ON UPDATE cascade);

#create table judge(judge_id int(4) unsigned not null auto_increment PRIMARY KEY, cook_id int(10) unsigned not null, 
#FOREIGN KEY (cook_id) references cook(cook_id), constraint valid_judge_score check(score between 1 and 5));

create table winner(winner_id int(4) unsigned not null auto_increment PRIMARY KEY, cook_id int(10) unsigned not null, 
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade);

#create table score(score_id int(10) unsigned not null auto_increment PRIMARY KEY, judge_id int(10) unsigned not null, cook_id int(10) unsigned not null, score int(1) not null,
#FOREIGN KEY (judge_id) references judge(judge_id), FOREIGN KEY (cook_id) references cook(cook_id), constraint valid_score check(score between 1 and 5));

create table season(season_number int(2) not null PRIMARY KEY, year_aired int(4) not null,
constraint valid_season_nuber check(season_number>0));

create table episode(episode_id int(10) unsigned not null auto_increment PRIMARY KEY, episode_number int(2) not null, season_number int(2) not null, 
winner_id int(10) unsigned not null, 
FOREIGN KEY (season_number) references season(season_number) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (winner_id) references winner(winner_id) ON DELETE restrict ON UPDATE cascade, 
constraint valid_episode_number check(episode_number between 1 and 10));

create table episode_cook_participant(episode_id int(10) unsigned not null, cook_id int(4) unsigned not null, recipe_id int(10) unsigned not null, 
cbc_id int(10) unsigned not null, total_score int(2) unsigned not null, 
PRIMARY KEY (episode_id, cook_id),
FOREIGN KEY (episode_id) references episode(episode_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (cbc_id) references cuisine_by_country(cbc_id) ON DELETE restrict ON UPDATE cascade);

create table episode_cook_judge(episode_id int(10) unsigned not null, cook_id int(4) unsigned not null, judge_score int(1) not null,
PRIMARY KEY (episode_id, cook_id),
FOREIGN KEY (episode_id) references episode(episode_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade,
constraint valid_judge_score check(judge_score between 1 and 5));

#create table episode_cook_score(episode_id int(10) unsigned not null, judge_id int(4) unsigned not null, cook_id int(4) unsigned not null, judge_score int(1) not null,
#PRIMARY KEY (episode_id, judge_id, cook_id),
#FOREIGN KEY (episode_id) references episdoe(episode_id), FOREIGN KEY (judge_id) references judge(judge_id), FOREIGN KEY (cook_id) references cook(cook_id));

insert into cuisine_by_country(country) values('Azerbaijani'),('Egyptian'),('Albanian'),('Algerian'),('American'),('Arab'),('Argentinian'),('Armenian'),('Austrian'),
('Belgian'),('Bolivian'),('Belgian'),('Bolivian'),('Bosnia and Herzegovina'),('Bulgarian'),('Brazilian'),('British'),('French'),('German'),('Georgian'),('Jewish'),('Swiss'),
('Greek'),('Estonian'),('Emirati'),('Japanese'),('Indian'),('Jordanian'),('Iraqi'),('Iranian'),('Spanish'),('Israeli'),('Italian'),('Canadian'),('Chinese'),('Colombian'),
('Korean'),('Kuwaiti'),('Sri Lankan'),('Croatian'),('Cypriot'),('Belarusian'),('Lebanese'),('Lithuanian'),('Moroccan'),('Montenegrin'),('Mexican'),('Moldovan'),('Bahraini'),
('Dutch'),('Omani'),('Hungarian'),('Ukrainian'),('Pakistani'),('Palestinian'),('Macedonian'),('Peruvian'),('Polish'),('Portuguese'),('Romanian'),('Russian'),('Serbian'),
('Slovak'),('Slovenian'),('Syrian'),('Thai'),('Tajik'),('Jamaican'),('Turkish'),('Czech'),('Yemeni'),('Finnish');

insert into ingridient_group(ingrigr_name, ingrigr_description) values ('spices and essential oils',''),('coffee tea and their products',''),('preserved foods',''),
('sweeteners',''),('fats and oils',''),('milk eggs and their products',''),('meat and its products',''),('fish and their products',''),('cereals and their products',''),
('various foods of plant origin',''),('products with sweeteners',''),('various drinks','');

select * from cuisine_by_country;
select * from ingridient_group;







drop database cooking_show;