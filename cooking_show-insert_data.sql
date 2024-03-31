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
delete from winner;
delete from season;
delete from episode;
delete from episode_cook_participant;
delete from episode_cook_judge;


#insert data

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