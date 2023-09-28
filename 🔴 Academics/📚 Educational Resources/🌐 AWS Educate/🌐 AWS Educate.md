---
author: 
publisher: Amazon Web Services, Inc.
published: 
tags:
  - 🔴-academics/📚-educational-resources/name/aws-educate
  - study-note
cards-deck: Default::Computer Science
created: 2023-09-03 08:46
updated: 2023-09-28 14:16
---

# AWS Educate

## Analytics

### Data Analysis

What is Big Data? #card 
<span class="spoiler">Big data</span> can be described in terms of data management challenges that-due to increasing volume, velocity and variety of data-cannot be solved with traditional databases.

What are facets of the challenges in big data? #card
- increasing volume
- velocity
- variety of data

Click each data source to see if the information would help Li figure out the students' favorite elective classes.
![[aws-educate-analytics-data-analysis-attendance-report-data.png|575]] #card 
- ❌ The number of students at school each day might help you figure out if the students like school overall, but it won't really help you figure out which classes they can't bear to miss!
- ❌ The percentage of students late to each class might help you figure out when most kids take their bathroom breaks, but it won't really help with Li's question.
- ✅ This might help! Students will try to be in class as much as possible if they like the subject.
- ❌ The classes with lowest attendance might actually be ones the students don't like.

What is AWS Kinesis? #card-reverse 
<span class="spoiler">Amazon Kinesis</span> makes it easy to collect, process, and analyze real-time, streaming data so you can get timely insights and react quickly to new information. With <span class="spoiler">Amazon Kinesis</span>, you can ingest real-time data such as video, audio, application logs, website clickstreams, and IoT telemetry data for machine learning, analytics, and other applications. <span class="spoiler">Amazon Kinesis</span> enables you to process and analyze data as it arrives and respond instantly, instead of having to wait until all your data is collected before the processing can begin.

Does AWS Kinesis have to wait until all your data is collected before processing and analyzing it? #card-reverse 
No! <span class="spoiler">Amazon</span> Kinesis enables you to process and analyze data as it arrives and respond instantly, instead of having to wait until all your data is collected.

What AWS Service does this diagram reference?
![[aws-educate-analytics-data-analysis-aws-kinesis-diagram.png|575]] #card 
AWS Kinesis

### Data Models

What are the three primary types of data representation? #card-reverse 
- data table
- computer model
- graph

What is a data table? #card-reverse 
A <span class="spoiler">data table</span> shows a set of data, or data set, organized in boxes and arranged by category like the one you see here.
![[aws-educate-analytics-data-models-data-table.png|575]]

What is a computer model? #card-reverse
A <span class="spoiler">computer model</span> uses data to create a graphic image of data, allowing the user to visualize the data more clearly. 
![[aws-educate-analytics-data-models-computer-model.png|575]]

What is a graph? #card-reverse
A <span class="spoiler">graph</span> is a model showing data visually, using a line or bars to represent amounts. 
![[aws-educate-analytics-data-models-graph.png|575]]

What is cloud computing really handy for? #card-reverse 
Processing huge data sets. Businesses use it to make their companies more effective.

Does data have to be shown only in a data table? #card 
No, models are visual representation of data and include maps, simulations, and graphs.

Are maps, simulations, and graphs considered models that visually represent data? #card 
Yes!

What is cloud computing also useful for? #card
- data collection
- transformation
- storage

What is the tool called to process data? #card-reverse 
*algorithms*

What do you remember about how data is stored and used? Drag the terms to their explanations below…
![[aws-educate-analytics-data-models-assessment.png|575]] #card 
![[aws-educate-analytics-data-models-assessment-answers.png|575]]

### Data Transformation

### Big Data

## Cloud Computing

### Getting Started with Cloud Operations (Lab)

### Getting Started with Databases (Lab)

### Getting Started with Compute (Lab)

### Getting Started with Storage (Lab)

### Introduction to Cloud 101 (Labs)

### Introduction to the AWS Management Console

### Cloud Support Engineer

### Twitch Series꞉ Cloud Practitioner

### Cloud Computing

### Cloud Building

Are all cloud computing systems the same? #card 
No, some have great positive features, they will have trade offs you have to consider too.

How are cloud computing systems built? #card 
- They are made up of multiple components.
- As these components are combined in different ways, new advantages and trade-offs will be created.

What is **flexible infrastructure** in regard to building  a cloud computing system and considering the trade-offs? #card-reverse 
Based on data storage and compute needs, you can quickly increase or decrease storage and computing services

