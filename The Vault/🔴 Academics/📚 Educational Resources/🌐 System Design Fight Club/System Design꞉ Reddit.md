---
title: System Design꞉ Reddit
created: 2023-08-24 00:06
updated: 2023-09-02 17:37
authors:
  - Edmund Leibert III
tags:
  - 🔴-academics/📚-educational-resources/name/🌐-system-design-fight-club
  - 🔴-academics/📚-educational-resources/source-format/internet/youtube
  - 🔴-academics/📚-educational-resources/discipline/computer-science
  - 🔴-academics/📚-educational-resources/name/🌐-system-design-fight-club/🔖-bookmark/🌐-system-design-fight-club/system-design-reddit
  - study-note
cards-deck: Default::Computer Science
---

# 🌐 System Design Fight Club

---

## 🕸️ All Mention(s): 

---

## 🔙 Previous Note(s):

---

## System Design꞉ Reddit

> [!info]+ What is the URL for this YouTube video?
> [System Design: Reddit - YouTube](https://www.youtube.com/watch?v=X3rXAkZwRuQ&t=345s)

> [!info]+ What is the text file below?
> The `.txt` file below is a recreation of the `reddit-text.txt` file that was shown in the video.

```
REDDIT

RESOURCES:
- just for numbers to use: https://foundationinc.co/lab/reddit-statistics/
- the Exponent video was actually not that great

REQUIREMENTS:
1. users can make posts
2. upvotes downvotes on the posts of others users
3. a) view/ read "TOP" posts list
   b) view/ read "NEW" posts list
   c) view/ read "HOT" posts list

OUT OF SCOPE:
- comments on posts
- text search functionality
- user karma calculation

Call outs:
- thread contention for upvotes is actually very low; CRDTs not necessary
- we could definitely have a "celebrity problem" or "hot partition" issue in regards to popular subreddits
	- choosing an alternative partition key comes at the trade-off of deep pagination performance due to "scatter-gather"
- Why does "celebrity partition"/"hot partition" not apply to individual posts? hot partitions are more applicable "range" of keys, plus volume on individual posts never gets that high 
- fan out like twitter? likely not a good idea because the posts jump around (re-order) too much, rather than twitter which should maintain a chronological order

NUMBERS :
- 50M DAU
- 330 MAU
- 21B "screen views" per month
    -> 7,000 TPS (read, req #3)
- 1.6B "visits" in one month
    -> 533 TPS (reads, req #3)
- 168B "page views" in 2018 (one full year duration)
    -> 4,600 TPS (reads, req #3)
- 32B upvotes in 2019 (one full year duration)
    -> 877 TPS (writes, req #2)
- 199M posts created in 2019 (one full year duration)
    -> 5.45 TPS (writes, req #1)
- 2.8M total subreddits
---
7,000 TPS (reads, req #3)
877 TPS (writes, req #2)
5.45 TPS (writes, req #1)

So, this is going to be read heavy

- top post stats
    - 439k upvotes on top post for all-time
    - 310k upvotes on top post for past year
    - 150k upvotes on top post for past month
    - 149k upvotes on top post for past week
    - 90.5k upvotes on top post for today

So, upvotes come in at an exponential decay
And, even the most viral of posts for the entire site- seem to max •out at around 1-2 TPS for upvote rate
Thus, there's actually tow thread contention for upvotes on posts

Derived secondary numbers:
- 8.6 "page views" per • "visit"
    - since at least one of those page views is likely to be of the homepage,
    -> 500 - 850 TPS for the homepage
```


```timestamp 
 00:14
 ```
 

﹇<br>
In this video, specifically for this system design problem, what are the _requirements_?

#card 

REQUIREMENTS:

1. users can make posts
2. upvotes downvotes on the posts of others users
3. a) view/ read "TOP" posts list<br>
    b) view/ read "NEW" posts list<br>
    c) view/ read "HOT" posts list

⌂
<br>﹈<br>^1693690847532


﹇<br>
What is considered _out of scope_ for this system design problem?

#card 

- comments on posts
- search functionality
- user karma calculation

⌂
<br>﹈<br>^1693690847539


﹇<br>
Where does the author of the video source his Reddit traffic numbers from? 

#card 

```timestamp 
 00:22
 ```

Gets from the website https://foundationinc.co/lab/reddit-statistics/

⌂
<br>﹈<br>^1693690847544


﹇<br>
Referring to the file `reddit-textfile.txt`, what does the the term TPS stand for?

#card 

In the context of system performance and this video, TPS stands for a **T**ransaction **P**er **S**econd (TPS)

⌂
<br>﹈<br>^1693690847549



﹇<br>
If I desire to learn more about designing a *search functionality* like Reddit, where should I look?

#card 

```timestamp 
 01:11
 ```

Can just probably look at like Twitter, or you can look at something that does like an inverted index.
- Much more suitable problem for exploring search functionality, specifically text search functionality

⌂
<br>﹈<br>


﹇<br>
In the context of how this video is structured, what are call outs?

#card 

Call outs are interesting aspects that are devoted extra time and care to go over at the end of this video.

⌂
<br>﹈<br>

﹇<br>
In the context of this YouTube video, what does MAU and DAU stand for?

#card 

- **M**onthly **A**ctive **U**sers
- **D**aily **A**ctive **U**sers

⌂
<br>﹈<br>

﹇<br>
How is TPS calculated? 

#card 

The TPS is calculated by taking the total number of transactions performed over a given time period and dividing it by the number of seconds in that time period.

⌂
<br>﹈<br>

﹇<br>
How can you calculate and find the TPS from 21 Billion transactions in a month.

#card

1. Calculate the total number of seconds in a month:<br>
   $30$ days $\cdot$ $24$ hours/day $\cdot$ $60$ minutes/hour $\cdot$ $60$ seconds/minute $=$ $2,592,000$ seconds
2. Thus, we find that…
   $$
   \text{TPS} = \frac{21,000,000,000 \: \text{transactions}}{ 2,592,000 \: \text{seconds}} = 7,000 \: \text{TP}
   $$

⌂
<br>﹈<br>


﹇<br>
For this system design problem, can we classify Reddit has read heavy?

#card 

Yes ❗

⌂
<br>﹈<br>


﹇<br>
What is the *celebrity problem* and how does it appear in this Reddit design problem?

#card 

❗ There is a large number of subreddits with only a few trafficking in all the activity.

⌂
<br>﹈<br>




---

## 🔜 Next Note(s):

---
