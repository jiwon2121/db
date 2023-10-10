CREATE TABLE example (
  -- 필드 데이터 타입 제약 조건
  ExamId INTEGER PRIMARY KEY AUTOINCREMENT,
  LastName VARCHAR(50) NOT NULL,
  FirstNAME VARCHAR(50) NOT NULL
);

PRAGMA table_info('example');

-- 컬럼 추가
ALTER TABLE example
ADD COLUMN Country VARCHAR(100) NOT NULL;

ALTER TABLE example
ADD COLUMN Age INTEGER NOT NULL;

ALTER TABLE example
ADD COLUMN Address VARCHAR(100) NOT NULL;

ALTER TABLE example
RENAME COLUMN Address to PostCode;

ALTER TABLE example
DROP COLUMN  PostCode;

ALTER TABLE example
RENAME TO new_examples;

DROP TABLE new_examples;