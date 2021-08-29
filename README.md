# **ETL Olympic Committee**
Our project plans to gather data for an athletics sportswear company.  We plan to look at Summer Olympics Data from 2021 as well as from previous summer olympics. We will create a database using medal count, country, athlete, and sport event data. 

## Brief Description of Final Database
A Database named "Olympics" with Sql tables showing the relationship between Athletes, the countries they represent, the events they participated in, the category and number of medals they won.
Dependencies used; Pandas, Numpy, Beautiful Soup, and Splinter.

## Purpose of Final Database
By using a relational database to load our data, we aim to create and provide meaningful information from the data. A relational database also helps us to understand the relationship between the tables and how they interact with each other. This Database will help the sportswear company to deciide which athlete and country to sponsor.

## Table of Contents
- [Group Members](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/README.md#group-members)
- [Questions to Ask](https://github.com/sammyschapps87/Data_Olympics_proj_2#questions-to-ask)
- [Data Sources](https://github.com/sammyschapps87/Data_Olympics_proj_2#data-sources)
    [CSV](https://github.com/sammyschapps87/Data_Olympics_proj_2#csv)
    [HTML](https://github.com/sammyschapps87/Data_Olympics_proj_2#html) 
- [ETL Process](https://github.com/sammyschapps87/Data_Olympics_proj_2#etl-process)
    1. [Extraction](https://github.com/sammyschapps87/Data_Olympics_proj_2#1-extraction)
    2. [Transformations](https://github.com/sammyschapps87/Data_Olympics_proj_2#2-transformations)
    3. [Load](https://github.com/sammyschapps87/Data_Olympics_proj_2#3-load)







---
## Questions to Ask 
1. What athletes have the most medals? 
2. What countries performed the best and which sport/event?
3. What event/sport is most popular in the US?

---
## Data Sources
#### CSV

    - https://www.kaggle.com/divyansh22/summer-olympics-medals
    - https://www.kaggle.com/berkayalan/2021-olympics-medals-in-tokyo
    - https://www.kaggle.com/arjunprasadsarkhel/2021-olympics-in-tokyo 

#### HTML
    - https://en.wikipedia.org/wiki/List_of_multiple_Olympic_gold_medalists
---

### 1. Extraction


#### Tokyo Olympics Data Extraction

- Downloaded [Tokyo Olympics Medal Count](https://www.kaggle.com/berkayalan/2021-olympics-medals-in-tokyo) as [.csv file](https://github.com/sammyschapps87/Data_Olympics_proj_2/tree/main/Data_Sets/Tokyo_Medals_2021) 
- Downloaded Information regadring [Teams, Athletes, Medals, Gender](https://www.kaggle.com/arjunprasadsarkhel/2021-olympics-in-tokyo) in form of [.xlsx files](https://github.com/sammyschapps87/Data_Olympics_proj_2/tree/main/Data_Sets/Tokyo_2020)
- Used webscraping to download the [list of most Olympic gold medals over any career](https://en.wikipedia.org/wiki/List_of_multiple_Olympic_gold_medalists)
- This is the list of multiple Olympic gold medalists, listing people who have won four or more Olympic gold medals.
- Read these files into Jupyter Notebook for cleaning 
-



#### Historical Olympics Data Extraction
- Downloaded [Historical Olympics Dataset](https://www.kaggle.com/divyansh22/summer-olympics-medals) from 1976-2008 in form of .csv file
- This file contains information about medal awarded between the period of 1976-2008 in the Summer Olympics.
- Extracted infomration about athlete, their country, gender, discipline in which he/she won and the event name from this [dataset](https://github.com/sammyschapps87/Data_Olympics_proj_2/tree/main/Data_Sets/Summer%20Olympics%20Medals%201976-2008)
- Placed this file in common [Dataset](https://github.com/sammyschapps87/Data_Olympics_proj_2/tree/main/Data_Sets) folder
- Read the .csv file into Jupyter Notebook for cleaning and transformation
- 


---
### 2. Transformations


**[Host City Table](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Notebooks/Host%20City.ipynb)**
- Historical Dataset from 1976-2008 was filtered to capture Host Cities and the year it was organized in
- Dropped NA as well as duplicate values to obtain unique values
- Historical Datasets and Tokyo 2021 Datasets were merged to create complete Host City table

**[Events Table](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Notebooks/events.ipynb)**

**[Countries Table](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Notebooks/Countries.ipynb)**

**[Medals Table](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Notebooks/Medal%20Winners.ipynb)**

**[Event Winners](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Notebooks/Event%20Winners.ipynb)**

**[Multi Winning Athletes](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Notebooks/Multi%20Winning%20Athletes.ipynb)**
 
 
- To create our host city table the large data set containing olympic data from 1976 - 2008 was filtered to only show which city hosted the olympics and when. In order to do this the csv files were read into pandas and cleaned to only give values for the variables City and Year. After this na values were dropped as well as all duplicate rows (there were a lot of them) in order to get a small and precise table. Unique values were also obtained. Since this csv file only contained data up to the year 2008, we created a separate pandas dataframe to account for years 2012, 2016 and 2021. These two data frames were then merged to get our complete Host City table. 
 
- The Countries data frame was created by reading in the Team.xlsx and Summer-Olympic-medals-1976-to-2008.csv into pandas. We filtered the table for the 1976-2008 data frame to only include variables Country and Country_Code. The teams data frame was also filtered to only include variables NOC and Name. The variable NOC was then renamed Country in order to merge the two. We then dropped all duplicates from both data frames. The data frames were then merged using pd.concat and once again we dropped all duplicate rows from the data frame. Country names were then renamed so that there were no misconceptions since the same country could have two different names. After all this the data frame was converted to a csv.
 
- The event_winners data frame was created by reading the 1976-2008 csv file into pandas. The data was filtered to only include variables Year, Sport, Discipline, Event, Athlete, Gender, Country,   Event_gender and Medal. The variable Year was then changed into an integer to get rid of a decimal that should not be there. After that it was turned into a csv file. 
 
- To create the Medals winner table the Medals.xlsx was read into pandas. We then renamed variables Team/NOC to Country and Total to Medal. The Rank by Total variable was then dropped from the table and a new variable called year was created to represent the year as 2021. We then loaded in the 1976-2008 csv and filtered it so that the only variables were Year, Country and Medal. We then created three separate data frames each of which containing only information for either gold silver or bronze medals. (NOT FINISHED)
 
- To create the Multi_Winning_Athletes data frame we loaded in the html https://en.wikipedia.org/wiki/List_of_multiple_Olympic_gold_medalists into pandas. We then dropped all na values and changed the names of some countries, athletes and sports to avoid confusion. The variables Gold, Silver, Bronze and Total were then changed to integers and the file was turned into a csv. 
- The events data frame was created by loading the 1976-2008 csv into pandas and filtering to only show variables Sport and Discipline. Duplicates were then dropped as well as na values and turned it into a csv file. 
---
### 3. Load
- Load into postgres with tables in the order they were created
- We chose postgres SQL because of it's tables function and its capability to easily display our answers to the questions asked. 
- Follow [instructions.md](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Instructions.md) to load tables.
- 
---
## Final Products 

####   ERD
![](Images/ERD.png)

#### Sample Queries
#### What athletes have the most medals?
<img src="https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Images/athletes_with_the_most_medals%20(2).png">
 What countries performed the best and which sport/event?
<img src="https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Images/countries_performed_best%20(2).png" width="300" height="300">
 What event/sport is most popular in the US?
<img src="https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Images/sports_most_popular_in_US%20(2).png">



## Project Status
#### This project is in progress.


---
## Group Members
- [Saleha Ahmed](https://github.com/saleha456)
- [Sam Schappel](https://github.com/sammyschapps87)
- [Brian Johnson](https://github.com/Bjohnson08021)
- [Vasav Dave](https://github.com/vasavdave)
- [Tinu Adepoju](https://github.com/Tinuola-1)
