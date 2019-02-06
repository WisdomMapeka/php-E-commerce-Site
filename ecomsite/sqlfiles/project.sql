-- Begining of profile tables---------------------------------
CREATE TABLE IF NOT EXISTS profile(
id int unsigned auto_increment key,
profileID  varchar(900),
first_name varchar(300),
last_name varchar(300),
username varchar(300),
email varchar(300),
phone varchar(300),
thumbnail varchar(800),
profile_pic varchar(800),
is_admin varchar(40) default false,
is_superuser varchar(40) default false,
relationship_status varchar(300),
religion varchar(300),
education_id varchar(900),
hobbie_id varchar(900),
movie_id varchar(900),
music_id varchar(900),
work_id varchar(900),
family_id varchar(900)
);

CREATE TABLE IF NOT EXISTS education(
id int unsigned auto_increment key,
primary_education varchar(300),
secondary_education varchar(300),
tertiary_education varchar(300),
more varchar(300),
education_id varchar(900)
);

CREATE TABLE IF NOT EXISTS hobbies(
id int unsigned auto_increment key,
hobbie_name varchar(300),
hobbie_id varchar(900)
);

CREATE TABLE IF NOT EXISTS movies(
id int unsigned auto_increment key,
movie_name varchar(300),
year varchar(300),
movie_id varchar(900)
);

CREATE TABLE IF NOT EXISTS music(
id int unsigned auto_increment key,
song_title varchar(300),
artist varchar(300),
music_id varchar(900)
);

CREATE TABLE IF NOT EXISTS work(
id int unsigned auto_increment key,
job_title varchar(300),
years varchar(300),
company_name varchar(300),
work_id varchar(900)
);

CREATE TABLE IF NOT EXISTS family(
name varchar(300),
relationship varchar(300),
family_id varchar(900)
);

-- End of profile tables --------------------------------------
CREATE TABLE IF NOT EXISTS article(
id int unsigned auto_increment key,
title varchar(300),
article_content varchar(300),
thumbnail varchar(900),
big_image varchar(900),
video varchar(900),
pdf varchar(900),
-- author_profileID takes the same value as profileID
author_profileID varchar(900)
);

CREATE TABLE IF NOT EXISTS comments(
id int unsigned auto_increment key,
comment_text varchar(900),
profileID varchar(900)
)