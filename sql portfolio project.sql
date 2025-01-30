
CREATE DATABASE IF NOT EXISTS project;
USE project;

-- Create the 'badges' table and insert data
CREATE TABLE badges (
    id INT PRIMARY KEY,
    user_id INT,
    name VARCHAR(255),
    date DATE
);

INSERT INTO badges (id, user_id, name, date) VALUES
(1, 1001, 'Gold Contributor', '2024-01-01'),
(2, 1002, 'Silver Helper', '2024-01-05'),
(3, 1003, 'Bronze Reviewer', '2024-02-10'),
(4, 1001, 'Silver Helper', '2024-03-15'),
(5, 1004, 'Gold Contributor', '2024-04-20'),
(6, 1001, 'Gold Contributor', '2024-05-05'),
(7, 1002, 'Bronze Reviewer', '2024-06-10'),
(8, 1003, 'Silver Helper', '2024-07-10'),
(9, 1004, 'Gold Contributor', '2024-08-01'),
(10, 1001, 'Bronze Reviewer', '2024-09-01');

-- Create the 'comments' table and insert data
CREATE TABLE comments (
    id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
    creation_date DATE,
    text TEXT
);

INSERT INTO comments (id, post_id, user_id, creation_date, text) VALUES
(1, 2001, 1001, '2024-01-01', 'Great explanation!'),
(2, 2002, 1002, '2024-01-05', 'This helped a lot.'),
(3, 2003, 1003, '2024-01-10', 'Can you clarify?'),
(4, 2004, 1001, '2024-01-15', 'Excellent resource.'),
(5, 2005, 1004, '2024-01-20', 'Thank you for sharing.'),
(6, 2001, 1002, '2024-01-25', 'I agree, very useful.'),
(7, 2003, 1003, '2024-02-01', 'This solved my issue.'),
(8, 2004, 1001, '2024-02-05', 'Thanks for the info.'),
(9, 2005, 1004, '2024-02-10', 'Could use more detail.'),
(10, 2006, 1002, '2024-02-15', 'Good job on this one!');

-- Create the 'post_history' table and insert data
CREATE TABLE post_history (
    id INT PRIMARY KEY,
    post_history_type_id INT,
    post_id INT,
    user_id INT,
    text TEXT,
    creation_date DATE
);

INSERT INTO post_history (id, post_history_type_id, post_id, user_id, text, creation_date) VALUES
(1, 1, 2001, 1001, 'Initial post creation', '2024-01-01'),
(2, 2, 2002, 1002, 'Edited post for clarity', '2024-01-05'),
(3, 3, 2003, 1003, 'Comment added by moderator', '2024-01-10'),
(4, 1, 2004, 1001, 'First version of the post', '2024-01-15'),
(5, 2, 2005, 1004, 'Reworded answer', '2024-01-20'),
(6, 3, 2001, 1002, 'User updated answer with additional info', '2024-01-25'),
(7, 1, 2003, 1003, 'Post originally created', '2024-02-01'),
(8, 3, 2004, 1001, 'Moderators edited content', '2024-02-05'),
(9, 2, 2005, 1004, 'User revised explanation', '2024-02-10'),
(10, 3, 2006, 1002, 'Moderators flagged inappropriate content', '2024-02-15');

-- Create the 'post_links' table and insert data
CREATE TABLE post_links (
    id INT PRIMARY KEY,
    post_id INT,
    related_post_id INT,
    link_type_id INT
);

INSERT INTO post_links (id, post_id, related_post_id, link_type_id) VALUES
(1, 2001, 2002, 1),
(2, 2002, 2003, 2),
(3, 2003, 2004, 1),
(4, 2004, 2005, 3),
(5, 2005, 2006, 2),
(6, 2001, 2004, 3),
(7, 2002, 2006, 1),
(8, 2003, 2005, 2),
(9, 2004, 2006, 3),
(10, 2005, 2001, 2);

-- Create the 'posts_answers' table and insert data
CREATE TABLE posts_answers (
    id INT PRIMARY KEY,
    post_type_id INT,
    creation_date DATE,
    score INT,
    view_count INT,
    owner_user_id INT
);

INSERT INTO posts_answers (id, post_type_id, creation_date, score, view_count, owner_user_id) VALUES
(1, 1, '2024-01-01', 10, 100, 1001),
(2, 2, '2024-01-05', 20, 150, 1002),
(3, 1, '2024-01-10', 5, 50, 1003),
(4, 2, '2024-01-15', 15, 120, 1001),
(5, 1, '2024-01-20', 30, 200, 1004),
(6, 2, '2024-01-25', 25, 180, 1002),
(7, 1, '2024-02-01', 40, 300, 1003),
(8, 2, '2024-02-05', 10, 80, 1001),
(9, 1, '2024-02-10', 8, 90, 1004),
(10, 2, '2024-02-15', 50, 400, 1002);

