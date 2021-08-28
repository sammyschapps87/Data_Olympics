# **ETL Olympic Committee**
Our project plans to gather data for an athletics sportswear company.  We plan to look at Summer Olympics Data from 2021 as well as from previous summer olympics. We will create a database using medal count, country, athlete, and sport event data.

##brief description of final database

##Purpose of Final Database
By using a relational database to load our data, we aim to create and provide meaningful information from the data. A relational database also helps us to understand the relationship between the tables and how they interact with each other
---
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
## Group Members
- [Saleha Ahmed](https://github.com/saleha456)
- [Sam Schappel](https://github.com/sammyschapps87)
- [Brian Johnson](https://github.com/Bjohnson08021)
- [Vasav Dave](https://github.com/vasavdave)
- [Tinu Adepoju](https://github.com/Tinuola-1)

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

- To create our host city table the large data set containing olympic data from 1976 - 2008 was filtered to only show which city hosted the olympics and when. In order to do this the csv file was read into pandas and cleaned to only give values for the variables City and Year. After this na values were dropped as well as all duplicate rows (there were a lot of them) in order to get a small and precise table. Since this csv file only contained data up to the year 2008, we created a separate pandas dataframe to account for years 2012, 2016 and 2021. These two data frames were then merged to get our complete Host City table. 
- 

#### Historical Olympics Data Extraction
- Downloaded [Historical Olympics Dataset](https://www.kaggle.com/divyansh22/summer-olympics-medals) from 1976-2008 in form of .csv files 
- Placed this file in common [Dataset](https://github.com/sammyschapps87/Data_Olympics_proj_2/tree/main/Data_Sets) folder
- Read the .csv file into Jupyter Notebook for cleaning and transformation

---
#### 2. Transformations
- 
- 
- 
---
#### 3. Load
- 
- 
- 
- 
---
## Final Products 

####   ERD
![](Images/ERD.png)

#### Sample Queries


## Project Status
#### This project is in progress.
