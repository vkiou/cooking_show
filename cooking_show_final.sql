drop database cooking_show;
create database cooking_show;
use cooking_show;
show create database cooking_show;

/*Create tables*/
/*When i delete a tuple, the primary key with auto_increment value must return to the smallest next available number*/

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
'Indian','Iranian','Iraqi','Irish','Israeli','Italian','Jamaican','Japanese','Jewish','Jordanian','Korean','Kuwaiti','Lebanese','Lithuanian',
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
description varchar(200) not null unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (tip_id) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table equipment(
equip_id int(4) unsigned not null auto_increment, 
name varchar(30) not null unique, 
instructions varchar(250) not null,
image varbinary(20) unique,
image_description varchar(50) unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (equip_id) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table step(
step_id int(7) unsigned not null auto_increment, 
description varchar(750) not null unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (step_id) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table time(
time_id int(7) unsigned not null auto_increment,
preparing_time int(4) not null, 
cooking_time int(4) not null, -- TOTAL TIME???
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
description varchar(250), 
portions int(3) not null,
grams_fat_per_serving numeric(6,2) not null,
grams_protein_per_serving numeric(6,2) not null, 
grams_carbohydrates_per_serving numeric(6,2) not null, 
ingri_id int(7) unsigned not null, 
time_id int(7) unsigned not null, 
cbc_id int(3) unsigned not null, 
image varbinary(20) unique,
image_description varchar(50) unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (recipe_id),
FOREIGN KEY (ingri_id) references ingridient(ingri_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (time_id) references time(time_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (cbc_id) references cuisine_by_country(cbc_id) ON DELETE restrict ON UPDATE cascade,
#FOREIGN KEY (nutin_id) references nutritional_info(nutin_id) ON DELETE restrict ON UPDATE cascade, 
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
step_order int(3) not null,
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
quantity numeric(6,2) default null,
quantity_type varchar(30) default null, 
unclear_quantity varchar(60) default null,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY(recipe_id, ingri_id),
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (ingri_id) references ingridient(ingri_id) ON DELETE restrict ON UPDATE cascade,
constraint quantity_type check (quantity_type in('number','grams','lb','oz','mls','teaspoon','tablespoon','cup')) )
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
phone_number varchar(10) not null unique,                        
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


create table cook_specialization(
cook_id int(7) unsigned not null, 
cbc_id int(3) unsigned not null,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (cook_id, cbc_id),
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (cbc_id) references cuisine_by_country(cbc_id) ON DELETE restrict ON UPDATE cascade)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table season(
season_id int(7) unsigned not null auto_increment,
season_number int(2) not null, 
year int(4) not null,
image varbinary(20) unique,
image_description varchar(50) unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (season_id),
constraint valid_season_nuber check (season_number>=1) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table episode( 
episode_id int(7) unsigned not null auto_increment,
episode_number int(2) not null,
season_id int(7) unsigned not null,
image varbinary(20) unique,
image_description varchar(50) unique,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (episode_id),
FOREIGN KEY (season_id) references season(season_id) ON DELETE restrict ON UPDATE cascade,
constraint valid_episode_number check (episode_number between 1 and 10) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


create table episode_cook_participant(
ecp_id int(7) unsigned not null auto_increment,
episode_id int(7) unsigned not null,
cook_id int(7) unsigned not null, 
recipe_id int(7) unsigned not null, 
cbc_id int(3) unsigned not null,   
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),                            
PRIMARY KEY (ecp_id),
FOREIGN KEY (episode_id) references episode(episode_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (recipe_id) references recipe(recipe_id) ON DELETE restrict ON UPDATE cascade, 
FOREIGN KEY (cbc_id) references cuisine_by_country(cbc_id) ON DELETE restrict ON UPDATE cascade )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

create table episode_cook_judge(
episode_id int(7) unsigned not null, 
cook_id int(7) unsigned not null, 
ecp_id int(7) unsigned not null,
judge_score int(1) not null,
last_update timestamp not null default current_timestamp() ON UPDATE current_timestamp(),
PRIMARY KEY (episode_id,cook_id),
FOREIGN KEY (episode_id) references episode(episode_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (cook_id) references cook(cook_id) ON DELETE restrict ON UPDATE cascade,
FOREIGN KEY (ecp_id) references episode_cook_participant(ecp_id) ON DELETE restrict ON UPDATE cascade,
constraint valid_judge_score check (judge_score between 1 and 5) )
ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


/*Create indexes*/
/* !!!!Index columns frequently used to retrieve data!!!!!*/


create index idx_fk_ingrigr_id on ingridient(ingrigr_id);
create index idx_fk_ingri_id on recipe(ingri_id);
create index idx_fk_time_id on recipe(time_id);
create index idx_fk_cbc_id on recipe(cbc_id);
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
create index idx_fk_cook_id on cook_specialization(cook_id);
create index idx_fk_cbc_id on cook_specialization(cbc_id);
create index idx_fk_episode_id on episode_cook_participant(episode_id);
create index idx_fk_cook_id on episode_cook_participant(cook_id);
create index idx_fk_recipe_id on episode_cook_participant(recipe_id);
create index idx_fk_cbc_id on episode_cook_participant(cbc_id);
create index idx_fk_episode_id on episode_cook_judge(episode_id);
create index idx_fk_cook_id on episode_cook_judge(cook_id);
create index idx_fk_episode_cook_participant_id on episode_cook_judge(ecp_id);
																					


/*Create functions*/


delimiter $$
create function `total_cooking_time`(recipe_id int) returns int
begin

	declare total_time int(4);
    
	select preparing_time+cooking_time into total_time from recipe join time on recipe.time_id=time.time_id where recipe.recipe_id=recipe_id ;
    
    return total_time;
    
end$$


delimiter $$
create function `cook_age`(cook_id int) returns int
begin

	declare age int;
    
	select if (cast(substring(current_date(),6,2) as unsigned) < cast(substring(date_of_birth,6,2) as unsigned),
                cast(substring(current_date(),1,4) as unsigned) - cast(substring(date_of_birth,1,4) as unsigned) - 1,
				cast(substring(current_date(),1,4) as unsigned) - cast(substring(date_of_birth,1,4) as unsigned)) as date_of_birth into age 
                from cook where cook.cook_id=cook_id;
                
    return age;
    
end$$


delimiter $$
create function `recipe_type_from_basic_ingridient`(recipe_id int) returns varchar(30)
begin

	declare r_name varchar(30);
    
	select ingridient_group.name into r_name from recipe 
	join ingridient on recipe.ingri_id=ingridient.ingri_id 
	join ingridient_group on ingridient.ingrigr_id=ingridient_group.ingrigr_id
    where recipe.recipe_id=recipe_id;
    
    if r_name='spices and essential oils'
		then return 'aromatic';
	end if;
    if r_name='coffee tea and their products'
		then return 'caffeinated drink';
	end if;
    if r_name='preserved foods'
		then return 'preserved food';
	end if;
    if r_name='sweeteners'
		then return 'sugar-free';
	end if;
    if r_name='fats and oils'
		then return 'high in saturated fats';
	end if;
    if r_name='milk eggs and their products'
		then return 'dairy and egg';
	end if;
    if r_name='meat and its products'
		then return 'meat';
	end if;
    if r_name='fish and their products'
		then return 'seafood';
	end if;
    if r_name='cereals and their products'
		then return 'cereal and wholegrain';
	end if;
    if r_name='various foods of plant origin'
		then return 'vegeterian';
	end if;
    if r_name='products with sweeteners'
		then return 'sweetened';
	end if;
    if r_name='various drinks'
		then return 'drink';
	end if;
    
end$$


delimiter $$
create function `recipe_calories`(recipe_id int) returns numeric(8,2)
begin

	declare total_calories numeric(8,2);
    
	select sum(if (quantity_type='cup',250*ingridient.calories_per_100_grams/100,
		   if (quantity_type='teaspoon',5.69*ingridient.calories_per_100_grams/100,
           if (quantity_type='tablespoon',14.175*ingridient.calories_per_100_grams/100,
           if (quantity_type='lbs',453.59*ingridient.calories_per_100_grams/100,	#mls
           if (quantity_type='oz',28.34*ingridient.calories_per_100_grams/100,ingridient.calories_per_100_grams)))))) into total_calories
	from recipe_ingridient 
	join ingridient on recipe_ingridient.ingri_id=ingridient.ingri_id
    where quantity is not null and recipe_ingridient.recipe_id=recipe_id;
    
    return total_calories;
    
end$$

#1

SELECT 
    cook_id, 
    AVG(judge_score) AS average_judge_score
FROM 
    episode_cook_judge
GROUP BY 
    cook_id;
    
  SELECT 
    ecp.cbc_id, 
    AVG(judge.judge_score) AS average_judge_score
FROM 
    episode_cook_judge judge
JOIN 
    episode_cook_participant ecp ON judge.ecp_id = ecp.ecp_id
GROUP BY 
    ecp.cbc_id;  

#2
SELECT 
    cook_id
FROM 
    cook_specialization cs
JOIN 
    cuisine_by_country cbc ON cs.cbc_id = cbc.cbc_id
WHERE 
    cbc.country = 'French'; 
    
   SELECT 
    DISTINCT ecp.cook_id
FROM 
    episode_cook_participant ecp
JOIN 
    recipe r ON ecp.recipe_id = r.recipe_id
JOIN 
    cuisine_by_country cbc ON r.cbc_id = cbc.cbc_id
JOIN 
    episode e ON ecp.episode_id = e.episode_id
JOIN 
	season s ON e.season_id = s.season_id
WHERE 
    cbc.country = 'French'  -- Replace 'CountryName' with the actual country name
    AND YEAR(s.season_id) = 2024;  -- Replace Year with the actual year 


#3 
/*WITH CookRecipeCounts AS (
    SELECT
        c.cook_id,
        COUNT(rc.recipe_id) AS recipe_count
    FROM
        cook c
    JOIN
        recipe_cook rc ON c.cook_id = rc.cook_id
    WHERE
        c.age < 30
    GROUP BY
        c.cook_id
),
MaxRecipeCount AS (
    SELECT
        MAX(recipe_count) AS max_recipe_count
    FROM
        CookRecipeCounts
)
SELECT
    crc.cook_id,
    crc.recipe_count
FROM
    CookRecipeCounts crc
JOIN
    MaxRecipeCount mrc ON crc.recipe_count = mrc.max_recipe_count; */

#4
SELECT c.cook_id, c.first_name, c.last_name
FROM cook c
LEFT JOIN episode_cook_judge ecj ON c.cook_id = ecj.cook_id
WHERE ecj.cook_id IS NULL;

#5
SELECT
    cj.cook_id
FROM
    episode_cook_judge cj
    JOIN episode e ON cj.episode_id = e.episode_id
    JOIN season s ON e.season_id = s.season_id
WHERE
    s.year = 2022 -- specify the year you are interested in
GROUP BY
    cj.cook_id
HAVING
    COUNT(cj.episode_id) >= 4;
    
 #6   
SELECT
    LEAST(re1.etiq_id, re2.etiq_id) AS etiq_id1,
    GREATEST(re1.etiq_id, re2.etiq_id) AS etiq_id2,
    COUNT(*) AS pair_count
FROM
    recipe_etiquette re1
JOIN
    recipe_etiquette re2 ON re1.recipe_id = re2.recipe_id AND re1.etiq_id < re2.etiq_id
GROUP BY
    etiq_id1, etiq_id2
ORDER BY
    pair_count DESC
LIMIT 3;    
    
#7
SELECT c1.cook_id, c1.first_name, c1.last_name
FROM cook c1
JOIN (
    SELECT cook_id, COUNT(*) AS participation_count
    FROM episode_cook_participant
    GROUP BY cook_id
) AS participation_counts ON c1.cook_id = participation_counts.cook_id
JOIN (
    SELECT cook_id, COUNT(*) AS max_participation_count
    FROM episode_cook_participant
    GROUP BY cook_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
) AS max_participation ON 1=1
WHERE participation_counts.participation_count <= max_participation.max_participation_count - 5;

#8
SELECT 
    e.episode_id,
    COUNT(DISTINCT re.equip_id) AS equipment_count
FROM 
    episode e
    JOIN recipe r ON e.episode_id = r.recipe_id
    JOIN recipe_equipment re ON r.recipe_id = re.recipe_id
GROUP BY 
    e.episode_id
ORDER BY 
    equipment_count DESC
LIMIT 10;

#9
  SELECT 
    y.year,
    AVG(grams_carbohydrates_per_serving * portions) AS avg_grams_carbohydrates
FROM 
    recipe r
    JOIN cuisine_by_country cbc ON r.cbc_id = cbc.cbc_id
    JOIN episode_cook_participant ecp ON cbc.cbc_id = ecp.cbc_id
    JOIN episode e ON ecp.episode_id = e.episode_id
    JOIN season y ON e.season_id = y.season_id
GROUP BY 
    y.year
ORDER BY 
    y.year;
    
#10
WITH ParticipationCount AS (
    SELECT
        cb.country,
        s.year,
        COUNT(DISTINCT e.episode_id) AS participation_count
    FROM
        cuisine_by_country cb
        JOIN episode_cook_participant ecp ON cb.cbc_id = ecp_id
        JOIN episode e ON ecp.episode_id = e.episode_id
        JOIN season s ON e.season_id = s.season_id
	    
    GROUP BY
        cb.country,
        s.year
    HAVING
        COUNT(DISTINCT e.episode_id) > 2
)
SELECT 
    pc1.country,
    pc1.year AS year1,
    pc2.year AS year2,
    pc1.participation_count
FROM 
    ParticipationCount pc1
    JOIN ParticipationCount pc2 ON pc1.country = pc2.country
    AND pc1.year = pc2.year - 1
    AND pc1.participation_count = pc2.participation_count
ORDER BY 
    pc1.country, 
    pc1.year;
    
 #11
 
 
 #12
WITH EpisodeDifficulty AS (
    SELECT 
        e.season_id,
        e.episode_number,
        e.episode_id,
        SUM(r.difficulty_level) AS total_difficulty,
        ROW_NUMBER() OVER (PARTITION BY e.season_id ORDER BY SUM(r.difficulty_level) DESC) AS row_num
    FROM 
        episode e
    JOIN 
        episode_cook_participant ecp ON e.episode_id = ecp.episode_id
    JOIN 
        recipe r ON ecp.recipe_id = r.recipe_id
    GROUP BY 
        e.season_id, e.episode_number, e.episode_id
)
SELECT 
    season_id,
    episode_number,
    episode_id,
    total_difficulty
FROM 
    EpisodeDifficulty
WHERE 
    row_num = 1;

#14
SELECT 
    ts.name,
    COUNT(*) AS appearance_count
FROM 
    recipe_thematic_section rts
    JOIN thematic_section ts ON rts.themsec_id = ts.themsec_id
GROUP BY 
    ts.name
ORDER BY 
    appearance_count DESC
LIMIT 1;

#15
SELECT 
    ig.name
FROM 
    ingridient_group ig
    LEFT JOIN ingridient i ON ig.ingrigr_id = i.ingrigr_id
    LEFT JOIN recipe ri ON i.ingri_id = ri.ingri_id
WHERE 
    ri.recipe_id IS NULL
GROUP BY 
    ig.name;
    