-- Create the 'tags' table and insert data
CREATE TABLE tags (
    id INT PRIMARY KEY,
    tag_name VARCHAR(255)
);

INSERT INTO tags (id, tag_name) VALUES
(1, 'SQL'),
(2, 'JavaScript'),
(3, 'React'),
(4, 'Python'),
(5, 'AI'),
(6, 'Machine Learning'),
(7, 'Node.js'),
(8, 'CSS'),
(9, 'HTML'),
(10, 'Database');

-- Create the 'users' table and insert data
CREATE TABLE users (
    id INT PRIMARY KEY,
    display_name VARCHAR(255),
    reputation INT,
    creation_date DATE
);

INSERT INTO users (id, display_name, reputation, creation_date) VALUES
(1001, 'Alice', 1500, '2024-01-01'),
(1002, 'Bob', 1200, '2024-01-05'),
(1003, 'Charlie', 800, '2024-01-10'),
(1004, 'Dave', 1800, '2024-01-15'),
(1005, 'Eve', 1000, '2024-01-20'),
(1006, 'Frank', 2000, '2024-01-25'),
(1007, 'Grace', 1300, '2024-02-01'),
(1008, 'Hank', 1100, '2024-02-05'),
(1009, 'Ivy', 900, '2024-02-10'),
(1010, 'Jack', 1600, '2024-02-15');

-- Create the 'votes' table and insert data
CREATE TABLE votes (
    id INT PRIMARY KEY,
    post_id INT,
    vote_type_id INT,
    creation_date DATE
);

INSERT INTO votes (id, post_id, vote_type_id, creation_date) VALUES
(1, 2001, 1, '2024-01-01'),
(2, 2002, 2, '2024-01-05'),
(3, 2003, 1, '2024-01-10'),
(4, 2004, 2, '2024-01-15'),
(5, 2005, 1, '2024-01-20'),
(6, 2001, 2, '2024-01-25'),
(7, 2003, 1, '2024-02-01'),
(8, 2004, 2, '2024-02-05'),
(9, 2005, 1, '2024-02-10'),
(10, 2006, 2, '2024-02-15');

-- Create the 'posts' table and insert data
CREATE TABLE posts (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    post_type_id INT,
    creation_date DATE,
    score INT,
    view_count INT,
    owner_user_id INT
);

INSERT INTO posts (id, title, post_type_id, creation_date, score, view_count, owner_user_id)
VALUES
(2001, 'How to solve SQL JOIN issues?', 1, '2023-01-01', 10, 100, 1),
(2002, 'Best practices for writing SQL queries', 2, '2023-01-02', 15, 150, 2),
(2003, 'Understanding INNER JOIN in SQL', 1, '2023-01-03', 20, 200, 3),
(2004, 'What is a LEFT JOIN?', 2, '2023-01-04', 25, 250, 4),
(2005, 'Database indexing techniques', 1, '2023-01-05', 30, 300, 5),
(2006, 'Explaining SQL subqueries', 2, '2023-01-06', 35, 350, 6),
(2007, 'How to optimize SQL queries?', 1, '2023-01-07', 40, 400, 7),
(2008, 'Database normalization concepts', 2, '2023-01-08', 45, 450, 8),
(2009, 'SQL Aggregate Functions explained', 1, '2023-01-09', 50, 500, 9),
(2010, 'Introduction to SQL Window Functions', 2, '2023-01-10', 55, 550, 10);


