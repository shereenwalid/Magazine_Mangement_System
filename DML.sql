
Insert into Magazine(Magazine_ID, Magazine_Name, Publish_Date, Review, Rating, Price, Language, Age_Limit) 
Values(3, 'Always awake traveller', TO_DATE('2021-10-12', 'YYYY-MM-DD'), 'helped me a lot!', 4, 25, 'English', 18);
Insert into Magazine(Magazine_ID, Magazine_Name, Publish_Date, Review, Rating, Price, Language, Age_Limit) 
Values(2,'Boom', TO_DATE('2022-11-12','YYYY-MM-DD'), 'has a lot of interesting topics', 4.5, 0, 'English', 13);
Insert into Magazine(Magazine_ID, Magazine_Name, Publish_Date, Review, Rating, Price, Language, Age_Limit) 
Values(1, 'Echociew', TO_DATE('2020-12-17','YYYY-MM-DD'), 'very diverse', 4, 22, 'English', 18);

ALTER TABLE Article
ADD article_name VARCHAR2(255);

Insert into Article(Article_Id, Magazine_Id, Author, Article_Name) 
Values(1, 2, 'jim Carrey', 'Music and Life');
Insert into Article(Article_Id, Magazine_Id, Author, Article_Name) 
Values(2, 1, 'Anna Wintour', 'Fashion Trends');
Insert into Article(Article_Id, Magazine_Id, Author, Article_Name) 
Values(3, 2, 'Emma', 'Stay Awake');
Insert into Article(Article_Id, Magazine_Id, Author, Article_Name) 
Values(4, 3, 'joe', 'Business Strategies');

Insert into Category(Category_Name, Article_Id) 
Values('fashion', 2);
Insert into Category(Category_Name, Article_Id) 
Values('business', 4);
Insert into Category(Category_Name, Article_Id) 
Values('traveling', 3);
Insert into Category(Category_Name, Article_Id) 
Values('music', 1);

Insert into User_(User_ID, First_Name, Last_Name, Email, Password) 
Values(1, 'Lara', 'White', 'lara@email.com', 'Lara2355');
Insert into User_(User_ID, First_Name, Last_Name, Email, Password) 
Values(2, 'Sarah', 'Ahmed', 'sarah@email.com', 'Sarahx2');
Insert into User_(User_ID, First_Name, Last_Name, Email, Password) 
Values(3, 'Jana', 'Sherief', 'jana@email.com', 'Janajj23');
Insert into User_(User_ID, First_Name, Last_Name, Email, Password) 
Values(4, 'Tara', 'Emad', 'tara@email.com', 'Tarafht456');
Insert into User_(User_ID, First_Name, Last_Name, Email, Password) 
Values(5, 'Ahmed', 'Hatem', 'ahmed@email.com', 'Ahmed55_');
Insert into User_(User_ID, First_Name, Last_Name, Email, Password) 
Values(6, 'Sara', 'Khaled', 'sara_khaled@email.com', 'pass123');
Insert into User_(User_ID, First_Name, Last_Name, Email, Password) 
Values(7, 'Ali', 'Samir', 'ali@email.com', 'As1234');
Insert into User_(User_ID, First_Name, Last_Name, Email, Password) 
Values(8, 'Samir', 'Emad', 'samir@email.com', 'Cc_7658');
Insert into User_(User_ID, First_Name, Last_Name, Email, Password) 
Values(9, 'Adel' , 'Tarek', 'Adel@email.com', 'Adel666');


Insert into Admin (Admin_ID) values(1);
Insert into Admin (Admin_ID) values(2);
Insert into Subscriber(Subscriber_ID, Birth_date)
Values( 3,to_date('2000-12-11','yyyy-mm-dd'));
Insert into Subscriber(Subscriber_ID, Birth_date)
Values( 4,to_date('2003-11-10','yyyy-mm-dd'));
Insert into Subscriber(Subscriber_ID, Birth_date)
Values( 5,to_date('1999-10-10','yyyy-mm-dd'));
Insert into Content_Creator(Content_Creator_ID, Magazine_Id) 
Values (6,2);
Insert into Content_Creator(Content_Creator_ID, Magazine_Id) 
Values (7,3);
Insert into Content_Creator(Content_Creator_ID, Magazine_Id) 
Values (8,2);
Insert into Content_Creator(Content_Creator_ID, Magazine_Id) 
Values (9,1);


Insert into Purchase(Purchase_id, Subscriber_ID, Magazine_Id, Amount, Method, State, discount) 
Values(50,4,2,100, 'visa','paid', 15);
Insert into Purchase(Purchase_id, Subscriber_ID, Magazine_Id, Amount, Method, State, discount) Values(60,5,3,40, 'cash','pending',20);
Update magazine set price = 1000;


Insert into content_creator(content_creator_id, magazine_id)
values(6,3);

Insert into content_creator(content_creator_id, magazine_id)
values(6,1);

Insert into content_creator(content_creator_id, magazine_id)
values (7,2);
Insert into content_creator(content_creator_id, magazine_id)
values(7,1);
Insert into content_creator(content_creator_id, magazine_id)
values (8,3);

Insert into content_creator(content_creator_id, magazine_id)
values(8,1);
Insert into content_creator(content_creator_id, magazine_id)
values (9,3);
Insert into content_creator(content_creator_id, magazine_id)
values(9,2);

insert into article (article_id, magazine_id, author, article_name)
values (5, 3, 'ana winter', 'fashion week');
insert into article (article_id, magazine_id, author, article_name)
values (8, 3, 'ana winter', 'article1');
insert into article (article_id, magazine_id, author, article_name)
values (7, 3, 'ana winter', 'article2');
insert into article (article_id, magazine_id, author, article_name)
values (11, 3, 'ana winter', 'article3');
insert into article (article_id, magazine_id, author, article_name)
values (9, 3, 'ana winter', 'article4');
insert into article (article_id, magazine_id, author, article_name)
values (12, 3, 'anna wintour', 'article5');


insert into purchase(purchase_id, subscriber_id, magazine_id, amount, method, state, discount)
values (52, 4, 2, 2000, 'visa', 'done', 10);
insert into purchase(purchase_id, subscriber_id, magazine_id, amount, method, state, discount)
values (53, 4, 1, 1000, 'visa', 'done', 10);
insert into purchase(purchase_id, subscriber_id, magazine_id, amount, method, state, discount)
values (54, 4, 3, 1000, 'visa', 'done', 10);

insert into purchase(purchase_id, subscriber_id, magazine_id, amount, method, state, discount)
values (56, 4, 2, 1000, 'visa', 'done', 10);



-- Commit the changes to the database
commit;
