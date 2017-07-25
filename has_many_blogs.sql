
\c keith
DROP DATABASE IF EXISTS has_many_blogs;
DROP USER IF EXISTS has_many_user;

CREATE USER has_many_user;

CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

\c has_many_blogs

DROP TABLE IF EXISTS comments;
DROP TABLE  IF EXISTS posts;
DROP TABLE IF EXISTS users;



CREATE TABLE users (
id SERIAL NOT NULL PRIMARY KEY,
username varchar(90) NOT NULL,
first_name varchar(90) DEFAULT NULL,
last_name varchar(90) DEFAULT NULL,
created_at timestamp with time zone NOT NULL DEFAULT NOW(),
updated_at timestamp with time zone NOT NULL DEFAULT NOW()
);



CREATE TABLE posts(
id SERIAL NOT NULL PRIMARY KEY,
title varchar(180) DEFAULT NULL,
url varchar(150) DEFAULT NULL,
content text  DEFAULT NULL,
created_at timestamp with time zone NOT NULL DEFAULT NOW(),
updated_at timestamp with time zone NOT NULL DEFAULT NOW(),
user_id INT REFERENCES users(id)
);



CREATE TABLE comments(
id SERIAL NOT NULL PRIMARY KEY,
body varchar(510) DEFAULT NULL,
created_at timestamp with time zone NOT NULL DEFAULT NOW(),
updated_at timestamp with time zone NOT NULL DEFAULT NOW(),
users_id INT REFERENCES users(id),
post_id INT REFERENCES posts(id)
);