What is **speed** in regard to building  a cloud computing system and considering the trade-offs? #card 
Faster server speeds cost more but also allow more people to access your digital items faster, with little frustration.

What is **flexible coding** in regard to building  a cloud computing system and considering the trade-offs? #card-reverse 
Systems like AWS speak to multiple coding languages, allowing AWS to work with any other Internet system form around the world.

What is **pay as you go** in regard to building  a cloud computing system and considering the trade-offs? #card 
Cloud computing services like AWS do not force users into long-term contracts. Pay for as much storage and speed as you need, when you need it, and up- or downgrade with a simple click of a button-anytime, anywhere.

What is one recommended troubleshooting process that the girl provides? #card-reverse 
1. Understand the User Problem
   <span class="spoiler">Listen to the user , or critically read the user’s notice. What *exactly* is going on? Which part of the cloud system is experiencing an issue?</span>
2. Check your Cloud Dashboard
   <span class="spoiler">Is a specific app or server down? I everything up and running on the cloud’s side?
   If the dashboard reveals a problem with an app, notify the developer. If the server is down, notify the cloud providers.
   If your dashboard is green, the issue is on the user’s end, and you will have to start troubleshooting their system.</span>
3. Troubleshoot the User’s System
   <span class="spoiler">One at a time, guide the user through these steps:
   - Restart the app or browser.
   - Restart the Wi-Fi the device is using
   - Restart the device.</span>
4. Refer the User to Device Tech Support
   <span class="spoiler">Still experiencing issues? Send the user to technical support for the specific device</span>

What to do if the dashboard reveals a problem with the app? #card 
Notify the developer

What if the dashboard reveals that the server is down? #card 
Notify the cloud provider

What if my users are complaining that the app is slow? #card 
Need to buy more processing power.

What if I am getting reports that users are having a hard time uploading screenshots and profiles to the system? #card 
- Should check the cloud dashboard
- Most likely will need to purchase more space

What are the corresponding solutions for each problem?
- Review the cloud dashboard and check user data and analytics for common usage needs.
- Ensure you are using a cloud computing system that has a global reach and flexible coding, like AWS.
- Pay-as-you-go computing capacity.
- Pay-as-you-go storage space. #card 
![[aws-educate-cloud-challenges-troubleshooting-your-set-up.jpg|450]]

Drag and drop each cloud computing component to the correct advantage or trade-off
- If this is larger, it will cost more, but it will be able to store more data and files, and provide more services to users.
- Flexible coding allows for this, enhances the user experience, and does not have an impact on the overall cost.
- If this is higher, more users can access the digital items faster, but the cost will go up and the server size will need to increase.
- Gathering and analyzing more of this from end-users will cost more, but it provides more information to meet users' needs. #card-reverse 
- <span class="spoiler">infrastructure</span>
- <span class="spoiler">speed</span>
- <span class="spoiler">global reach</span>
- <span class="spoiler">data</span>

Rearrange the troubleshooting process into the correct order #card 
- Read the user’s report carefully.
- Check the cloud computing dashboard. In this case, it shows everything is green and running as expected.
- Troubleshoot the user’s system; have her restart all its components.
- Refer the user to her device’s manufacturer for additional help.

### Hardware & Software

### Using the Cloud

### Cloud Storage

### Websites in the Cloud

### Virtual Compute Power

### Internet Basics

## Development

### Builder Labs

### Alexa 101

### Robotic Fundamentals

### Gaming 101

### Software Development Engineer

### Application Developer

### Web Development Engineer

### Twitch Series꞉ Building Modern Applications

### Twitch Series: Application Deployment

### Algorithms

### Program Design

### Troubleshooting

### Programming

### Variables

## Machine Learning & AI

### AWS DeepRacer Primer (Lab)

### Machine Learning Foundation (Lab)

### AWS DeepLens

### Amazon Datapalooza

### Data Scientist

### Twitch Series꞉ Machine Learning Foundation

### Twitch Series: Build apps with AWS AI Services

### Artificial Intelligence

### Machine Learning

### Virtual Reality

## Network & Infrastructure

### Getting Started with Networking (Lab)

### Introduction to AWS IoT

### Amazon Honeycode 101

### DevOps Engineer

### Solutions Architect

### Twitch Series꞉ Architecting

### Global Impact

### Internet Routing

### Cloud Connections

### Digital Divide

### Cloud Redundancy

## Professional Skills

### Amazon Innovation

### AWS Startups

## Security

### Cybersecurity Specialist

### Online Privacy

### Cyber Security

### Data Safety

### Cybersecurity

### Securing the Cloud

