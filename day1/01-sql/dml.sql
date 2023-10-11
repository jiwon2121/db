CREATE TABLE Article(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(100) NOT NULL,
  content VARCHAR(200) NOT NULL,
  createAt DATE NOT NULL
);

INSERT INTO Article (id, title, content, createAt)
VALUES (1, 'hello', 'world', '2000-01-01');

-- 모든 컬럼을 다 넣는 경우에는 컬럼명을 생략할 수 있다.
INSERT INTO Article
VALUES (2, 'hello', 'ssafy', '2002-01-01');

-- ID를 생략하는 버전
INSERT INTO Article (title, content, createAt)
VALUES ('title1', 'content1', '1900-01-01');

INSERT INTO Article (title, content, createAt)
VALUES ('title2', 'content2', '1800-01-01');

INSERT INTO Article (title, content, createAt)
VALUES ('title3', 'content3', '1700-01-01');

INSERT INTO Article (title, content, createAt)
VALUES ('title3', 'content3', '1700-01-01');

INSERT INtO Article
VALUES (8, 'hello', 'ssafy', '2002-01-01');

-- 값 여러개 생성하기 (추가하기)
-- 일부 RDBMS만 가능
INSERT INTO Article 
  (title, content, createAt)
VALUES
  ('title1', 'content1', '2000-01-01'),
  ('title2', 'content2', '2000-01-02'),
  ('title3', 'content3', '2000-01-03');

-- DATE 함수 사용
INSERT INTO Article
VALUES (100, 'date', 'function', DATE());

-- 데이터 수정하기
-- 모든 데이터의 title 컬럼이 전부 수정
UPDATE Article
SET title = 'update Title';

-- 특정 데이터의 title 수정
UPDATE Article
SET title = 'update Title'
WHERE id = 1;

UPDATE Article
SET 
  title = 'update Title',
  content = 'new content'
WHERE id = 2;

----

DELETE FROM Article
WHERE id = 1;

-- 서브 쿼리 사용해보기
DELETE FROM Article
WHERE id IN (
  SELECT id
  FROM Article
  ORDER BY createAt
  LIMIT 2
);

DROP TABLE Article;