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

insert into categorytable(category_name) Values ("Amusementpark");

insert into tripmatcher.tripcategory (Trip_id, Category_id) Values (2,14), (2,22), (2,37), (2,38), (2,42), (2,43), (2,47), (2,48);


SELECT * FROM tripmatcher.triptable LEFT JOIN tripmatcher.countrytable ON triptable.Country_id = countrytable.Country_id WHERE country = "belgium" OR country = "Germany";


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
insert into triptable(image, Title, Summary, Country_id, Added_date) Values ("/assets/img/Trip/via ferrata.jpg", "Via Ferrata, Lago di Garda", "'Via Ferrata' is a mountaineering term. Originally Italian it means 'iron road'. It is a route set out with steel cables along a rock wall. Over 1000 via ferratas currently exist in the European Alps. The one in Lago di Garda is famous for its excellent views and offers easy, medium and difficult level routes with many viewpoints.", 4, "2021-08-11");
insert into triptable(image, Title, Summary, Country_id, Added_date) Values ("/assets/img/Trip/Chocolate.jpg", "Chocolate Nation, Antwerp", "As soon as you open the doors of Chocolate Nation, the chocolate smell hits you. In this chocolate museum you walk through a huge chocolate machine and witness how the cocoa bean is harvested. It is just like being in the movie 'Charlie and the Chocolate Factory.' There are several workshops where you can learn how they make Belgian chocolate.", 1, "2021-08-11");
insert into triptable(image, Title, Summary, Country_id, Added_date) Values ("/assets/img/Trip/trek.jpg", "Traveling Food Festival with Performances", "Festival TREK is the largest traveling food festival in the Netherlands. Throughout the year city parks are transformed into a large open-air festival area across the country, where you can enjoy surprising entertainment from young theater makers, cabaret and musicals combined with a diverse range of dishes.", 2, "2021-08-11");
insert into triptable(image, Title, Summary, Country_id, Added_date) Values ("/assets/img/Trip/orval.jpg", "Monastery Ruins and Trappist Beer, Orval Abbey", "Orval Abbey (Abbaye Notre-Dame d'Orval) is a Cistercian monastery founded in 1132. The site offers monumental ruins as well as an underground museum. The abbey is well known for its history but also for its local production of the Trappist beer and abbey cheese. There is a bar, restaurant and a store where you can taste and purchase these abbey delicacies.", 1, "2021-08-11"); 
insert into triptable(image, Title, Summary, Country_id, Added_date) Values ("/assets/img/Trip/Rursee.jpg", "Sailing, Kayaking and More, Lake Rursee", "Away from the big cities and the hustle of everyday life, you are surrounded by nature, fresh air, water, woods, adventure, beach and relaxation at Lake Rursee. In the middle of the Eifel National Park, the natural scenery and unspoilt nature invites you to a day trip with many possibilities.", 5, "2021-08-11"); 
insert into triptable(image, Title, Summary, Country_id, Added_date) Values ("/assets/img/Trip/normandy.jpg", "A Hidden Limestone Beach, Plage du Fourquet", "Plage du Fourquet is a calm small beach mostly visited by locals in Normandy, close to the famous Etretat. The view of the cliff and the noise of rolling pebbles to the rhythm of the waves is calming. If you want an active day, get ready for a swim or a scenic hike on top of the cliffs.", 3, "2021-08-11"); 
insert into triptable(image, Title, Summary, Country_id, Added_date) Values ("/assets/img/Trip/vineyard.jpg", "Vineyards from Roman Times, Neumagen-Dhron", "Neumagen-Dhron is one of a whole series of places that claim the title Germany's Oldest Winemaking Centre. The winemaking village of Neumagen was founded by the Romans some 2,000 years ago as a waystation on the road from Trier to Koblenz along the River Moselle. In Neumagen you can stroll along the river, take a boat ride and enjoy wine tasting.", 5, "2021-08-11");

insert into tripmatcher.tripcategory (Trip_id, Category_id) Values (3,1), (3,4), (3,9), (3,12), (3,13), (3,15), (3,19), (3,24), (3,34), (3,43),(3,44), (3,48);
insert into tripmatcher.tripcategory (Trip_id, Category_id) Values (4,2), (4,14), (4,16), (4,27), (4,28), (4,29), (4,31), (4,33), (4,34), (4,37), (4,38), (4,40), (4,45), (4,47), (4,48);
insert into tripmatcher.tripcategory (Trip_id, Category_id) Values (5,2), (5,3), (5,15), (5,29), (5,30), (5,37), (5,38), (5,47), (5,48);
insert into tripmatcher.tripcategory (Trip_id, Category_id) Values (6,14), (6,15), (6,27), (6,28), (6,29), (6,31), (6,32), (6,33), (6,34), (6,37), (6,38), (6,39), (6,41), (6,42), (6,45), (6,46), (6,48);
insert into tripmatcher.tripcategory (Trip_id, Category_id) Values (7,1), (7,5), (7,6), (7,9), (7,13), (7,15), (7,16), (7,17), (7,18), (7,19), (7,20), (7,21), (7,35), (7,37), (7,38), (7,39), (7,40), (7,42), (7,43), (7,44), (7,45), (7,46), (7,48);
insert into tripmatcher.tripcategory (Trip_id, Category_id) Values (8,1), (8,6), (8,8), (8,13), (8,15), (8,16), (8,17), (8,19), (8,21), (8,22), (8,33), (8,34), (8,35), (8,37), (8,38), (8,39), (8,40), (8,42), (8,43), (8,44), (8,45), (8,46), (8,48); 
insert into tripmatcher.tripcategory (Trip_id, Category_id) Values (9,1), (9,3), (9,7), (9,10), (9,13), (9,15), (9,16), (9,17), (9,18), (9,19), (9,20), (9,27), (9,29), (9,32), (9,33), (9,34), (9,35), (9,37), (9,38), (9,39), (9,40), (9,41), (9,42), (9,43), (9,45), (9,48);

