use cooking_show;

#delete data

delete from cuisine_by_country;
delete from etiquette;
delete from tip;
delete from equipment;
delete from step;
delete from recipe_time;
delete from ingridient_group;
delete from ingridient;
delete from nutritional_info;
delete from thematic_section;
delete from recipe;
delete from recipe_etiquette;
delete from recipe_tip;
delete from recipe_equipment;
delete from recipe_step;
delete from recipe_thematic_section;
delete from recipe_nutritional_info;
delete from cook;
delete from cook_specialization;
delete from season;
delete from episode;
delete from episode_cook_participant;
delete from episode_cook_judge;

#insert data

insert into cuisine_by_country(country) values('Albanian'),('Algerian'),('American'),('Arab'),('Argentine'),('Armenian'),('Austrian'),('Azerbaijani'),
('Bahraini'),('Belarusian'),('Belgian'),('Bolivian'),('Bosnia and Herzegovina'),('Brazilian'),('British'),('Bulgarian'),('Canadian'),('Chinese'),('Colombian'),
('Croatian'),('Cypriot'),('Czech'),('Dutch'),('Egyptian'),('Emirati'),('Estonian'),('Finnish'),('French'),('Georgian'),('German'),('Greek'),('Hungarian'),
('Indian'),('Iranian'),('Iraqi'),('Israeli'),('Italian'),('Jamaican'),('Japanese'),('Jewish'),('Jordanian'),('Korean'),('Kuwaiti'),('Lebanese'),('Lithuanian'),
('Macedonian'),('Mexican'),('Moldovan'),('Montenegrin'),('Moroccan'),('Omani'),('Pakistani'),('Palestinian'),('Peruvian'),('Polish'),('Portuguese'),('Romanian'),
('Russian'),('Serbian'),('Slovak'),('Slovenian'),('Spanish'),('Sri Lankan'),('Swiss'),('Syrian'),('Tajik'),('Thai'),('Turkish'),('Ukrainian'),('Yemeni');

insert into ingridient_group(name, description) values ('spices and essential oils',''),('coffee tea and their products',''),('preserved foods',''),
('sweeteners',''),('fats and oils',''),('milk eggs and their products',''),('meat and its products',''),('fish and their products',''),('cereals and their products',''),
('various foods of plant origin',''),('products with sweeteners',''),('various drinks','');

/*when i delete a tuple, the primary key with auto_increment value must return to the smallest next available number(maybe with update?)*/

select * from cuisine_by_country;
select * from ingridient_group;
