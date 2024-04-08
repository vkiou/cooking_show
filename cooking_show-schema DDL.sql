drop database cooking_show;
create database cooking_show;
use cooking_show;
show create database cooking_show;

/*Create tables*/

create table cuisine_by_country(
cbc_id int(3) unsigned not null auto_increment PRIMARY KEY, 
country varchar(25) not null unique default 'Unknown',
image varbinary(20),
image_description varchar(50),
constraint valid_country check (country in('Albanian','Algerian','American','Arab','Argentine','Armenian','Austrian','Azerbaijani',
'Bahraini','Belarusian','Belgian','Bolivian','Bosnia and Herzegovina','Brazilian','British','Bulgarian','Canadian','Chinese','Colombian',
'Croatian','Cypriot','Czech','Dutch','Egyptian','Emirati','Estonian','Finnish','French','Georgian','German','Greek','Hungarian',
'Indian','Iranian','Iraqi','Israeli','Italian','Jamaican','Japanese','Jewish','Jordanian','Korean','Kuwaiti','Lebanese','Lithuanian',
'Macedonian','Mexican','Moldovan','Montenegrin','Moroccan','Omani','Pakistani','Palestinian','Peruvian','Polish','Portuguese','Romanian',
'Russian','Serbian','Slovak','Slovenian','Spanish','Sri Lankan','Swiss','Syrian','Tajik','Thai','Turkish','Ukrainian','Yemeni')) );

create table etiquette(
etiq_id int(6) unsigned not null auto_increment PRIMARY KEY, 
type_of_meal varchar(25) not null unique);

create table tip(
tip_id int(7) unsigned not null auto_increment PRIMARY KEY, 
description varchar(70) not null unique);

create table equipment(
equip_id int(4) unsigned not null auto_increment PRIMARY KEY, 
name varchar(30) not null unique, 
instructions varchar(100) not null,
image varbinary(20),
image_description varchar(50));

create table step(
step_id int(7) unsigned not null auto_increment PRIMARY KEY, 
description varchar(70) not null unique);

create table recipe_time(
rectim_id int(7) unsigned not null auto_increment PRIMARY KEY, 			/*Maybe i shouldn't have a separate table for cooking and preparing time
																		and i should just add them to the recipe table?*/
preparing_time int(4) not null default 0, 
cooking_time int(4) not null default 0,
constraint valid_preparing_time check (preparing_time>=0), 
constraint valid_cooking_time check (cooking_time>=0) );

create table ingridient_group(
ingrigr_id int(2) unsigned not null auto_increment PRIMARY KEY, 
name varchar(32) not null unique, 
description varchar(70) not null, 
image varbinary(20),
image_description varchar(50),
constraint valid_ingridient_group_name check (name in('spices and essential oils','coffee tea and their products','preserved foods','sweeteners',
'fats and oils','milk eggs and their products','meat and its products','fish and their products','cereals and their products',
'various foods of plant origin','products with sweeteners','various drinks')) );

create table ingridient(
ingri_id int(7) unsigned not null auto_increment PRIMARY KEY, 
ingrigr_id int(2) unsigned not null, 
quantity varchar(30) default null, 
unclear_quantity varchar(60) default null, 
calories_per_100_grams numeric(6,2) not null, 
image varbinary(20),
image_description varchar(50),
FOREIGN KEY (ingrigr_id) references ingridient_group(ingrigr_id) ON DELETE restrict ON UPDATE cascade);  /*Check that both quantity and unclear_quantity cannot be 
																														   null at the same time*/

create table nutritional_info(
nutin_id int(10) unsigned not null auto_increment PRIMARY KEY, 
grams_fat_per_serving numeric(6,2) not null default 0,
grams_protein_per_serving numeric(6,2) not null default 0, 
grams_carbohydrates_per_serving numeric(6,2) not null default 0, 
calorie_count numeric(7,2) not null,
constraint valid_grams_fat_per_serving check (grams_fat_per_serving>=0), 
constraint valid_grams_protein_per_serving check (grams_protein_per_serving>=0), 
constraint valid_grams_carbohydrates_per_serving check (grams_carbohydrates_per_serving>=0), 
constraint valid_calorie_count check (calorie_count>=0) );

