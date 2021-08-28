

CREATE TABLE HostCity (
    id int NOT NULL,
    City varchar(20)  NOT NULL,
    Year int   NOT NULL,
    PRIMARY KEY (Year)
     );
	 
	

CREATE TABLE Events (
    id int NOT NULL,
    Events varchar(50) ,
    Discipline varchar(50),
    Gender varchar(50)
);




CREATE TABLE Countries (
    id int   NOT NULL,
    Name varchar(50)   NOT NULL,
    NOC varchar(50)   NOT NULL,
	PRIMARY KEY (NOC)
);



CREATE TABLE Athletes (
    id int  ,
    Name varchar(50),
	Country varchar(50),
    PRIMARY KEY (id)
	--FOREIGN KEY (Country) REFERENCES Countries(NOC)
);

drop table athletes

select * from athletes




CREATE TABLE Medals (
    id int   NOT NULL,
    Year int   NOT NULL,
    Country varchar(50)   NOT NULL,
    Gold int   NOT NULL,
    Silver int   NOT NULL,
    Bronze int   NOT NULL,
    Total int   NOT NULL,
  	PRIMARY KEY (id),
	FOREIGN KEY (Country) REFERENCES Countries(NOC),
	FOREIGN KEY (Year) REFERENCES HostCity(Year)
);



CREATE TABLE EventWinners (
    id int   NOT NULL,
    Year int   NOT NULL,
    Sport varchar(50)   NOT NULL,
    Discipline varchar(50)   NOT NULL,
    Event varchar(50)   NOT NULL,
    Athlete varchar(50)   NOT NULL,
    Gender varchar(50)   NOT NULL,
    Country varchar(50)   NOT NULL,
    Event_gender varchar(50)   NOT NULL,
    Medal varchar(10)   NOT NULL,
    FOREIGN KEY (Year) REFERENCES HostCity(Year),
--	FOREIGN KEY (Sport) REFERENCES Events(Discipline),
	FOREIGN KEY (Country) REFERENCES Countries(NOC)
	
);


CREATE TABLE MultiWinnningAthletes (
    Rank int ,
    Athlete varchar(50),
    Nation varchar(50),
    Sport varchar(50),
    Years varchar(15),
	Games varchar(50),
    Gender varchar(10),
    Gold int   NOT NULL,
    Silver int   NOT NULL,
    Bronze int   NOT NULL,
    Total int   NOT NULL,
	--FOREIGN KEY (Athlete) REFERENCES Athletes(Name),
	FOREIGN KEY (Nation) REFERENCES Countries(NOC)
	--FOREIGN KEY (Sport) REFERENCES Events(Discipline)
);

drop table MultiWinnningAthletes