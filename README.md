# SQL-Portfolio-Project
Stack Overflow Post Analysis: A SQL Portfolio Project
Project Overview
This project analyzes the history of Stack Overflow posts, including edits, comments, votes, and other changes, to gain insights into user activity and content evolution while enhancing SQL skills. The dataset consists of multiple relational tables containing information about users, posts, comments, votes, badges, and more.

Dataset
The dataset is sourced from Kaggle and contains the following tables:

Tables and Key Fields
badges – Tracks badges earned by users.
id, user_id, name (badge name), date (earned date).
comments – Contains comments on posts.
id, post_id, user_id, creation_date, text.
post_history – Tracks edits, comments, and other changes to posts.
id, post_history_type_id, post_id, user_id, text, creation_date.
post_links – Stores links between related posts.
id, post_id, related_post_id, link_type_id.
posts_answers – Contains questions and answers.
id, post_type_id (question or answer), creation_date, score, view_count, owner_user_id.
tags – Stores tags associated with posts.
id, tag_name.
users – Details about Stack Overflow users.
id, display_name, reputation, creation_date.
votes – Tracks voting activity on posts.
id, post_id, vote_type_id, creation_date.
Tasks and Concepts
📌 Part 1: Basics
✅ Loading and Exploring Data

Display the structure and first 10 rows of each table.
Count the total number of records in each table.
✅ Filtering and Sorting

Find posts with comment_count > 2.
Display comments from 2012, sorted by creation_date.
✅ Simple Aggregations

Count the total number of badges.
Calculate the average score of posts grouped by post_type_id.
📌 Part 2: Joins
✅ Basic Joins

Combine post_history and posts to display post titles with edit history.
Join users and badges to find total badges earned per user.
✅ Multi-Table Joins

Fetch post titles, comments, and the users who commented.
List related questions by combining post_links with posts.
Find users who have earned badges and made comments.
📌 Part 3: Subqueries
✅ Single-Row Subqueries

Identify the user with the highest reputation.
Retrieve the highest-scoring posts for each post_type_id.
✅ Correlated Subqueries

Count the number of related posts for each post.
📌 Part 4: Common Table Expressions (CTEs)
✅ Non-Recursive CTE

Compute the average post score per user.
Rank users based on average post score.
✅ Recursive CTE

Simulate a hierarchy of linked posts.
📌 Part 5: Advanced Queries
✅ Window Functions

Rank posts by score within each year.
Compute the running total of badges earned by users.
🔍 Key Insights and Questions Answered
Top Contributors: Which users have the most comments, edits, and votes?
Badge Analysis: What are the most commonly earned badges, and who earns them the most?
Top Tags: Which tags are associated with the highest-scoring posts?
Knowledge Sharing: How frequently are related questions linked?
📊 Deliverables
SQL Scripts: Queries for all tasks and insights.
Analysis Report: Summary of findings.
Visualizations (Optional): Charts and graphs using Tableau or Power BI.
🚀 How to Use This Project
Download the dataset from Kaggle.
Load the data into a SQL database.
Run the provided SQL queries to explore insights.
Modify and extend the queries for deeper analysis.
📢 Conclusion
This project provides an in-depth SQL-based analysis of Stack Overflow user activity and post evolution. It enhances SQL querying skills while uncovering valuable insights about community engagement and content trends.

🔗 For more details, visit the dataset source: Kaggle: Stack Overflow Data