create table thematic_section(
themsec_id int(3) unsigned not null auto_increment PRIMARY KEY, 
name varchar(50) not null unique, 
description varchar(150) not null,
image varbinary(20),
image_description varchar(50));

create table recipe(
recipe_id int(7) unsigned not null auto_increment PRIMARY KEY, 
recipe_type varchar(7) not null default 'cooking', 
difficulty_level int(1) not null default 1, 
name varchar(60) not null,                           /*unique? ex.Μπριζολα με πατατες στο φουρνο, Μπριζολα με τηγανητες πατατες*/
description varchar(150) not null, 
meal_type varchar(8) not null default 'lunch', 
ingri_id int(7) unsigned not null, 
rectim_id int(7) unsigned not null, 
cbc_id int(3) unsigned not null, 
nutin_id int(10) unsigned not null, 
portions int(2) not null default 1,
image varbinary(20),
image_description varchar(50),
FOREIGN KEY (ingri_id) references ingridient(ingri_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (rectim_id) references recipe_time(rectim_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (cbc_id) references cuisine_by_country(cbc_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (nutin_id) references nutritional_info(nutin_id) ON DELETE restrict ON UPDATE cascade, 
constraint valid_recipe_type check (recipe_type in ('cooking','pastry')), 
constraint valid_difficulty_level check (difficulty_level between 1 and 5),
constraint valid_meal_type check (meal_type in('breakfast','brunch','lunch','supper','dinner')), 
constraint valid_portions check (portions>=1) );

create table recipe_etiquette(
recipe_id int(7) unsigned not null, 
etiq_id int(10) unsigned not null, 
PRIMARY KEY(recipe_id, etiq_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (etiq_id) references etiquette(etiq_id) ON DELETE restrict ON UPDATE cascade);

create table recipe_tip(
recipe_id int(7) unsigned not null, 
tip_id int(7) unsigned not null, 
PRIMARY KEY(recipe_id, tip_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (tip_id) references tip(tip_id) ON DELETE restrict ON UPDATE cascade);

create table recipe_equipment(
recipe_id int(7) unsigned not null, 
equip_id int(4) unsigned not null,
PRIMARY KEY(recipe_id, equip_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (equip_id) references equipment(equip_id) ON DELETE restrict ON UPDATE cascade);

create table recipe_step(
recipe_id int(7) unsigned not null, 
step_id int(7) unsigned not null, 
PRIMARY KEY(recipe_id,step_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (step_id) references step(step_id) ON DELETE restrict ON UPDATE cascade);

create table recipe_thematic_section(
recipe_id int(7) unsigned not null, 
themsec_id int(3) unsigned not null,
PRIMARY KEY(recipe_id, themsec_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (themsec_id) references thematic_section(themsec_id) ON DELETE restrict ON UPDATE cascade);

create table recipe_nutritional_info(
recipe_id int(7) unsigned not null, 
nutin_id int(10) unsigned not null, 
PRIMARY KEY(recipe_id, nutin_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (nutin_id) references nutritional_info(nutin_id) ON DELETE restrict ON UPDATE cascade);

create table cook(
cook_id int(7) unsigned not null auto_increment PRIMARY KEY, 
first_name varchar(50) not null, 
last_name varchar(50) not null,
phone_number varchar(10) not null unique,                         /*maybe not?*/
date_of_birth date not null, 
age int(3) not null, 
years_of_experience int(3) not null default 0, 
cook_rank varchar(20) not null default 'third cook', 
image varbinary(20),
image_description varchar(50),
constraint valid_years_of_experience check (years_of_experience>=0), 
constraint valid_cook_rank check (cook_rank in('third cook','second cook','first cook','assistant chef','chef')) );

create table cook_specialization(
cook_id int(7) unsigned not null, 
cbc_id int(3) unsigned not null,
PRIMARY KEY (cook_id, cbc_id),
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (cbc_id) references cuisine_by_country(cbc_id) ON DELETE restrict ON UPDATE cascade);

/*create table judge(judge_id int(4) unsigned not null auto_increment PRIMARY KEY, cook_id int(7) unsigned not null, 
FOREIGN KEY (cook_id) references cook(cook_id), constraint valid_judge_score check(score between 1 and 5)); */

/*create table score(score_id int(10) unsigned not null auto_increment PRIMARY KEY, judge_id int(10) unsigned not null, cook_id int(7) unsigned not null, score int(1) not null,
FOREIGN KEY (judge_id) references judge(judge_id), FOREIGN KEY (cook_id) references cook(cook_id), constraint valid_score check(score between 1 and 5)); */

create table season(
season_number int(2) not null PRIMARY KEY, 
year_aired int(4) not null,
image varbinary(20),
image_description varchar(50),
constraint valid_season_nuber check (season_number>=1) );

create table episode( 
season_number int(2) not null,
episode_number int(2) not null, 
episode_winner int(7) not null,																		/*function with output the participant with max score*/
image varbinary(20),
image_description varchar(50),
PRIMARY KEY (season_number, episode_number),
FOREIGN KEY (season_number) references season(season_number) ON DELETE restrict ON UPDATE cascade,  
constraint valid_episode_number check (episode_number between 1 and 10) );

create table episode_cook_participant(
season_number int(2) not null,
episode_number int(2) not null, 
cook_id int(7) unsigned not null, 
recipe_id int(7) unsigned not null, 
cbc_id int(3) unsigned not null, 
total_score int(2) not null default 3,                                      /*function with parameters the 3 scores from the judges*/
PRIMARY KEY (season_number, episode_number, cook_id, cbc_id),               /*so that a recipe from the same cuisine(+the recipe itself) 
																			isn't used more than once during an episode*/
FOREIGN KEY (season_number, episode_number) references episode(season_number, episode_number) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (cbc_id) references cuisine_by_country(cbc_id) ON DELETE restrict ON UPDATE cascade,
constraint valid_total_score check (total_score between 3 and 15) );

create table episode_cook_judge(
season_number int(2) not null,
episode_number int(2) not null, 
cook_id int(7) unsigned not null, 
judge_score int(1) not null default 1,
PRIMARY KEY (season_number, episode_number, cook_id),
FOREIGN KEY (season_number, episode_number) references episode(season_number, episode_number) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade,
constraint valid_judge_score check (judge_score between 1 and 5) );

/* create table episode_winner(
season_number int(2) not null, 
episode_number int(2) not null,
cook_id int(7) unsigned not null,
PRIMARY KEY (season_number, episode_number, cook_id),
FOREIGN KEY (season_number, episode_number) references episode(season_number, episode_number) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade); */

/* create table episode_cook_score(episode_number int(4) unsigned not null, judge_id int(4) unsigned not null, cook_id int(7) unsigned not null, judge_score int(1) not null,
#PRIMARY KEY (episode_number, judge_id, cook_id),
#FOREIGN KEY (episode_number) references episdoe(episode_number), FOREIGN KEY (judge_id) references judge(judge_id), FOREIGN KEY (cook_id) references cook(cook_id)); */

/*Create indexes*/

create index idx_fk_ingrigr_id on ingridient(ingrigr_id);
create index idx_fk_ingri_id on recipe(ingri_id);
create index idx_fk_rectim_id on recipe(rectim_id);
create index idx_fk_cbc_id on recipe(cbc_id);
create index idx_fk_nutin_id on recipe(nutin_id);
create index idx_fk_recipe_id on recipe_etiquette(recipe_id);
create index idx_fk_etiq_id on recipe_etiquette(etiq_id);
create index idx_fk_recipe_id on recipe_tip(recipe_id);
create index idx_fk_tip_id on recipe_tip(tip_id);
create index idx_fk_recipe_id on recipe_equipment(recipe_id);
create index idx_fk_equip_id on recipe_equipment(equip_id);
create index idx_fk_recipe_id on recipe_step(recipe_id);
create index idx_fk_step_id on recipe_step(step_id);
create index idx_fk_recipe_id on recipe_thematic_section(recipe_id);
create index idx_fk_themsec_id on recipe_thematic_section(themsec_id);
create index idx_fk_recipe_id on recipe_nutritional_info(recipe_id);
create index idx_fk_nutin_id on recipe_nutritional_info(nutin_id);
create index idx_fk_cook_id on cook_specialization(cook_id);
create index idx_fk_cbc_id on cook_specialization(cbc_id);
create index idx_fk_season_number on episode(season_number);
create index idx_fk_episode_number on episode(episode_number);
create index idx_fk_season_number on episode_cook_participant(season_number);
create index idx_fk_episode_number on episode_cook_participant(episode_number);
create index idx_fk_cook_id on episode_cook_participant(cook_id);
create index idx_fk_recipe_id on episode_cook_participant(recipe_id);
create index idx_fk_cbc_id on episode_cook_participant(cbc_id);
create index idx_fk_season_number on episode_cook_judge(season_number);
create index idx_fk_episode_number on episode_cook_judge(episode_number);
create index idx_fk_cook_id on episode_cook_judge(cook_id);
/*create index idx_fk_season_number on episode_winner(season_number);
create index idx_fk_episode_number on episode_winner(episode_number);
create index idx_fk_cook_id on episode_winner(cook_id); */

																					/*Index columns frequently used to retrieve data
																					Do I need multicolumn indexes or unique indexes?*/

/*Create functions*/

/*functions for random cook participant and judges, total cooking time, recipe type(convert ingri_id to recipe type), calore count per serving, age*/
drop function total_cooking_time;
drop function cook_age;

delimiter $$

create function `total_cooking_time`(r_rectim_id int(7)) returns int(5)
begin

	declare r_pr_time int(4);
    declare r_co_time int(4);
	select preparing_time, cooking_time into r_pr_time, r_co_time from recipe_time rt where rt.rectim_id=r_rectim_id ;
    return r_pr_time+r_co_time;
    
end$$

delimiter $$
create function `cook_age`(r_cook_id date) returns double
begin

	declare r_date_of_birth date;
	select date_of_birth into r_date_of_birth from cook c where c.cook_id=r_cook_id;
    if cast(substring(current_date(),6,2) as double) < cast(substring(r_date_of_birth,6,2) as double)
		then return cast(substring(current_date(),1,4) as double) - cast(substring(r_date_of_birth,1,4) as double) - 1;
	end if;
    return cast(substring(current_date(),1,4) as double) - cast(substring(r_date_of_birth,1,4) as double);
    
end$$

delimiter $$
create function `recipe_type_from_ingridient_group`(r_ingrigr_id int(2)) returns varchar(30)
begin

	declare r_name varchar(30);
	select name into r_name from ingridient_group ingr where ingr.ingrigr_id=r_ingrigr_id;
    if r_name='spices and essential oils'
		then return 'spice and essential oil';
	end if;
    if r_name='coffee tea and their products'
		then return 'coffee or tea';
	end if;
    if r_name='preserved foods'
		then return 'preserved food';
	end if;
    if r_name='sweeteners'
		then return 'sweetener';
	end if;
    if r_name='fats and oils'
		then return 'fat or oil';
	end if;
    if r_name='milk eggs and their products'
		then return 'dairy or egg';
	end if;
    if r_name='meat and its products'
		then return 'meat';
	end if;
    if r_name='fish and their products'
		then return 'seafood';
	end if;
    if r_name='cereals and their products'
		then return 'cereal';
	end if;
    if r_name='various foods of plant origin'
		then return 'fruits and vegetables';
	end if;
    if r_name='products with sweeteners'
		then return 'product with sweeteners';
	end if;
    if r_name='various drinks'
		then return 'drink';
	end if;
    
end$$
delimiter ;

/*Create triggers*/

/*triggers for not having the same cook participant or judge more than 3 times in a row
e.g. after you insert a film, insert it to the film_info table, so that tou can retrieve its info without having to insert it to the film_info*/