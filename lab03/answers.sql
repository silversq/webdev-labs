-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name FROM users ORDER BY last_name;



-- Exercise 4

SELECT id, user_id, image_url FROM posts WHERE user_id = 26;


-- Exercise 5

SELECT id, user_id, image_url FROM posts WHERE user_id = 26 or user_id = 12;


-- Exercise 6

SELECT count(posts) FROM posts;


-- Exercise 7

SELECT user_id, count(comments) FROM comments GROUP BY user_id ORDER BY count desc;


-- Exercise 8

SELECT posts.id, posts.user_id, posts.image_url, users.username, users.first_name, users.last_name 
FROM posts INNER JOIN users ON users.id=posts.user_id WHERE posts.user_id = 26 or posts.user_id = 12;


-- Exercise 9


SELECT p.id, p.pub_date, f.following_id FROM following f INNER JOIN posts p ON p.user_id = f.following_id WHERE f.user_id = 26; 

-- Exercise 10

INSERT INTO bookmarks(user_id, post_id, timestamp) VALUES(26, 219, CURRENT_TIMESTAMP);
INSERT INTO bookmarks(user_id, post_id) VALUES(26, 220, CURRENT_TIMESTAMP);
INSERT INTO bookmarks(user_id, post_id) VALUES(26, 221, CURRENT_TIMESTAMP);

-- Exercise 11


INSERT INTO bookmarks(user_id, post_id, timestamp) VALUES(26, 219, CURRENT_TIMESTAMP);
INSERT INTO bookmarks(user_id, post_id, timestamp) VALUES(26, 220, CURRENT_TIMESTAMP);
INSERT INTO bookmarks(user_id, post_id, timestamp) VALUES(26, 221, CURRENT_TIMESTAMP);




-- Exercise 12


DELETE FROM bookmarks WHERE user_id = 26 and post_id = 219;
DELETE FROM bookmarks WHERE user_id = 26 and post_id = 220;
DELETE FROM bookmarks WHERE user_id = 26 and post_id = 221;

-- Exercise 13

UPDATE users SET email = 'knick2022@gmail.com' WHERE id = 26;


-- Exercise 14
