

CREATE TABLE HostCity (
    id              INT               NOT NULL,
    City            VARCHAR(20)       NOT NULL,
    Year            INT               NOT NULL,
    PRIMARY KEY (Year)
);
	 
	

CREATE TABLE Events (
    id          INT               NOT NULL,
    Sport       VARCHAR(50) ,
	Discipline 	VARCHAR(50),
	PRIMARY KEY (Discipline)

);

drop table events






CREATE TABLE Countries (
    id              INT               NOT NULL,
    Name            VARCHAR(50)       NOT NULL,
    NOC             VARCHAR(50)       NOT NULL,
    PRIMARY KEY (NOC)
);




--CREATE TABLE Athletes (
--    id              INT  ,
--    Name            VARCHAR(50),
--    Country         VARCHAR(50),
--    PRIMARY KEY (id)
    --FOREIGN KEY (Country) REFERENCES Countries(NOC)
--);





CREATE TABLE Medals (
    id              INT               NOT NULL,
    Year            INT               NOT NULL,
    Country         VARCHAR(50)       NOT NULL,
    Gold            INT               NOT NULL,
    Silver          INT               NOT NULL,
    Bronze          INT               NOT NULL,
    Total           INT               NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (Country)             REFERENCES Countries(NOC),
    FOREIGN KEY (Year)                REFERENCES HostCity(Year)
);



CREATE TABLE EventWinners (
    id              INT               NOT NULL,
    Year            INT               NOT NULL,
    Sport           VARCHAR(50)       NOT NULL,
    Discipline      VARCHAR(50)       NOT NULL,
    Event           VARCHAR(50)       NOT NULL,
    Athlete         VARCHAR(50)       NOT NULL,
    Gender          VARCHAR(50)       NOT NULL,
    Country         VARCHAR(50)       NOT NULL,
    Event_gender    VARCHAR(50)       NOT NULL,
    Medal           VARCHAR(10)       NOT NULL,
    FOREIGN KEY (Year)                REFERENCES HostCity(Year),
    FOREIGN KEY (Discipline) 		  REFERENCES Events(Discipline),
    FOREIGN KEY (Country)             REFERENCES Countries(NOC)	
);

drop table eventwinners


CREATE TABLE MultiWinnningAthletes (
    Rank            INT ,
    Athlete         VARCHAR(50),
    Nation          VARCHAR(50),
    Sport           VARCHAR(50),
    Years           VARCHAR(15),
    Games           VARCHAR(50),
    Gender          VARCHAR(10),
    Gold            INT               NOT NULL,
    Silver          INT               NOT NULL,
    Bronze          INT               NOT NULL,
    Total           INT               NOT NULL,
    --FOREIGN KEY (Athlete) REFERENCES Athletes(Name),
    FOREIGN KEY (Nation)              REFERENCES Countries(NOC)
    --FOREIGN KEY (Sport) REFERENCES Events(Discipline)
);

select * from MultiWinnningAthletes

DROP TABLE MultiWinnningAthletes

DROP TABLE EventWinners
DROP TABLE Medals
DROP TABLE Athletes
DROP TABLE Countries
DROP TABLE Events
DROP TABLE HostCity




select * from MultiWinnningAthletes


