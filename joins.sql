

        --1
-- SELECT id, username,first_name, last_name, created_at, updated_at FROM users;
        --2
-- SELECT id, username,first_name, last_name, created_at, updated_at
-- FROM posts
-- JOIN users
-- ON user_id = 100;
        --3
-- SELECT  p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.first_name, u.last_name
-- FROM posts p
-- JOIN users u
-- ON p.user_id = u.id
-- WHERE u.id= 200;
        --4
-- SELECT p.id, p.title, p.url, p.content, p.created_at, p.updated_at, u.username
-- FROM posts p
-- JOIN users u
-- ON p.user_id = u.id
-- WHERE u.first_name = 'Norene'
-- AND u.last_name = 'Schmitt';

          --5
-- SELECT u.username
-- FROM users u
-- JOIN posts p
-- ON p.user_id = u.id
-- WHERE p.created_at >'20150101';
          --6
-- SELECT p.title, p.content, u.username
-- FROM users u
-- JOIN posts p
-- ON p.user_id = u.id
-- WHERE p.created_at < '20150101';

          --7
-- SELECT
-- c.id, c.body, c.created_at, c.updated_at, c.users_id, p.title AS "Post Title"
-- FROM comments c
-- JOIN posts p
-- ON c.post_id = p.id;



-- Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the post was created before January 1, 2015

          --8
-- SELECT c.id, c.body AS "comment_body", c.created_at, c.updated_at, p.title AS "post_title", p.url AS "post_url"
-- FROM comments c
-- JOIN posts p
-- ON p.id = c.post_id
-- WHERE p.created_at > 'January 1, 2015';

-- Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the post was created after January 1, 2015

          --9
-- SELECT c.id, c.body AS "comment_body", c.created_at, c.updated_at, p.title AS "post_title", p.url AS "post_url"
-- FROM comments c
-- JOIN posts p
-- ON p.id = c.post_id
-- WHERE p.created_at > '20150101';


-- Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the comment body contains the word 'USB'

            --10
-- SELECT c.id, c.body AS "comment_body", c.created_at, c.updated_at, p.title AS "post_title", p.url AS "post_url"
-- FROM comments c
-- JOIN posts p
-- ON p.id = c.post_id
-- WHERE c.body LIKE '%USB%';

            --11
-- SELECT p.title, u.first_name, c.body
-- FROM users u
-- JOIN comments c
-- ON u.id = c.users_id
-- JOIN posts p
-- ON p.id = c.post_id
-- WHERE c.body LIKE '%matrix%';

              --12
-- SELECT u.first_name, u.last_name, c.body "comment_body"
-- FROM users u
-- JOIN comments c
-- ON u.id = c.users_id
-- JOIN posts p
-- ON p.id = c.post_id
-- WHERE c.body LIKE '%SSL%'
-- AND p.content LIKE '%dolorum%';




-- Create a query to get the first name of the author of the post (aliased to post_author_first_name), last name of the author of the post (aliased to post_author_last_name), the post title (aliased to post_title), username of the author of the comment (aliased to comment_author_username), and comment body (aliased to comment_body), where the comment body contains the word 'SSL' or 'firewall' and the post content contains the word 'nemo' ( should have 218 results )




        --13

SELECT u.first_name "post_author_first_name", u.last_name "post_author_last_name", p.title "post_title", u.username "comment_author_username", c.body "comment_body"
FROM posts p
JOIN users u
ON u.id = p.user_id
JOIN comments c
ON p.id = c.post_id
JOIN users
ON users.id = c.users_id
WHERE p.content LIKE '%nemo%'
AND (c.body LIKE '%SSL%'
OR c.body LIKE'%firewall%');
