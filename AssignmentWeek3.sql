DROP TABLE IF EXISTS reviewers;

DROP TABLE IF EXISTS videos;

CREATE TABLE videos

(
video_id int PRIMARY KEY,
title varchar(100) NOT NULL,
length decimal,
url varchar(100) NOT NULL
);

INSERT INTO videos (video_id, title, length, url) VALUES (1, 'how to boil an egg', 6.23, 'https://www.youtube.com/watch?v=8dCZm5aLj9A');

INSERT INTO videos (video_id, title, length, url) VALUES (2, 'how to crack a coconut', 3.45, 'https://www.youtube.com/watch?v=lycdBxKbrlY');

INSERT INTO videos (video_id, title, length, url) VALUES (3, 'how to tie a tie', 2.33, 'https://www.youtube.com/watch?v=xAg7z6u4NE8');

SELECT * FROM videos;

CREATE TABLE reviewers
(
video_id int PRIMARY KEY,
fname varchar(100) NOT NULL,
rating int,
review varchar(100) NOT NULL
);

INSERT INTO reviewers (video_id, fname, rating, review) VALUES (1, dave, 3, 'hated it!');

INSERT INTO reviewers (video_id, fname, rating, review) VALUES (1, sara, 2, 'really hated it!');

INSERT INTO reviewers (video_id, fname, rating, review) VALUES (1, mike, 1, 'worst video ever!');

INSERT INTO reviewers (video_id, fname, rating, review) VALUES (2, greg, 5, 'great video!');

INSERT INTO reviewers (video_id, fname, rating, review) VALUES (2, tom, 4, 'this is amazing!');

SELECT * FROM reviewers;

SELECT *
FROM videos
INNER JOIN reviewers
ON videos.video_id = reviewers.video_id;




