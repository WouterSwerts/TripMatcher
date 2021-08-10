drop database Tripmatcher;
drop table TripTable;
drop table CategoryTable;
drop table TripCategory;

create database Tripmatcher;

use Tripmatcher;
SET DEFAULT_STORAGE_ENGINE = InnoDB;

create table if not exists TripTable(
Trip_id int AUTO_INCREMENT primary key,
Image varchar(500),
Title varchar(500),
Summary text,
Country_id int,
Added_date date
);



create table CategoryTable(
Category_id int AUTO_INCREMENT primary key,
Category_name varchar(200)
);



SET FOREIGN_KEY_CHECKS=1;

create table TripCategory(
id int AUTO_INCREMENT primary key,
Trip_id int, CONSTRAINT FK_Trip_id foreign key(Trip_id) REFERENCES TripTable(Trip_id) ON UPDATE CASCADE ON DELETE RESTRICT,
Category_id int, CONSTRAINT FK_Category_id Foreign key(Category_id) REFERENCES CategoryTable(Category_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

create table CountryTable(
Country_id int AUTO_INCREMENT primary key,
Country varchar(100)
);

create table UserTable(
id int AUTO_INCREMENT primary key,
Name varchar(250),
Email varchar(100),
Photo varchar(500),
Password varchar(100)
);

create table UserTrip(
id int AUTO_INCREMENT primary key,
User_id int, CONSTRAINT FK_User_id_t foreign key(User_id) REFERENCES UserTable(id) ON UPDATE CASCADE ON DELETE RESTRICT,
Trip_id int, CONSTRAINT FK_UserTrip_id Foreign key(Trip_id) REFERENCES TripTable(Trip_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

create table UserCategory(
id int AUTO_INCREMENT primary key,
User_id int, CONSTRAINT FK_User_id_c foreign key(User_id) REFERENCES UserTable(id) ON UPDATE CASCADE ON DELETE RESTRICT,
Category_id int, CONSTRAINT FK_UserCategory_id Foreign key(Category_id) REFERENCES CategoryTable(Category_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

create table TripCountry(
id int AUTO_INCREMENT primary key,
Trip_id int, CONSTRAINT FK_Trip_id_c foreign key(Trip_id) REFERENCES TripTable(Trip_id) ON UPDATE CASCADE ON DELETE RESTRICT,
Country_id int, CONSTRAINT FK_Country_id Foreign key(Country_id) REFERENCES CountryTable(Country_id) ON UPDATE CASCADE ON DELETE RESTRICT
);


SELECT * FROM tripmatcher.categorytable;
insert into categorytable(category_name) Values ("Nature"), ("City"), ("Small Town"), ("Mountain"), ("Lake"), ("Beach"), ("River"), ("Sea"), ("Forest"), ("Vineyard"), ("Gorge"), ("Cave"), ("Viewpoint"), ("Indoor"), ("Outdoor"), ("Walking"), ("Running"), ("Cycling"), ("Hiking"), ("Kayaking"), ("Swimming"), ("Diving"), ("Winter Sports"), ("Climbing"), ("Rafting"), ("Skydiving"), ("Art & Culture"), ("Exhibitions"), ("Foodie"), ("Festivals"), ("Architecture"), ("Historical Sites"), ("Local Experiences"), ("Sightseeing"), ("Road Trip"), ("Blue Voyage"), ("Family"), ("Children Friendly"), ("Pet Friendly"), ("Romantic"), ("Disability Friendly"), ("Corona Friendly"), ("Active"), ("Adventure"), ("Calm"), ("Lazy"), ("Public Transportation"), ("Private Vehicle"), ("Ponds");

SELECT * FROM tripmatcher.countrytable;
insert into countrytable(Country) Values ("Belgium"), ("Netherlands"), ("France"), ("Italy"), ("Germany");

SELECT * FROM tripmatcher.tripcategory;
insert into tripmatcher.tripcategory (Trip_id, Category_id) Values (1,1), (1,9), (1, 15), (1,16), (1,17), (1,18), (1,19), (1,31), (1,33), (1,34), (1,37), (1,38), (1,41), (1,42), (1,43), (1,47), (1,48), (1,49);

SELECT * FROM tripmatcher.triptable;
insert into triptable(image, Title, Summary, Country_id, Added_date) Values ("/assets/img/Trip/fietsenWater2.jpg", "Cycling through Water, Bokrijk",  "A unique cycling experience in which you cycle through a pond in the 'De Wijers' nature reserve. In the middle, the path dips low enough to put riders at eye level with the water. In 2018 shortlisted in top 100 'Worlds Greatest Experiences' by Time Magazine.", 1, "2021-08-09");

insert into triptable(image, Title, Summary, Country_id, Added_date) Values ("/assets/img/Trip/TODI4.jpg", "Todi Indoor Diving, Beringen",  "When you think of diving, you usually dream of colorful fauna and flora, an abundance of special fish and perhaps the sea. Well, you do not have to go to a sea for having a diving experience. In this indoor diving facility you can enjoy diving and get diving lessons if you are a beginner.", 1, "2021-08-10");

