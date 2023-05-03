CREATE TABLE Magazine(
    Magazine_ID NUMBER(30) PRIMARY KEY,
    Magazine_Name VARCHAR2(100) UNIQUE,
    Publish_Date Date,
    Review VARCHAR2(100),
    Rating NUMBER(10,1)  
    CHECK (Rating > 0)
    CHECK (Rating < 6),
    Price NUMBER(30),
    Language VARCHAR2(100),
    Age_Limit NUMBER(30)
);
Create Table Article(
   Article_Id number(30) primary key,
   Magazine_Id references Magazine(Magazine_Id),
   Author VARCHAR2(20)
);

Create Table Category(
  Category_Name VARCHAR2(50),
  Article_Id references Article(Article_Id)
);
CREATE TABLE User_(
    User_ID number(30) primary key,
    First_Name VARCHAR2(20) NOT NULL,
    Last_Name VARCHAR2(20) NOT NULL,
    Email VARCHAR2(100) NOT NULL UNIQUE,
    Password VARCHAR2(100) NOT NULL UNIQUE
);

CREATE TABLE Subscriber(
    Subscriber_ID INT references User_(User_Id)  PRIMARY KEY,
    Birth_date DATE NOT NULL
);

CREATE TABLE Content_Creator(
    Content_Creator_ID references User_(User_Id),
    Magazine_Id references Magazine(Magazine_Id)
);

CREATE TABLE Admin(
Admin_ID NUMBER references User_(User_Id) PRIMARY KEY
);

Create Table Purchase(
  Purchase_id number(30) Primary key,
  Subscriber_ID references Subscriber(Subscriber_Id),
  Magazine_Id references Magazine(Magazine_Id),
  Amount number(7),
  Method varchar2(10),
  State varchar2(10),
  discount number(30)
  );
