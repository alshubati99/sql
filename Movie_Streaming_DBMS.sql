create table movie(  
    movie_id varchar2(5) not null constraint movie_pk primary key,  
    title varchar2(20),  
    budget binary_float,  
    popularity float(2),  
    revenue binary_float,
    votes_count int
);

create table language( 
    language_id varchar2(5) not null constraint langauge_pk primary key,
    language_code varchar2(3) not null,
    language_name varchar2(10) not null
);

create table country ( 
    country_id varchar2(5) not null constraint country_pk primary key,
    country_iso_code varchar2(3),
    country_name varchar2(10)
);

create table genre( 
    genre_id varchar2(5) not null constraint genre_pk primary key,
    genre_name varchar2(15)
);

create table gender( 
    gender_id varchar2(5) not null constraint gender_pk primary key,
    gender varchar2(1)
);

create table person( 
    person_id varchar2(5) not null constraint person_pk primary key,
    person_name varchar2(30)
);

create table production_company( 
    company_id varchar2(5) not null constraint company_pk primary key,
    company_name varchar2(20)
);
------------------------------------------------------------------------

create table movie_language (  
    movie_id varchar2(5) not null,
    language_id varchar2(5) not null,
    constraint movie_fk foreign key (movie_id) references movie(movie_id),
    constraint language_fk foreign key (language_id) references language(language_id)
);

create table production_country(  
    movie_id varchar2(5) not null,
    country_id varchar2(5) not null,
    constraint movie_fk_1 foreign key (movie_id) references movie(movie_id),
    constraint country_fk foreign key (country_id) references country(country_id)
);

create table movie_cast(  
    movie_id varchar2(5) not null,
    gender_id varchar2(5) not null,
    person_id varchar2(5) not null,
    character_name varchar2(5) not null,
    constraint movie_fk_2 foreign key (movie_id) references movie(movie_id),
    constraint gender_fk foreign key (gender_id) references gender(gender_id),
    constraint person_fk foreign key (person_id) references person(person_id)
);

create table movie_company( 
    movie_id varchar2(5) not null,
    company_id varchar2(5) not null,
    constraint movie_fk_3 foreign key (movie_id) references movie(movie_id),
    constraint company_fk foreign key (company_id) references production_company(company_id)
); 

create table movie_genre ( 
    movie_id varchar2(5) not null,
    genre_id varchar2(5) not null,
    constraint movie_fk_4 foreign key (movie_id) references movie(movie_id),
    constraint genre_fk foreign key (genre_id) references genre(genre_id)
);


------------------------------------------------------------------------
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10001','movie_2',67.61,'2.63',91.95,32);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10002','movie_3',39.08,'0.55',53.15,16);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10003','movie_4',36.81,'1.48',50.06,48);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10004','movie_5',67.49,'0.72',91.79,33);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10005','movie_6',3.36,'0.09',4.57,2);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10006','movie_7',69.47,'3.24',94.48,10);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10007','movie_8',19.03,'0.28',25.88,68);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10008','movie_9',16.82,'3.64',22.88,73);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10009','movie_10',24.23,'0.21',32.95,22);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10010','movie_11',81.91,'1.19',111.4,74);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10011','movie_12',50.02,'0.63',68.03,92);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10012','movie_13',81.32,'2.98',110.6,59);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10013','movie_14',55.45,'0.89',75.41,77);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10014','movie_15',48.33,'1.44',65.73,78);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10015','movie_16',9.73,'1.95',13.23,74);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10016','movie_17',13.3,'0.64',18.09,82);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10017','movie_18',95.95,'2.65',130.49,5);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10018','movie_19',25.64,'2.93',34.87,32);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10019','movie_20',21.65,'3.2',29.44,22);
INSERT INTO movie (movie_id, title, budget, popularity, revenue, votes_count) VALUES ('10020','movie_21',33.13,'0.09',45.06,87);

