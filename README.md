<h1>Google Data Analytics: Cyclistic Case Study</h1> 

Course: [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone)

**Author: Samuel Kleger**  
**Date: 2024-08-16**

---

# **Introduction**

In this case study, I work as a junior data analyst on the marketing analytics team at Cyclistic, a bike-sharing company in Chicago. Marketing leadership wants to maximize annual memberships, so your team wants to understand the differences in usage between casual riders and annual members. Based on these insights, your team will develop a new marketing strategy to convert casual riders into annual members.

---

#### Table of Content
- [Introduction](#Introduction)
  - [Buisness Task](#Buisness-Task)
  - [Stakeholder](#Stakeholder)
- [Prepare](#Prepare)
  - [Data Description](#Data-Description)
  - [Credibility of the Data](#Credibility-of-the-Data)
  - [Confirmation of the ROCCC-Process](#Confirmation-of-the-ROCCC-Process)
- [Process](#Process)
- [Analyze](#Analyze)
- [Visualize](#Visualize)
- [Recommendation](#Recommendation-based-on-analysis)

---

<div style="margin-bottom: 40px;">

</div>

### **Buisness Task**

Analyze Cyclistic's data to evaluate usage differences between occasional riders and annual members. Based on these findings, make a general recommendation on how these trends might influence Cyclistic's marketing strategy.

### **Stakeholder** 


**Lily Moreno**: Marketing Director - responsible for developing campaigns and initiatives to promote the bike sharing program. This includes email, social media and other channels

**Cyclist Marketing Analytics Team**: Data analysis professionals

**Cyclist Leadership Team**: Decides whether to approve the recommended marketing program

<div style="margin-bottom: 40px;">

</div>

# **Prepare**



### **Data Description**


There are a total of 65 individual data sources that can be downloaded from divvy_tripdata. I will use Cyclistic's historical trip data to analyze and identify trends from December 2022 to April 2023.

**Source**: Data provided by Motivate International Inc

**License**: https://divvybikes.com/data-license-agreement

**Type**: CSV

**Format**: Long Data

**Duration**: Jan 3rd 2023, 09:19:01 pm - Jan 4th 2024, 08:48:23 pm

<div style="margin-bottom: 40px;">

</div>

### **Credibility of the Data**

This dataset was created by respondents to a distributed survey on Amazon Mechanical Turk. Thirty-three eligible Fitbit users consented to the submission of personal tracker data, including up-to-the-minute physical activity, heart rate, and sleep monitoring. The variation between outputs reflects use of different types of Fitbit trackers and individual tracking behaviors/preferences.

### **Confirmation of the ROCCC-Process**

* **Reliable**: The dataset contains 33 user data from daily activity. It thus exceeds the minimum sample size requirement of 30. However, some users have not fully recorded their data and may not be comprehensive enough to allow for detailed analysis.

* **Original**: No, the original data set is generated by a third party, Amazon Mechanical Turk

* **Comprehensive**: The data is closely related to the sleep and activity features of the Bellabeat Leaf product. Unfortunately, important information such as gender, age, size and location of the users, which would be advantageous for    marketing purposes to target specific customers, is missing.

* **Current**: The data set is from March 2016 and is therefore not up-to-date. User habits might be different now.

* **Cited**: The data was collected anonymously by a third party.

* **License**: Creative Commons Attribution 4.0 International
Apart from the ID number, no personal data are included in the collected data. So there are no privacy concerns to consider. The participants remain anonymous.

* **Conclusion**: Overall, this is not a quality dataset that can be used for actual business recommendations.

<div style="margin-bottom: 40px;">

</div>

# **Process**
