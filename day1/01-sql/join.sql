CREATE TABLE users(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(50) NOT NULL
);

create TABLE articles(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(50) NOT NULL,
  content VARCHAR(100) NOT NULL,
  userId INTEGER NOT NULL,
  FOREIGN KEY(userId)
    REFERENCES users(id)
);

INSERT INTO
  users (name)
VALUES
  ('하석주'), ('송윤미'), ('유하선');

INSERT INTO
  articles (title, content, userID)
VALUES
  ('제목1', '내용1', 1),
  ('제목2', '내용2', 2),
  ('제목3', '내용3', 1),
  ('제목4', '내용4', 4),
  ('제목5', '내용5', 1);

SELECT *
FROM users INNER JOIN articles
ON articles.userID = users.id;

SELECT *
FROM articles LEFT JOIN users
ON articles.userId = users.id;

SELECT *
FROM users LEFT JOIN articles
ON articles.userId = users.id
WHERE articles.id IS NOT NULL;

SELECT *
FROM users RIGHT JOIN articles
ON articles.userId = users.id;