INSERT INTO genre (genre_id, genre_name) VALUES ('30001','action');
INSERT INTO genre (genre_id, genre_name) VALUES ('30002','adventure');
INSERT INTO genre (genre_id, genre_name) VALUES ('30003','comedy');
INSERT INTO genre (genre_id, genre_name) VALUES ('30004','drama');
INSERT INTO genre (genre_id, genre_name) VALUES ('30005','fantasy');
INSERT INTO genre (genre_id, genre_name) VALUES ('30006','horror');
INSERT INTO genre (genre_id, genre_name) VALUES ('30007','musicals');
INSERT INTO genre (genre_id, genre_name) VALUES ('30008','mystery');
INSERT INTO genre (genre_id, genre_name) VALUES ('30009','romance');
INSERT INTO genre (genre_id, genre_name) VALUES ('30010','science fiction');
INSERT INTO genre (genre_id, genre_name) VALUES ('30011','sports');
INSERT INTO genre (genre_id, genre_name) VALUES ('30012','thriller');

INSERT INTO language (language_id,language_code,language_name) VALUES ('20001','en','English');
INSERT INTO language (language_id,language_code,language_name) VALUES ('20002','zh','Chinese');
INSERT INTO language (language_id,language_code,language_name) VALUES ('20003','fr','French');
INSERT INTO language (language_id,language_code,language_name) VALUES ('20004','de','German');
INSERT INTO language (language_id,language_code,language_name) VALUES ('20005','hi','Hindi');
INSERT INTO language (language_id,language_code,language_name) VALUES ('20006','it','Italian');
INSERT INTO language (language_id,language_code,language_name) VALUES ('20007','ko','Korean');
INSERT INTO language (language_id,language_code,language_name) VALUES ('20008','fa','Persian');
INSERT INTO language (language_id,language_code,language_name) VALUES ('20009','ru','Russian');
INSERT INTO language (language_id,language_code,language_name) VALUES ('20010','tr','Turkish');
INSERT INTO language (language_id,language_code,language_name) VALUES ('20011','el','Greek');
INSERT INTO language (language_id,language_code,language_name) VALUES ('20012','es','Spanish');

INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40001','ca','Canada');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40002','cn','China');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40003','eg','Egypt');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40004','fr','France');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40005','gr','Germany');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40006','gr','Greece');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40007','ir','Iran');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40008','it','Italy');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40009','jp','Japan');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40010','kr','South Korea');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40011','ru','Russia');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40012','tr','Turkiye');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40013','us','Ameriaca');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40014','in','India');
INSERT INTO country (country_id, country_iso_code, country_name) VALUES ('40015','gb','Britain');

INSERT INTO production_company (company_id,company_name) VALUES ('60004','company_4');
INSERT INTO production_company (company_id,company_name) VALUES ('60005','company_5');
INSERT INTO production_company (company_id,company_name) VALUES ('60006','company_6');
INSERT INTO production_company (company_id,company_name) VALUES ('60007','company_7');
INSERT INTO production_company (company_id,company_name) VALUES ('60008','company_8');
INSERT INTO production_company (company_id,company_name) VALUES ('60009','company_9');
INSERT INTO production_company (company_id,company_name) VALUES ('60010','company_10');
INSERT INTO production_company (company_id,company_name) VALUES ('60011','company_11');
INSERT INTO production_company (company_id,company_name) VALUES ('60012','company_12');
INSERT INTO production_company (company_id,company_name) VALUES ('60013','company_13');
INSERT INTO production_company (company_id,company_name) VALUES ('60014','company_14');
INSERT INTO production_company (company_id,company_name) VALUES ('60015','company_15');
INSERT INTO production_company (company_id,company_name) VALUES ('60016','company_16');
INSERT INTO production_company (company_id,company_name) VALUES ('60017','company_17');
INSERT INTO production_company (company_id,company_name) VALUES ('60018','company_18');
INSERT INTO production_company (company_id,company_name) VALUES ('60019','company_19');
INSERT INTO production_company (company_id,company_name) VALUES ('60020','company_20');

