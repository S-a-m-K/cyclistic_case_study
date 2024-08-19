<h1>Google Data Analytics: Cyclistic Case Study</h1> 

Course: [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone)


**Author: Samuel Kleger**  
**Date: 2024-08-16**


# **Introduction**

In this case study, I work as a junior data analyst on the marketing analytics team at Cyclistic, a bike-sharing company in Chicago. Marketing leadership wants to maximize annual memberships, so your team wants to understand the differences in usage between casual riders and annual members. Based on these insights, your team will develop a new marketing strategy to convert casual riders into annual members.

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
- [Analyze](#Analyze)
- [Visualize](#Visualize)
- [Recommendation](#Recommendation-based-on-analysis)

---

# **Ask**



<div style="margin-bottom: 40px;">

</div>

### **Stakeholder** 


**Lily Moreno**: Marketing Director - responsible for developing campaigns and initiatives to promote the bike sharing program. This includes email, social media and other channels

**Cyclist Marketing Analytics Team**: Data analysis professionals

**Cyclist Leadership Team**: Decides whether to approve the recommended marketing program

<div style="margin-bottom: 40px;">

</div>

### **Buisness Task**

Analyze Cyclistic's data to identify usage differences between casual riders and annual members. Based on these findings, make a general recommendation on how these trends could influence Cyclistic's marketing strategy to convert casual riders into members.

### **Analysis Questions**

Three questions are relevant to the future marketing program:
1. How does Cyclistic's use differ between annual members and casual riders?
2. Why should casual riders purchase a Cyclistic annual membership?
3. How can Cyclistic use digital media to encourage casual riders to join?

Moreno tasked me with answering the first question:
How does Cyclistic's use differ between annual members and casual riders?

# **Prepare**


### **Data Source**

This is historical trip data from a cycling company. The datasets have a different name because Cyclistic is a fictitious company. The datasets are appropriate for the purposes of this case study and allow you to answer the company-related questions.

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

SQL Query: [[Data Combining](https://github.com/S-a-m-K/cyclistic_case_study/blob/main/01.%20Data%20Combining.sql)](#Data-Combining)
5 CSV files are uploaded as tables to the cyclistic_trip_data dataset. Another table named cyclistic_combined_trip_data_01 is created which contains 1,247,820 rows of data for these 5 months.

