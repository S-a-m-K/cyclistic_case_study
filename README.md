<h1>Google Data Analytics: Cyclistic Case Study</h1> 

Course: [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone)


**Author: Samuel Kleger**  
**Date: 2024-08-16**


# **Introduction**

In this case study, I work as a junior data analyst with the marketing team at Cyclistic, a bicycle company in Chicago. Marketing leadership wants to maximize annual memberships, so the team wants to understand the differences in usage between casual riders and annual members. Based on these insights, the team will develop a new marketing strategy to convert casual riders into annual members.

---

#### Table of Content
- [Introduction](#Introduction)
- [Ask](#Ask)
  - [Stakeholder](#Stakeholder)
  - [Buisness Task](#Buisness-Task)
  - [Analysis Questions](#Analysis-Questions)
- [Prepare](#Prepare)
  - [Data Source](#Data-Source)
  - [Confirmation of the ROCCC-Process](#Confirmation-of-the-ROCCC-Process)
- [Process](#Process)
  - [Combining the Data](#Combining-the-Data)
  - [Data Exploration](#Data-Exploration)
  - [Observations](#Observations)
  - [Data Cleaning](#Data-Cleaning)
- [Analysing](#Analysing)
- [Share](#Share)
  - [Data Visualization](#Data-Visualization)
  - [Summary](#Summary)
- [Act](#Act)

---

# **Ask**



<div style="margin-bottom: 40px;">

</div>

### **Stakeholder** 


**Lily Moreno**: Marketing Director - responsible for developing campaigns and initiatives to promote the bike sharing program. This includes email, social media and other channels.

**Cyclist Marketing Analytics Team**: Data analysis professionals.

**Cyclist Leadership Team**: Decides whether to approve the recommended marketing program.

<div style="margin-bottom: 40px;">

</div>

### **Buisness Task**

Analyze Cyclistic's data to identify usage differences between casual riders and annual members. Based on these findings, make a general recommendation on how these trends could influence Cyclistic's marketing strategy to convert casual riders into members.

### **Analysis Questions**

Three questions are relevant to the future marketing program:
1. How does the use of Cyclistic differ between annual members and casual riders?
2. Why should casual riders purchase a Cyclistic annual membership?
3. How can Cyclistic use digital media to encourage casual riders to join?

Mrs. Moreno tasked me with answering the first question:
How does the use of Cyclistic differ between annual members and casual riders?

# **Prepare**


### **Data Source**

This is the historical trip data from a cycling company. The data sets have a different name because Cyclistic is a fictitious company. The datas sets are appropriate for the purposes of this case study and allow to answer the company-related questions.

This is public data that you can use to find out how different types of customers use Cyclistic's bikes.

Note, however, that for privacy reasons, you cannot use any of the customers' personal data. This means that you cannot link single ticket purchases to credit card numbers to determine whether occasional riders live in Cyclistic's catchment area or have purchased multiple single trips.

**Source**: Data provided by Motivate International Inc

**License**: https://divvybikes.com/data-license-agreement

**Type**: CSV

**Format**: Long Data

**Duration**: December 2022 - April 2023

<div style="margin-bottom: 40px;">

</div>

### **Confirmation of the ROCCC-Process**

* **Reliable**: The data comes from a real bicycle company. Some entries are missing.

* **Original**: The data is original and was provided by Motivate International Inc.

* **Comprehensive**: The datasets are suitable for the purposes of this case study and enable you to answer the company-related questions. For marketing purposes and to target customers, personal information such as gender, age and place of residence would be advantageous.

* **Current**: The dataset is constantly updated and is therefore up to date.

* **Cited**: The data was provided by Motivate International Inc., a real bicycle company.

* **License**: This is not personal data. Therefore, there are no data protection concerns to consider.

<div style="margin-bottom: 40px;">

</div>

# **Process**


Since the data set contains several million rows, it is important to use a platform that supports large amounts of data. For this purpose, I used BigQuery to combine the different data sets and clean them.

### **Combining the Data**

SQL Query: [Data Combining](https://github.com/S-a-m-K/cyclistic_case_study/blob/main/01.%20Data%20Combining.sql)

5 CSV files are uploaded as tables to the cyclistic_trip_data dataset. Another table named cyclistic_combined_trip_data_01 is created which contains 1,247,820 rows of data for these 5 months.

### Data Exploration
SQL Query: [Data Exploration](https://github.com/S-a-m-K/cyclistic_case_study/blob/main/02.%20Data%20Exploration.sql)  

### Observations:

1. The table below shows all columns
<img width="461" alt="image" src="https://github.com/user-attachments/assets/4aed62a4-39c4-4512-b037-14eb840db9e7">

2. Count number of rows
<img width="187" alt="image" src="https://github.com/user-attachments/assets/dafa5d7e-75ad-4897-8ed4-132547194edb">

3. Checking for numbers of null values and i find some in this 4 rows
<img width="759" alt="image" src="https://github.com/user-attachments/assets/5ca625f7-0c31-4472-9c7f-9d1a4d1aa5ac">

4. Checking for dublicate rows
<img width="185" alt="image" src="https://github.com/user-attachments/assets/d7b6f8f1-f4f9-43f5-b305-61bdb2fb9d62">

5. Checking if ride_id has a length of 16
<img width="270" alt="image" src="https://github.com/user-attachments/assets/ec1e68ee-d52a-43f4-a3fa-27a038fce04e">

6. Checking if timestamp values all have the same length
<img width="270" alt="image" src="https://github.com/user-attachments/assets/214e3ab5-f50a-4381-a602-47f942dffd73">

7. Checking for whitespace and find 161 rows
<img width="1061" alt="image" src="https://github.com/user-attachments/assets/edb2bb1d-6782-4597-aad7-3c64cf5a2cc3">

8. Count number of trips per bike
<img width="385" alt="image" src="https://github.com/user-attachments/assets/39138ab1-4d92-4571-b293-d45b7a1cbd20">

9. Total trips that last longer than a day
<img width="185" alt="image" src="https://github.com/user-attachments/assets/febd5bb0-0b22-4210-8f8f-c089a9f9ed2b">

10. Total trips that last shorter than a minute
<img width="185" alt="image" src="https://github.com/user-attachments/assets/0ee61cbe-3c4f-4e24-ad20-963b65b1d8f5">

11. Check if how many rows has all location details
<img width="186" alt="image" src="https://github.com/user-attachments/assets/7dfb2e48-e4db-4d48-9a53-32491a8202de">

12. Which members use which station and how many times
<img width="586" alt="image" src="https://github.com/user-attachments/assets/02d4a3dd-ecf1-42d5-809d-31a5a5decbcc">

13. How many times members and casuals rent a bike
<img width="386" alt="image" src="https://github.com/user-attachments/assets/1cd3c501-a96b-4ea0-8032-dd759cfbb0c8">

### Data cleaning

SQL Query: [Create a new clean table](https://github.com/S-a-m-K/cyclistic_case_study/blob/main/03.%20Data%20Cleaning)

- All rows with missing values ​​were deleted
- New columns were added: day_of_week, month and ride_length
- Whitespace from start_station_name and end_station_name were deleted
- Trips that lasted less than one minute or longer than one day were removed
- A total of 315,415 rows were removed

# **Analysing**

SQL Query: [Data Analysing](https://github.com/S-a-m-K/cyclistic_case_study/blob/main/04.%20Data%20Analysing.sql)

The data is now prepared for analysis and several queries are asked to answer the real question:

How does bike usage differ between annual members and occasional riders?

To answer this question, I need to understand riding habits.

- First, we compare who uses what type of bikes
<img width="584" alt="image" src="https://github.com/user-attachments/assets/ed1ea227-e004-4909-be82-44d2674a0c3e">

- Who rides at what time of day?
<img width="509" alt="image" src="https://github.com/user-attachments/assets/2b378fed-f2df-4bed-8525-b2d56e03e13f">

- Who rides on what day of the week?
<img width="584" alt="image" src="https://github.com/user-attachments/assets/0cbfcb15-b41e-4e42-be3e-b7a41e0e7ead">

- Who rides in what months?
<img width="586" alt="image" src="https://github.com/user-attachments/assets/84d2cf47-ab33-4031-919e-e4ffca2f4548">

- The average ride length per time of day
<img width="508" alt="image" src="https://github.com/user-attachments/assets/accd7431-890a-4099-b023-2524d587bd91">

- The average ride length per day of the week
<img width="585" alt="image" src="https://github.com/user-attachments/assets/1ba7a31a-b45c-4b26-b98d-55a02d3e9d93">

- The average ride length per month
<img width="584" alt="image" src="https://github.com/user-attachments/assets/66231384-dac5-4027-b1e4-01c236c002c8">

- What location are the bikes rented from?
<img width="881" alt="image" src="https://github.com/user-attachments/assets/723ad718-f264-43c5-8734-a128ed921685">

- Where does the trip end?
<img width="880" alt="image" src="https://github.com/user-attachments/assets/5531d1c7-1b35-43df-9949-9fa68fdd969a">

# **Share**

### Data Visualization 

For the analysis process "Share" I chose [Tableau](https://public.tableau.com/views/CyclisticCaseStudy_17246685586230/CyclisiticCaseStudy?:language=en-GB&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link).

<img width="998" alt="image" src="https://github.com/user-attachments/assets/d0489f03-72e5-45df-93a6-5c340b6e9029">

Over 300,000 users who used the bikes in these five months are casuals. Compared to the total number of members, that's almost a third.

<img width="989" alt="image" src="https://github.com/user-attachments/assets/5025fb27-6e91-40d9-94cc-ccc3dc2bd0d1">

Over 110,000 of the casuals use classic bikes. Over 200,000 use electric bikes. Compared to the members, this amounts to almost a quarter for classic bikes. For electric bikes, it is almost 30 percent of the total users. In contrast, docked bikes are only used by casuals.

Next, let's take a look at the number of trips by daytime.

<img width="991" alt="image" src="https://github.com/user-attachments/assets/164196ff-6ac7-4f7b-8b8d-a7efa25c687f">

The members show two peaks over the course of the day. Between 7 and 8 a.m. and then again between 4 and 5 in the afternoon. These peaks roughly correspond to the time range of the start and end of work for an average job. Things are different for casual riders. The line diagram clearly shows that the number of trips increases steadily from the morning, reaches the peak around 5 a.m. and then levels off. I would attribute this behavior more to occasional riders who use the bike for leisure activities.

Next, the number of trips distributed over the days of the week.

<img width="993" alt="image" src="https://github.com/user-attachments/assets/1eaefd78-cf30-441c-bb98-1ae35a8d0340">

When comparing days of the week, members rent more often from Monday to Friday. On the other hand, casual riders rent more on Saturdays.

<img width="991" alt="image" src="https://github.com/user-attachments/assets/5a9c03e9-2065-4354-be77-89f5978626c4">

However, on a monthly basis, members and casual riders show similar behavior, with fewer trips occurring in winter than in spring.

Now, let's look at the average ride duration and see if we can find any differences.

<img width="999" alt="image" src="https://github.com/user-attachments/assets/35824339-e871-4e8e-81f9-a90730ce95bc">

When it comes to the average driving time per hour, members drive for less time than casual drivers. For members, it is an average of 10 to 11 minutes. For casuals, the average driving time is 20 minutes.

<img width="990" alt="image" src="https://github.com/user-attachments/assets/dc992fae-9a66-4d21-a99d-93c893202151">

In the weekday view, the members always show the same driving behavior. The driving time from Monday to Sunday is on average 10-12 minutes. For the casuals, however, the driving length increases more and more towards the weekend.

<img width="985" alt="image" src="https://github.com/user-attachments/assets/e698e4c2-611a-43c2-931a-a310f29e7219">

Note that the average ride time of members does not change throughout the month. For casuals, ride time changes in spring, which is probably due to the temperature. In general, casual riders ride about twice as long as members. In turn, members ride much more often than casuals.

Perhaps members use the bikes for commuting and casuals use the bikes for leisure purposes.

However, to better understand the differences, one can analyze the start and destination stations.
Let's check which stations are used the most.

<img width="1001" alt="image" src="https://github.com/user-attachments/assets/68928be2-b553-4771-ad9f-fb1edc402469">

The analysis of the start and destination stations supports my assumption. Members often started their rides from residential areas, universities, schools, banks, factories, and railway stations. Casuals, on the other hand, chose to start from recreational areas such as parks, ports, aquariums, beaches, and museums. The same trend is observed in the destination stations.

So I come to the conclusion that members largely use the bikes for their daily commute, while casuals mostly use them for leisure activities.

### Summary:

- Members prefer to use the bikes on weekdays during rush hour. That is, between 7-8 a.m. and 4-6 p.m.

- Members ride more frequently but for shorter distances

- Members often use stations near residential and commercial areas

- Casuals use the bike sharing company more often on weekends and more in the spring than in the winter

- Casuals ride less frequently but for longer distances

- Casuals often use recreational areas as starting and ending stations

# **Act**

Now that the differences between members and casual riders have been clearly identified and we now know that casuals use the bikes more for leisure activities, it is important to consider how to design a membership specifically for casual users.

For example, this could look like this:

- As casual riders use the bikes for longer distances, discounts could be offered through membership after a certain number of km.

- Casual riders are more active on weekends and in spring than in the cold winter months. You could offer a seasonal membership or one that is only valid for weekends.

- During the active months and on weekends, marketing campaigns could be carried out at tourist and leisure locations to convince them to join. You could also start a survey at these hotspots to collect more data and think about how to get them to use the mode of transport as a "daily business matter".