INSERT INTO person (person_id,person_name) VALUES ('50001','person_1');
INSERT INTO person (person_id,person_name) VALUES ('50002','person_2');
INSERT INTO person (person_id,person_name) VALUES ('50003','person_3');
INSERT INTO person (person_id,person_name) VALUES ('50004','person_4');
INSERT INTO person (person_id,person_name) VALUES ('50005','person_5');
INSERT INTO person (person_id,person_name) VALUES ('50006','person_6');
INSERT INTO person (person_id,person_name) VALUES ('50007','person_7');
INSERT INTO person (person_id,person_name) VALUES ('50008','person_8');
INSERT INTO person (person_id,person_name) VALUES ('50009','person_9');
INSERT INTO person (person_id,person_name) VALUES ('50010','person_10');
INSERT INTO person (person_id,person_name) VALUES ('50011','person_11');
INSERT INTO person (person_id,person_name) VALUES ('50012','person_12');
INSERT INTO person (person_id,person_name) VALUES ('50013','person_13');
INSERT INTO person (person_id,person_name) VALUES ('50014','person_14');
INSERT INTO person (person_id,person_name) VALUES ('50015','person_15');
INSERT INTO person (person_id,person_name) VALUES ('50016','person_16');
INSERT INTO person (person_id,person_name) VALUES ('50017','person_17');
INSERT INTO person (person_id,person_name) VALUES ('50018','person_18');
INSERT INTO person (person_id,person_name) VALUES ('50019','person_19');
INSERT INTO person (person_id,person_name) VALUES ('50020','person_20');
INSERT INTO person (person_id,person_name) VALUES ('50021','person_21');
INSERT INTO person (person_id,person_name) VALUES ('50022','person_22');
INSERT INTO person (person_id,person_name) VALUES ('50023','person_23');
INSERT INTO person (person_id,person_name) VALUES ('50024','person_24');
INSERT INTO person (person_id,person_name) VALUES ('50025','person_25');
INSERT INTO person (person_id,person_name) VALUES ('50026','person_26');
INSERT INTO person (person_id,person_name) VALUES ('50027','person_27');
INSERT INTO person (person_id,person_name) VALUES ('50028','person_28');
INSERT INTO person (person_id,person_name) VALUES ('50029','person_29');
INSERT INTO person (person_id,person_name) VALUES ('50030','person_30');
INSERT INTO person (person_id,person_name) VALUES ('50031','person_31');
INSERT INTO person (person_id,person_name) VALUES ('50032','person_32');
INSERT INTO person (person_id,person_name) VALUES ('50033','person_33');
INSERT INTO person (person_id,person_name) VALUES ('50034','person_34');
INSERT INTO person (person_id,person_name) VALUES ('50035','person_35');
INSERT INTO person (person_id,person_name) VALUES ('50036','person_36');
INSERT INTO person (person_id,person_name) VALUES ('50037','person_37');
INSERT INTO person (person_id,person_name) VALUES ('50038','person_38');
INSERT INTO person (person_id,person_name) VALUES ('50039','person_39');
INSERT INTO person (person_id,person_name) VALUES ('50040','person_40');
INSERT INTO person (person_id,person_name) VALUES ('50041','person_41');
INSERT INTO person (person_id,person_name) VALUES ('50042','person_42');
INSERT INTO person (person_id,person_name) VALUES ('50043','person_43');
INSERT INTO person (person_id,person_name) VALUES ('50044','person_44');
INSERT INTO person (person_id,person_name) VALUES ('50045','person_45');
INSERT INTO person (person_id,person_name) VALUES ('50046','person_46');
INSERT INTO person (person_id,person_name) VALUES ('50047','person_47');
INSERT INTO person (person_id,person_name) VALUES ('50048','person_48');
INSERT INTO person (person_id,person_name) VALUES ('50049','person_49');
INSERT INTO person (person_id,person_name) VALUES ('50050','person_50');

INSERT INTO gender(gender_id, gender) VALUES ('1','F');
INSERT INTO gender(gender_id, gender) VALUES ('2','M');

INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10001','30007');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10002','30002');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10003','30007');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10004','30003');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10005','30001');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10006','30000');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10007','30009');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10008','30004');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10009','30008');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10010','30010');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10011','30009');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10012','30010');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10013','30003');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10014','30008');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10015','30001');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10016','30006');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10017','30004');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10018','30008');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10019','30006');
INSERT INTO movie_genre (movie_id, genre_id) VALUES ('10020','30007');

INSERT INTO movie_company (movie_id, company_id) VALUES ('10001','60010');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10002','60005');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10003','60007');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10004','60016');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10005','60007');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10006','60018');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10007','60010');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10008','60016');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10009','60010');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10010','60007');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10011','60008');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10012','60013');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10013','60018');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10014','60001');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10015','60009');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10016','60014');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10017','60007');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10018','60015');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10019','60010');
INSERT INTO movie_company (movie_id, company_id) VALUES ('10020','60008');

INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10001','1','50032','char1');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10001','1','50037','char2');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10001','2','50027','char3');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10001','1','50010','char4');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10001','2','50015','char5');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10001','2','50007','char6');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10001','1','50044','char7');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10001','2','50003','char8');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10002','2','50028','char1');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10002','2','50017','char2');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10002','1','50037','char3');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10002','2','50026','char4');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10002','1','50044','char5');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10002','2','50017','char6');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10005','1','50033','char1');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10005','1','50041','char2');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10005','2','50028','char3');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10005','2','50006','char4');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10005','2','50014','char5');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10005','1','50035','char6');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10015','1','50032','char1');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10015','1','50040','char2');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10015','2','50028','char3');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10015','2','50039','char4');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10015','1','50010','char5');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10015','1','50002','char6');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10015','2','50014','char7');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10013','2','50024','char1');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10013','2','50029','char2');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10013','2','50015','char3');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10013','1','50037','char4');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10013','1','50002','char5');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10013','2','50007','char6');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10013','2','50027','char7');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10019','1','50010','char1');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10019','2','50019','char2');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10019','2','50008','char3');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10019','1','50041','char4');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10019','1','50042','char5');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10019','2','50047','char6');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10019','1','50033','char7');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10007','2','50005','char1');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10007','2','50026','char2');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10007','2','50003','char3');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10007','2','50015','char4');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10007','1','50034','char5');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10007','2','50017','char6');
INSERT INTO movie_cast (movie_id,gender_id,person_id,character_name) VALUES ('10007','1','50038','char7');

INSERT INTO production_country (movie_id, country_id) VALUES ('10001','40015');
INSERT INTO production_country (movie_id, country_id) VALUES ('10002','40004');
INSERT INTO production_country (movie_id, country_id) VALUES ('10003','40004');
INSERT INTO production_country (movie_id, country_id) VALUES ('10004','40013');
INSERT INTO production_country (movie_id, country_id) VALUES ('10005','40010');
INSERT INTO production_country (movie_id, country_id) VALUES ('10006','40011');
INSERT INTO production_country (movie_id, country_id) VALUES ('10007','40014');
INSERT INTO production_country (movie_id, country_id) VALUES ('10008','40014');
INSERT INTO production_country (movie_id, country_id) VALUES ('10009','40004');
INSERT INTO production_country (movie_id, country_id) VALUES ('10010','40011');
INSERT INTO production_country (movie_id, country_id) VALUES ('10011','40013');
INSERT INTO production_country (movie_id, country_id) VALUES ('10012','40004');
INSERT INTO production_country (movie_id, country_id) VALUES ('10013','40014');
INSERT INTO production_country (movie_id, country_id) VALUES ('10014','40006');
INSERT INTO production_country (movie_id, country_id) VALUES ('10015','40014');
INSERT INTO production_country (movie_id, country_id) VALUES ('10016','40011');
INSERT INTO production_country (movie_id, country_id) VALUES ('10017','40006');
INSERT INTO production_country (movie_id, country_id) VALUES ('10018','40006');
INSERT INTO production_country (movie_id, country_id) VALUES ('10019','40004');
INSERT INTO production_country (movie_id, country_id) VALUES ('10020','40004');
INSERT INTO production_country (movie_id, country_id) VALUES ('10020','40015');
INSERT INTO production_country (movie_id, country_id) VALUES ('10005','40013');
INSERT INTO production_country (movie_id, country_id) VALUES ('10004','40005');

