![Banner](https://github.com/S-a-m-K/cyclistic_case_study/blob/main/cyclistic.png)

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

This historical data is from a cycling company. The data sets have a different name because Cyclistic is a fictitious company. The datas sets are appropriate for the purposes of this case study and allow to answer the company-related questions.

This is public data, which can be used to find out how different types of customers use Cyclistic's bikes.

For privacy reasons any of the customers' personal data cant be used. That means that it is not possible to link single ticket purchases to credit card numbers to determine whether occasional riders live in Cyclistic's catchment area or have purchased multiple single trips.

**Source**: Data provided by Motivate International Inc

**Type**: CSV

**Format**: Long Data

**Duration**: December 2022 - April 2023

<div style="margin-bottom: 40px;">

</div>

### **Confirmation of the ROCCC-Process**

* **Reliable**: The data comes from a real bicycle company. Some entries are missing.

* **Original**: The data is original and was provided by [Motivate International Inc](https://motivateco.com/).

* **Comprehensive**: The data sets are suitable for the purposes of this case study and enable to answer the company-related questions. For marketing purposes and to target customers, personal information such as gender, age and place of residence would be advantageous.

* **Current**: The data sets is constantly updated and is therefore up to date.

* **Cited**: The data is provided by Motivate International Inc., a real bicycle company.

* **License**: [data license agreement](https://divvybikes.com/data-license-agreement): The data set does not contain any personal data. There are no data protection concerns.

<div style="margin-bottom: 40px;">

</div>

# **Process**


Since the data sets contains several million rows, it is important to use a platform that supports large amounts of data. For this purpose, I used BigQuery to combine the different data sets and cleanse them.

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

3. Check for numbers of null values and i find some in this 4 rows
<img width="759" alt="image" src="https://github.com/user-attachments/assets/5ca625f7-0c31-4472-9c7f-9d1a4d1aa5ac">

4. Check for dublicate rows
<img width="185" alt="image" src="https://github.com/user-attachments/assets/d7b6f8f1-f4f9-43f5-b305-61bdb2fb9d62">

5. Check if ride_id has a length of 16
<img width="270" alt="image" src="https://github.com/user-attachments/assets/ec1e68ee-d52a-43f4-a3fa-27a038fce04e">

6. Check if timestamp values all have the same length
<img width="270" alt="image" src="https://github.com/user-attachments/assets/214e3ab5-f50a-4381-a602-47f942dffd73">

7. Check for whitespace and find 161 rows
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

13. How many times members and casual riders rent a bike
<img width="386" alt="image" src="https://github.com/user-attachments/assets/1cd3c501-a96b-4ea0-8032-dd759cfbb0c8">

### Data cleansing

SQL Query: [Create a new clean table](https://github.com/S-a-m-K/cyclistic_case_study/blob/main/03.%20Data%20Cleaning)

- All rows with missing values ​​were deleted
- New columns were added: day_of_week, month and ride_length
- Whitespace from start_station_name and end_station_name were deleted
- Trips that lasted less than one minute or longer than one day were removed
- A total of 315,415 rows were removed

# **Analysing**

SQL Query: [Data Analysing](https://github.com/S-a-m-K/cyclistic_case_study/blob/main/04.%20Data%20Analysing.sql)

The data is prepared now for analysis and several queries are asked to answer the real question:

How does bike usage differ between annual members and occasional riders?

To answer this question, it needs to understand riding habits.

- First, it is to compare who uses what type of bikes
<img width="584" alt="image" src="https://github.com/user-attachments/assets/ed1ea227-e004-4909-be82-44d2674a0c3e">

- Who rides at what time of day?
<img width="509" alt="image" src="https://github.com/user-attachments/assets/2b378fed-f2df-4bed-8525-b2d56e03e13f">

- Who rides on what day of the week?
<img width="584" alt="image" src="https://github.com/user-attachments/assets/0cbfcb15-b41e-4e42-be3e-b7a41e0e7ead">

- Who rides in which months?
<img width="586" alt="image" src="https://github.com/user-attachments/assets/84d2cf47-ab33-4031-919e-e4ffca2f4548">

- The average ride length per time of day
<img width="508" alt="image" src="https://github.com/user-attachments/assets/accd7431-890a-4099-b023-2524d587bd91">

- The average ride length per day of the week
<img width="585" alt="image" src="https://github.com/user-attachments/assets/1ba7a31a-b45c-4b26-b98d-55a02d3e9d93">

- The average ride length per month
<img width="584" alt="image" src="https://github.com/user-attachments/assets/66231384-dac5-4027-b1e4-01c236c002c8">

- From which location were the bicycles rented?
<img width="881" alt="image" src="https://github.com/user-attachments/assets/723ad718-f264-43c5-8734-a128ed921685">

- Where does the trip end?
<img width="880" alt="image" src="https://github.com/user-attachments/assets/5531d1c7-1b35-43df-9949-9fa68fdd969a">

# **Share**

### Data Visualization 

For the data visualization process "Share" I use [Tableau](https://public.tableau.com/views/CyclisticCaseStudy_17246685586230/CyclisiticCaseStudy?:language=en-GB&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link).

<img width="998" alt="image" src="https://github.com/user-attachments/assets/d0489f03-72e5-45df-93a6-5c340b6e9029">

Over 300,000 customers who used the bikes in these five months are casual riders. In comparison to the total number of members, this represents nearly a third.

<img width="989" alt="image" src="https://github.com/user-attachments/assets/5025fb27-6e91-40d9-94cc-ccc3dc2bd0d1">

Over 110,000 casual riders use classic bikes, while over 200,000 use electric bikes. Compared to members, this represents almost a quarter of the classic bike usage. For electric bikes, it accounts for nearly 30 percent of the total users. In contrast, docked bikes are exclusively used by casual riders. 

As the next step, let's examine the number of trips made during the daytime.

<img width="991" alt="image" src="https://github.com/user-attachments/assets/164196ff-6ac7-4f7b-8b8d-a7efa25c687f">

In the hourly view, members show two peak times: one between 7 and 8 a.m. and another between 4 and 5 p.m. These peaks roughly correspond to the start and end times of a typical workday. In contrast, casual riders exhibit a different pattern. The line chart clearly shows that the number of rides steadily increases from the morning, reaching a peak around 5 p.m., and then levels off. I would attribute this behavior to casual riders using the bike for leisure activities. 

The next step is to analyze the distribution of rides across the days of the week.

<img width="993" alt="image" src="https://github.com/user-attachments/assets/1eaefd78-cf30-441c-bb98-1ae35a8d0340">

When comparing the days of the week, members tend to rent bikes more frequently from Monday to Friday, while casual riders rent more bikes on Saturdays.

<img width="991" alt="image" src="https://github.com/user-attachments/assets/5a9c03e9-2065-4354-be77-89f5978626c4">

However, on a monthly basis, both members and casual riders exhibit similar behaviors, with fewer trips occurring in winter compared to spring. 

Now, let's take a look at the average ride duration to see if we can identify any differences.

<img width="999" alt="image" src="https://github.com/user-attachments/assets/35824339-e871-4e8e-81f9-a90730ce95bc">

When it comes to average riding time per hour, members ride for less time than casual riders. Members average 10 to 11 minutes per ride, while casual riders have an average riding time of 20 minutes.

<img width="990" alt="image" src="https://github.com/user-attachments/assets/dc992fae-9a66-4d21-a99d-93c893202151">

In the weekday view, members consistently exhibit the same riding behavior, with an average ride time of 10-12 minutes from Monday to Sunday. In contrast, the ride duration for casual riders increases as the weekend approaches.

<img width="985" alt="image" src="https://github.com/user-attachments/assets/e698e4c2-611a-43c2-931a-a310f29e7219">

In contrast, casual riders experience variations in ride time during spring, likely due to temperature changes. Generally, casual riders have about twice the ride time of members, while members tend to ride much more frequently than casuals. This suggests that members primarily use the bikes for commuting, whereas casual riders use them for leisure purposes. 

However, to better understand the differences between these two groups, we need to analyze the start and destination stations.

<img width="1001" alt="image" src="https://github.com/user-attachments/assets/68928be2-b553-4771-ad9f-fb1edc402469">

The analysis of the start and end stations shows that members often begin their rides in residential areas, universities, schools, banks, factories, and railway stations. Casual riders, on the other hand, tend to start from recreational areas such as parks, ports, aquariums, beaches, and museums. This trend is also reflected in the destination stations. 

Based on this, I conclude that members primarily use the bikes for their daily commute, while casual riders mostly use them for leisure activities.

### Summary:

- Members prefer to use the bikes on weekdays during rush hour. That is between 7-8 a.m. and 4-6 p.m.

- Members ride more frequently but for shorter distances

- Members often use stations near residential and commercial areas

- Casual riders use the bike sharing company more often on weekends and more in the spring than in the winter

- Casual riders ride less frequently but for longer distances

- Casual riders often use recreational areas as starting and ending stations

# **Act**

Now that the differences between members and casual riders have been clearly identified, and we know that casual riders use the bikes more for leisure activities, it is important to consider how to design a membership specifically for them.

For example, this could look like this:

- As casual riders use the bikes for longer distances, discounts should be offered through membership after a certain number of km.

- Casual riders are more active on weekends and in spring than in the cold winter months. The company Cyclistic should offer a seasonal membership or a membership that is only valid for weekends.

- During the peak season and on weekends, marketing campaigns should be carried out at tourist and leisure locations to encourage visitors to participate. At this point, it is also advisable to launch surveys at these hotspots to gather more data in order to better understand the leisure behavior as well as the daily routines of visitors and casual riders.