-- Load and explore the dataset
DESCRIBE badges;
SELECT * FROM badges LIMIT 10;
DESCRIBE comments;
SELECT * FROM comments LIMIT 10;
DESCRIBE post_history;
SELECT * FROM post_history LIMIT 10;
DESCRIBE post_links;
SELECT * FROM post_links LIMIT 10;
DESCRIBE posts_answers;
SELECT * FROM posts_answers LIMIT 10;
DESCRIBE tags;
SELECT * FROM tags LIMIT 10;
DESCRIBE users;
SELECT * FROM users LIMIT 10;
DESCRIBE votes;
SELECT * FROM votes LIMIT 10;
DESCRIBE posts;
SELECT * FROM posts LIMIT 10;
SELECT 'badges' AS TableName, COUNT(*) AS TotalRecords FROM badges
UNION ALL
SELECT 'comments', COUNT(*) FROM comments
UNION ALL
SELECT 'post_history', COUNT(*) FROM post_history
UNION ALL
SELECT 'post_links', COUNT(*) FROM post_links
UNION ALL
SELECT 'posts_answers', COUNT(*) FROM posts_answers
UNION ALL
SELECT 'tags', COUNT(*) FROM tags
UNION ALL
SELECT 'users', COUNT(*) FROM users
UNION ALL
SELECT 'votes', COUNT(*) FROM votes
UNION ALL
SELECT 'posts', COUNT(*) FROM posts;
SELECT * FROM posts WHERE comment_count > 2;
SELECT * FROM comments WHERE YEAR(creation_date) = 2012 ORDER BY creation_date;
SELECT COUNT(*) AS TotalBadges FROM badges;
SELECT post_type_id, AVG(score) AS AvgScore FROM posts_answers GROUP BY post_type_id;
SELECT p.title, ph.text AS ChangesMade FROM posts p
JOIN post_history ph ON p.id = ph.post_id;
SELECT u.display_name, COUNT(b.id) AS TotalBadges FROM users u
JOIN badges b ON u.id = b.user_id GROUP BY u.display_name;
SELECT p.title, c.text AS CommentText, u.display_name AS CommentedBy FROM posts p
JOIN comments c ON p.id = c.post_id
JOIN users u ON c.user_id = u.id;
SELECT p1.title AS OriginalPost, p2.title AS RelatedPost FROM post_links pl
JOIN posts p1 ON pl.post_id = p1.id
JOIN posts p2 ON pl.related_post_id = p2.id;
SELECT u.display_name, COUNT(DISTINCT b.id) AS TotalBadges, COUNT(DISTINCT c.id) AS TotalComments FROM users u
JOIN badges b ON u.id = b.user_id
JOIN comments c ON u.id = c.user_id GROUP BY u.display_name;
SELECT display_name FROM users WHERE reputation = (SELECT MAX(reputation) FROM users);
SELECT * FROM posts WHERE (post_type_id, score) IN (
  SELECT post_type_id, MAX(score) FROM posts GROUP BY post_type_id
);
SELECT p.id, (SELECT COUNT(*) FROM post_links pl WHERE pl.related_post_id = p.id) AS RelatedPosts FROM posts p;
WITH AvgScoreByUser AS (
  SELECT u.id AS UserID, u.display_name, AVG(p.score) AS AvgScore FROM users u
  JOIN posts p ON u.id = p.user_id GROUP BY u.id, u.display_name
)
SELECT * FROM AvgScoreByUser WHERE AvgScore > 50;
WITH AvgScoreByUser AS (
  SELECT u.id AS UserID, u.display_name, AVG(p.score) AS AvgScore FROM users u
  JOIN posts p ON u.id = p.user_id GROUP BY u.id, u.display_name
)
SELECT display_name, RANK() OVER (ORDER BY AvgScore DESC) AS Rank FROM AvgScoreByUser;
WITH RecursiveHierarchy AS (
  SELECT post_id, related_post_id FROM post_links
  UNION ALL
  SELECT pl.post_id, rh.related_post_id FROM post_links pl
  JOIN RecursiveHierarchy rh ON pl.related_post_id = rh.post_id
)
SELECT * FROM RecursiveHierarchy;
SELECT id, creation_date, score, RANK() OVER (PARTITION BY YEAR(creation_date) ORDER BY score DESC) AS Rank FROM posts;
SELECT user_id, creation_date, COUNT(*) OVER (PARTITION BY user_id ORDER BY creation_date) AS RunningTotal FROM badges;



SELECT 
    u.display_name AS User,
    COUNT(DISTINCT c.id) AS TotalComments,
    COUNT(DISTINCT ph.id) AS TotalEdits,
    COUNT(DISTINCT v.id) AS TotalVotes,
    (COUNT(DISTINCT c.id) + COUNT(DISTINCT ph.id) + COUNT(DISTINCT v.id)) AS TotalContributions
FROM users u
LEFT JOIN comments c ON u.id = c.user_id
LEFT JOIN post_history ph ON u.id = ph.user_id
LEFT JOIN votes v ON u.id = v.user_id
GROUP BY u.id, u.display_name
ORDER BY TotalContributions DESC
LIMIT 10;




SELECT 
    name AS BadgeType,
    COUNT(*) AS TotalEarned
FROM badges
GROUP BY name
ORDER BY TotalEarned DESC
LIMIT 10;

SELECT 
    u.display_name AS User,
    COUNT(b.id) AS TotalBadges
FROM users u
JOIN badges b ON u.id = b.user_id
GROUP BY u.id, u.display_name
ORDER BY TotalBadges DESC
LIMIT 10;




SELECT 
    t.tag_name AS Tag,
    AVG(p.score) AS AvgScore
FROM tags t
JOIN posts p ON t.id = p.id
GROUP BY t.tag_name
ORDER BY AvgScore DESC
LIMIT 10;





SELECT 
    COUNT(*) AS TotalLinks,
    COUNT(DISTINCT post_id) AS UniquePostsLinked,
    COUNT(DISTINCT related_post_id) AS UniqueRelatedPosts
FROM post_links;

SELECT 
    (SELECT COUNT(DISTINCT post_id) FROM post_links) * 100.0 / (SELECT COUNT(*) FROM posts) AS PercentagePostsLinked,
    (SELECT COUNT(DISTINCT related_post_id) FROM post_links) * 100.0 / (SELECT COUNT(*) FROM posts) AS PercentageRelatedPosts
FROM dual;
