drop database cooking_show;
create database cooking_show;
use cooking_show;
show create database cooking_show;

/*Create tables*/
/*When i delete a tuple, the primary key with auto_increment value must return to the smallest next available number(maybe with update?)*/

create table cuisine_by_country(
cbc_id int(3) unsigned not null auto_increment, 
country varchar(25) not null unique,
image varbinary(20) unique,
image_description varchar(50) unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (cbc_id),
constraint valid_country check (country in('Albanian','Algerian','American','Arab','Argentine','Armenian','Austrian','Azerbaijani',
'Bahraini','Belarusian','Belgian','Bolivian','Bosnia and Herzegovina','Brazilian','British','Bulgarian','Canadian','Chinese','Colombian',
'Croatian','Cypriot','Czech','Dutch','Egyptian','Emirati','Estonian','Finnish','French','Georgian','German','Greek','Hungarian',
'Indian','Iranian','Iraqi','Israeli','Italian','Jamaican','Japanese','Jewish','Jordanian','Korean','Kuwaiti','Lebanese','Lithuanian',
'Macedonian','Mexican','Moldovan','Montenegrin','Moroccan','Omani','Pakistani','Palestinian','Peruvian','Polish','Portuguese','Romanian',
'Russian','Serbian','Slovak','Slovenian','Spanish','Sri Lankan','Swiss','Syrian','Tajik','Thai','Turkish','Ukrainian','Yemeni')) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table etiquette(
etiq_id int(6) unsigned not null auto_increment, 
type_of_meal varchar(25) not null unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (etiq_id) ) 
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table tip(
tip_id int(7) unsigned not null auto_increment, 
description varchar(70) not null unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (tip_id) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table equipment(
equip_id int(4) unsigned not null auto_increment, 
name varchar(30) not null unique, 
instructions varchar(100) not null,
image varbinary(20) unique,
image_description varchar(50) unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (equip_id) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*Maybe we dont need it, because we can just use a recipe_step table
with pk recipe_id and the order of the step*/
create table step(
step_id int(7) unsigned not null auto_increment, 
description varchar(70) not null unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (step_id) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table time(
time_id int(7) unsigned not null auto_increment,
preparing_time int(4) not null, 
cooking_time int(4) not null,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (time_id),
constraint valid_preparing_time check (preparing_time>=0), 
constraint valid_cooking_time check (cooking_time>=0) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table ingridient_group(
ingrigr_id int(2) unsigned not null auto_increment, 
name varchar(32) not null unique, 
description varchar(70) not null, 
image varbinary(20) unique,
image_description varchar(50) unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (ingrigr_id),
constraint valid_ingridient_group_name check (name in('spices and essential oils','coffee tea and their products','preserved foods','sweeteners',
'fats and oils','milk eggs and their products','meat and its products','fish and their products','cereals and their products',
'various foods of plant origin','products with sweeteners','various drinks')) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table ingridient(
ingri_id int(7) unsigned not null auto_increment, 
name varchar(50) not null unique,
ingrigr_id int(2) unsigned not null,  
calories_per_100_grams numeric(6,2) not null, 
image varbinary(20) unique,
image_description varchar(50) unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (ingri_id),
FOREIGN KEY (ingrigr_id) references ingridient_group(ingrigr_id) ON DELETE restrict ON UPDATE cascade) 
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci; 												                    
																														   
create table nutritional_info(
nutin_id int(10) unsigned not null auto_increment,
calorie_count int(4),                                  /*Will remove it, I just use it for my dummy values*/  
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (nutin_id) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table thematic_section(
themsec_id int(3) unsigned not null auto_increment, 
name varchar(50) not null unique, 
description varchar(150) not null,
image varbinary(20) unique,
image_description varchar(50) unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (themsec_id) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table meal_type(
mealtype_id int(2) unsigned not null auto_increment, 
name varchar(50) not null unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (mealtype_id) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table recipe(
recipe_id int(7) unsigned not null auto_increment, 
recipe_type varchar(7) not null, 
difficulty_level int(1) not null, 
name varchar(60) not null,
description varchar(150) not null, 
portions int(3) not null,
grams_fat_per_serving numeric(6,2) not null,
grams_protein_per_serving numeric(6,2) not null, 
grams_carbohydrates_per_serving numeric(6,2) not null, 
ingri_id int(7) unsigned not null, 
time_id int(7) unsigned not null, 
cbc_id int(3) unsigned not null, 
nutin_id int(10) unsigned not null,
image varbinary(20) unique,
image_description varchar(50) unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (recipe_id),
FOREIGN KEY (ingri_id) references ingridient(ingri_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (time_id) references time(time_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (cbc_id) references cuisine_by_country(cbc_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (nutin_id) references nutritional_info(nutin_id) ON DELETE restrict ON UPDATE cascade, 
constraint valid_recipe_type check (recipe_type in ('cooking','pastry')), #Will remove the #, just used for the dummy data
constraint valid_difficulty_level check (difficulty_level between 1 and 5),
constraint valid_grams_fat_per_serving check (grams_fat_per_serving>=0), 
constraint valid_grams_protein_per_serving check (grams_protein_per_serving>=0), 
constraint valid_grams_carbohydrates_per_serving check (grams_carbohydrates_per_serving>=0) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table recipe_etiquette(
recipe_id int(7) unsigned not null, 
etiq_id int(10) unsigned not null, 
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY(recipe_id, etiq_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (etiq_id) references etiquette(etiq_id) ON DELETE restrict ON UPDATE cascade)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table recipe_tip(
recipe_id int(7) unsigned not null, 
tip_id int(7) unsigned not null, 
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY(recipe_id, tip_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (tip_id) references tip(tip_id) ON DELETE restrict ON UPDATE cascade)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table recipe_equipment(
recipe_id int(7) unsigned not null, 
equip_id int(4) unsigned not null,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY(recipe_id, equip_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (equip_id) references equipment(equip_id) ON DELETE restrict ON UPDATE cascade)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table recipe_step(
recipe_id int(7) unsigned not null, 
step_id int(7) unsigned not null, 
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY(recipe_id,step_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (step_id) references step(step_id) ON DELETE restrict ON UPDATE cascade)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table recipe_thematic_section(
recipe_id int(7) unsigned not null, 
themsec_id int(3) unsigned not null,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY(recipe_id, themsec_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (themsec_id) references thematic_section(themsec_id) ON DELETE restrict ON UPDATE cascade)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table recipe_ingridient(
recipe_id int(7) unsigned not null, 
ingri_id int(10) unsigned not null, 
quantity int(4) default null,
quantity_type varchar(30) default null, 
unclear_quantity varchar(60) default null,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY(recipe_id, ingri_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (ingri_id) references ingridient(ingri_id) ON DELETE restrict ON UPDATE cascade,
constraint quantity_type check (quantity_type in('number','grams','mls','teaspoon','tablespoon','cup')) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table recipe_meal_type(
recipe_id int(7) unsigned not null, 
mealtype_id int(10) unsigned not null, 
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY(recipe_id, mealtype_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (mealtype_id) references meal_type(mealtype_id) ON DELETE restrict ON UPDATE cascade)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table cook(
cook_id int(7) unsigned not null auto_increment, 
first_name varchar(50) not null, 
last_name varchar(50) not null,
phone_number varchar(10) not null unique,                         /*maybe not?*/
date_of_birth date not null,  
years_of_experience int(3) not null, 
cook_rank varchar(20) not null, 
image varbinary(20) unique,
image_description varchar(50) unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (cook_id),
constraint valid_years_of_experience check (years_of_experience>=0), 
constraint valid_cook_rank check (cook_rank in('third cook','second cook','first cook','assistant chef','chef')) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table recipe_cook(
recipe_id int(7) unsigned not null, 
cook_id int(7) unsigned not null, 
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY(recipe_id,cook_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table cook_specialization(
cook_id int(7) unsigned not null, 
cbc_id int(3) unsigned not null,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (cook_id, cbc_id),
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (cbc_id) references cuisine_by_country(cbc_id) ON DELETE restrict ON UPDATE cascade)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table season(
season_number int(2) not null, 
image varbinary(20) unique,
image_description varchar(50) unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (season_number),
constraint valid_season_nuber check (season_number>=1) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table episode( 
season_number int(2) not null,
episode_number int(2) not null,
image varbinary(20) unique,
image_description varchar(50) unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (season_number, episode_number),
FOREIGN KEY (season_number) references season(season_number) ON DELETE restrict ON UPDATE cascade,  
constraint valid_episode_number check (episode_number between 1 and 10) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table episode_cook_participant(
ecp_id int(7) unsigned not null auto_increment,
season_number int(2) not null,
episode_number int(2) not null, 
cook_id int(7) unsigned not null, 
recipe_id int(7) unsigned not null, #will be picked by the function, so should i have an attribute for them?
cbc_id int(3) unsigned not null,    #will be picked by the function, so should i have an attribute for them?
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),                            
PRIMARY KEY (ecp_id),
FOREIGN KEY (season_number, episode_number) references episode(season_number, episode_number) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (cbc_id) references cuisine_by_country(cbc_id) ON DELETE restrict ON UPDATE cascade )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table episode_cook_judge(
season_number int(2) not null,
episode_number int(2) not null, 
cook_id int(7) unsigned not null, 
ecp_id int(7) unsigned not null,
judge_score int(1) not null,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (season_number, episode_number, cook_id),
FOREIGN KEY (season_number, episode_number) references episode(season_number, episode_number) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (ecp_id) references episode_cook_participant(ecp_id) ON DELETE restrict ON UPDATE cascade,
constraint valid_judge_score check (judge_score between 1 and 5) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


/*Create indexes*/
/* !!!!Index columns frequently used to retrieve data!!!!!
Do I need multicolumn indexes or unique indexes?*/


create index idx_fk_ingrigr_id on ingridient(ingrigr_id);
create index idx_fk_ingri_id on recipe(ingri_id);
create index idx_fk_time_id on recipe(time_id);
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
create index idx_fk_recipe_id on recipe_ingridient(recipe_id);
create index idx_fk_nutin_id on recipe_ingridient(ingri_id);
create index idx_fk_cook_id on cook_specialization(cook_id);
create index idx_fk_cbc_id on cook_specialization(cbc_id);
create index idx_fk_season_number on episode(season_number);
create index idx_fk_episode_and_season_number on episode_cook_participant(season_number,episode_number);
create index idx_fk_cook_id on episode_cook_participant(cook_id);
create index idx_fk_recipe_id on episode_cook_participant(recipe_id);
create index idx_fk_cbc_id on episode_cook_participant(cbc_id);
create index idx_fk_episode_and_season_number on episode_cook_judge(season_number,episode_number);
create index idx_fk_cook_id on episode_cook_judge(cook_id);
create index idx_fk_episode_cook_participant_id on episode_cook_judge(ecp_id);
																					

/*Create views*/


/*Create functions*/

/*functions for random cook participant and judges,cuisines and recipes, total cooking time, recipe type by special ingridient(convert ingri_id to recipe type),
calore count per serving, age, steps that should be done in a particular order, portions that are depended on the number of quantities of each ingridient?, 
thematic section?, total score for a player from the judges, episode winner*/

delimiter $$

create function `total_cooking_time`(r_time_id int(7)) returns int(5)
begin

	declare r_pr_time int(4);
    declare r_co_time int(4);
	select preparing_time, cooking_time into r_pr_time, r_co_time from recipe_time rt where rt.time_id=r_time_id ;
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

delimiter $$

/* create function `total_cooking_time`(r_time_id int(7)) returns int(5)
begin

	declare r_pr_time int(4);
    declare r_co_time int(4);
	select preparing_time, cooking_time into r_pr_time, r_co_time from recipe_time rt where rt.time_id=r_time_id ;
    return r_pr_time+r_co_time;
    
end$$ */

delimiter ;
/*Create triggers*/

/*triggers for not having the same cook participant or judge more than 3 times in a row
e.g. after you insert a film, insert it to the film_info table, so that tou can retrieve its info without having to insert it to the film_info*/
