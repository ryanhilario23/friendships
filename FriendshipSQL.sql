/*
CREATE TABLE friendships
(
  id         INT       NOT NULL AUTO_INCREMENT,
  user_id    INT       NOT NULL,
  friend_id  INT       NOT NULL,
  created_at timestamp NULL    ,
  updated_at timestamp NULL    ,
  PRIMARY KEY (id)
);

CREATE TABLE users
(
  id         INT          NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NULL    ,
  last_name  VARCHAR(255) NULL    ,
  created_at timestamp    NULL    ,
  updated_at timestamp    NULL    ,
  PRIMARY KEY (id)
);

ALTER TABLE friendships
  ADD CONSTRAINT FK_users_TO_friendships
    FOREIGN KEY (user_id)
    REFERENCES users (id);

ALTER TABLE friendships
  ADD CONSTRAINT FK_users_TO_friendships1
    FOREIGN KEY (friend_id)
    REFERENCES users (id);
*/
-- Scott Pilgram Characters
/*
INSERT INTO users(first_name,last_name)
VALUES ('Scott', "Pilgrim"),
('Ramona', "Flower"),
('Wallace', "Wells"),
('"Young" Neil', "Nordegraf"),
('Todd', 'Ingram'),
('Lucas', 'Lee'),
('Gordon', "Graves");
SELECT *
FROM users;

INSERT INTO friendships (user_id,friend_id)
VALUES(1,2),(1,4),(1,6),
(2,1),(2,3),(2,5),
(3,2),(3,5),
(4,3),
(5,1),(5,6),
(6,2),(6,3);

SELECT *
FROM friendships

SELECT users.first_name, users.last_name, users2.first_name as friends_first_name, users2.last_name as friends_last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as users2 ON users2.id = friendships.friend_id;

SELECT COUNT(*) as number_of_connections
FROM friendships

SELECT user_id, users.first_name, users.last_name, COUNT(user_id) as number_of_friends 
FROM friendships
JOIN users ON users.id = friendships.user_id
GROUP BY user_id
ORDER BY number_of_friends DESC
LIMIT 1;

SELECT users2.id, users2.first_name, users2.last_name
FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as users2 ON users2.id = friendships.friend_id
WHERE users.id = 3
ORDER BY first_name;
*/ 