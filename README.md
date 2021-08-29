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

- Downloaded [Tokyo Olympics Medal Count](https://www.kaggle.com/berkayalan/2021-olympics-medals-in-tokyo) as [.csv file](https://github.com/sammyschapps87/Data_Olympics_proj_2/tree/main/Data_Sets/Tokyo_Medals_2021) .
- Downloaded Information regadring [Teams, Athletes, Medals, Gender](https://www.kaggle.com/arjunprasadsarkhel/2021-olympics-in-tokyo) in form of [.xlsx files](https://github.com/sammyschapps87/Data_Olympics_proj_2/tree/main/Data_Sets/Tokyo_2020).
- Used webscraping to download the [list of most Olympic gold medals over any career](https://en.wikipedia.org/wiki/List_of_multiple_Olympic_gold_medalists)
- This is the list of multiple Olympic gold medalists, listing people who have won four or more Olympic gold medals.
- Read these files into Jupyter Notebook for cleaning.



#### Historical Olympics Data Extraction
- Downloaded [Historical Olympics Dataset](https://www.kaggle.com/divyansh22/summer-olympics-medals) from 1976-2008 in form of .csv file.
- This file contains information about medal awarded between the period of 1976-2008 in the Summer Olympics.
- Extracted infomration about athlete, their country, gender, discipline in which he/she won and the event name from this [dataset](https://github.com/sammyschapps87/Data_Olympics_proj_2/tree/main/Data_Sets/Summer%20Olympics%20Medals%201976-2008).
- Placed this file in common [Dataset](https://github.com/sammyschapps87/Data_Olympics_proj_2/tree/main/Data_Sets) folder.
- Read the .csv file into Jupyter Notebook for cleaning and transformation.


---
### 2. Transformations


**[Host City Table](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Notebooks/Host%20City.ipynb)**
- Historical Dataset from 1976-2008 was filtered to capture Host Cities and the year it was organized in.
- Dropped NA as well as duplicate values to obtain unique values.
- Historical Datasets and Tokyo 2021 Datasets were merged to create complete Host City table.

**[Events Table](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Notebooks/events.ipynb)**
- Newly introduced sports, events and discplines were not present in Historical dataset.
- Captured those events from web scraping and Tokyo olympics. 
- Events table was created by adding these disciplines and sports into single dataframe.

**[Countries Table](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Notebooks/Countries.ipynb)**
- Captured countries data from [Teams excel](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Data_Sets/Tokyo_2020/Teams.xlsx) and historical summer olympics
- Filtered data to capture countries with country codes. 
- Transformed two columns (NOC, Country) into single column to concatenate two datasets.
- Dropped duplicates and transfromed country names if changed from past.
- Newly introduced countries were identified, captured and added to the table.

**[Medals Table](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Notebooks/Medal%20Winners.ipynb)**
- Intention of this table was to create a record of medal winner countries from 1976 to 2021.
- Data was collected from two dataframes and was grouped by year and country.
- Medal information was then transfromed from rows to columns to display medals won by each country every olympic.
- NAs were replaced with zeroes, floats to integers.
- Medal counts were then categorized and summarized into one table.

**[Event Winners](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Notebooks/Event%20Winners.ipynb)**
- Created the events data frame by loading the 1976-2008 csv into pandas.
- Filtered to show variables Year, Sport, Discipline, Event, Athlete, Gender, Country, gender by events and Medals. 
- Floats were converetd to integers for Years column.
- Dropped duplicates as well as na values to convert into a csv file.

**[Multi Winning Athletes](https://github.com/sammyschapps87/Data_Olympics_proj_2/blob/main/Notebooks/Multi%20Winning%20Athletes.ipynb)**
 - This table captures important and detailed information about any athelete including gender, country, category and summary of the medals won, years during which medals were won, discipline of the sport.
- Beautiful Soup, Splinter, Chrome Driver manager helped in extracting data from HTML.
- Data extracted from HTML web scraping was used to create a dataframe
- Country and Athlete names were then transformed to capture updated and unified names across time and data frames.
- Junk annd foreign characters were dismissed.
- Multiple sports distributed under same category were unified.
- Floats were converted to integers to neatly present this infromation.
 
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
 What countries performed the best and which sport/event over multiple years?
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
