-- SELECT id, username,first_name, last_name, created_at, updated_at FROM users;

-- SELECT id, username,first_name, last_name, created_at, updated_at
-- FROM posts
-- JOIN users
-- ON user_id = 100;

-- SELECT  p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.first_name, u.last_name
-- FROM posts p
-- JOIN users u
-- ON p.user_id = u.id
-- WHERE u.id= 200;

-- SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.username
-- FROM posts p
-- JOIN users u
-- ON p.user_id = u.id
-- WHERE u.first_name = 'Norene'
-- AND u.last_name = 'Schmitt';


-- SELECT u.username
-- FROM users u
-- JOIN posts p
-- ON p.user_id = u.id
-- WHERE p.created_at >'20150101';

-- SELECT p.title, p.content, u.username
-- FROM users u
-- JOIN posts p
-- ON p.user_id = u.id
-- WHERE p.created_at < '20150101';


SELECT
c.id, c.body, c.created_at, c.updated_at, c.users_id, p.title AS "Post Title"
FROM comments c
JOIN posts p
ON c.post_id = p.id;
