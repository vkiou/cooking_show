use cooking_show;

select * from cook;
select * from cook_specialization;
select * from cuisine_by_country;
select * from episode;
select * from episode_cook_judge;
select * from episode_cook_participant;
select * from equipment;
select * from etiquette;
select * from ingridient;
select * from ingridient_group;
select * from meal_type;
select * from recipe;
select * from recipe_equipment;
select * from recipe_etiquette;
select * from recipe_ingridient;
select * from recipe_meal_type;
select * from recipe_step;
select * from recipe_thematic_section;
select * from recipe_tip;
select * from season;
select * from step;
select * from thematic_section;
select * from time;
select * from tip;

select * from recipe_cook;

select cook_age(4);
select * from cook where cook_id=4;

select participant_total_score(35,4);
select * from episode_cook_participant where ecp_id=35;
select * from episode_cook_judge where ecp_id=35;

select * from recipe where recipe_id=35;
select recipe_calories(35);
select recipe_type_from_basic_ingridient(35);
select * from ingridient where ingri_id=172;
select total_cooking_time(35);
select * from time where time_id=25;


call episode_winner(37,@out);
select @out;
select participant_total_score(ecp_id,episode_id),cook.cook_id,cook.cook_rank from episode_cook_participant join cook on episode_cook_participant.cook_id=cook.cook_id
where episode_id=37 and cook.cook_id in(select cook_id from episode_cook_participant 
where episode_id=37 
and participant_total_score(ecp_id,episode_id)=(select max(participant_total_score(ecp_id,episode_id)) from episode_cook_participant where episode_id=37));