INSERT INTO movie_language (movie_id, language_id) VALUES ('10001','20001');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10002','20003');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10003','20003');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10004','20001');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10005','20007');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10006','20009');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10007','20005');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10008','20005');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10009','20003');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10010','20009');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10011','20001');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10012','20003');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10013','20005');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10014','20011');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10015','20005');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10016','20009');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10017','20011');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10018','20011');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10019','20003');
INSERT INTO movie_language (movie_id, language_id) VALUES ('10020','20003');
------------------------------------------------------------------------------------------
/*LAB3*/
------------------------------------------------------------------------------------------
-- Q1: How many movies are in the database? 
SELECT COUNT(movie_id) AS total_movies FROM movie;
-- Q2: Which movie does have the highest budge? Return the name of the movie? 
SELECT title , budget FROM movie where budget = ( select MAX(budget) from movie ) ;
-- Q3: What is the total revenue of the available movies in the database? 
SELECT SUM(revenue) AS Total_Revenue FROM movie;
-- Q4: Which genre does have the most number of movies? specify the genre name. 
SELECT genre.genre_name, COUNT(movie_genre.movie_id) as most_number
FROM movie
INNER JOIN movie_genre ON movie.movie_id = movie_genre.movie_id
INNER JOIN genre ON genre.genre_id = movie_genre.genre_id
GROUP BY genre.genre_name
ORDER BY COUNT(movie_genre.movie_id) DESC;

----------------------------------------------------------------------------------------------------------
/*LAB4*/
-----------------------------------------------------------------------------------------------------------
--Q1: In which language are most of the movies produced? Return the name of the language, NOT its ID.
select language.language_id, language_name, count(movie_id) as freq 
from movie_language inner join language on movie_language.language_id = language.language_id 
group by language.language_id , language_name
order by freq desc
fetch first 1 row only

--Q2: Which country has produced the most number of movies? Return the ID and the name of country and the number of movie it has produced.
select country_id,country_name, count(movie_id) as MOST 
from country inner join production_country using(country_id) 
group by country_id, country_name 
order by MOST desc
fetch first 1 row only

--Q3: Which company has produced the most number of movies? Return the name of the company.
select company_name, count(movie_id) as MOST_MOVIE
from movie_company inner join production_company using(company_id)
group by company_name
order by MOST_MOVIE desc 
fetch first 1 row only

--Q4: Which movie does have the lowest revenue? How many men and women are in the cast of this movie?
select * 
from gender inner join ( 
select gender_id, count(gender_id) as freq 
from movie inner join movie_cast using(movie_id) 
where revenue = (select min(revenue) from movie) 
group by gender_id) using(gender_id);

----------------------------------------------------------------------------------------------------------
/*LAB5*/
-----------------------------------------------------------------------------------------------------------
--Q5: Find the number of movies each production company has produced. Return the name of company with the number of movies.
Select company_id, company_name,  
    (Select count(movie_id) from movie_company where movie_company.company_id = production_company.company_id ) as NUm_of_movies
from production_company; 

--Q6: How many men and women are in the cast of the first movie in the database?
select gender, count(gender_id) as total 
from movie_cast inner join gender using(gender_id) 
where movie_id = (select min(movie_id) from movie) 
group by gender; 

--Q7: What is the genre of the most voted movie?
select movie_id,genre_name,votes_count
from movie inner join (select movie_id,genre_name 
from movie_genre inner join genre using(genre_id)) using(movie_id)
where votes_count =( select max(votes_count) as Max_votes from movie);

/* Q8: Which company did the most investment in the movie production? Hint: First find the summation of the budget of all of the movies produced by 
each company, then find the maximum value)*/
 select max(total)
 from (select company_name, sum(budget) as total
    from production_company 
    inner join movie_company on production_company.company_id = movie_company.company_id 
    inner join movie on movie.movie_id = movie_company.movie_id
    group by company_name );
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*LAB6 (Triggers!)*/ 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Q0: Write a trigger to save all modification on table movie. (Update and Delete)
CREATE TABLE Movie_log (  
  id_Log NUMBER GENERATED AS IDENTITY,  
  id NUMBER,  
  title VARCHAR2(100) ,  
  Change_By  varchar2(100),   
  TrnsTyp varchar2(100) ,  
  ChangeDate date  
);
create or replace trigger Tr_movie 
after update or delete  
on movie  
for each row  
DECLARE  
   TrnsTyp VARCHAR2(10);  
BEGIN  
   -- determine the transaction type  
   TrnsTyp := CASE    
         WHEN UPDATING THEN 'UPDATE'  
         WHEN DELETING THEN 'DELETE'  
   END;  
  
   INSERT INTO Movie_Log (id, title,  Change_By,  TrnsTyp ,  ChangeDate)  
   values(:old.movie_id, :old.title,  User,  TrnsTyp ,  sysdate);  
END; 
------------------------------------------------------------------------------------------------------------------------------------------------------------------




