
CREATE TABLE ANSWER
(
  ANSWER    VARCHAR(200) NOT NULL COMMENT '결과값',
  ANSWER_ID VARCHAR(200) NOT NULL COMMENT '결과고유값',
  PRIMARY KEY (ANSWER_ID)
) COMMENT '결과값';

CREATE TABLE AUTH_NAMES
(
  AUTH_NAME      VARCHAR(200) NOT NULL COMMENT '권한',
  AUTH_UNIQUE_ID VARCHAR(200) NOT NULL COMMENT '권한 고유값',
  PRIMARY KEY (AUTH_UNIQUE_ID)
) COMMENT '권한이름';

CREATE TABLE QUESTION
(
  QUESTION    VARCHAR(200) NOT NULL COMMENT '문항',
  QUESTION_ID VARCHAR(200) NOT NULL COMMENT '문항고유값',
  DISTRACTOR  VARCHAR(200) NOT NULL COMMENT '답변선택지',
  PRIMARY KEY (QUESTION_ID)
) COMMENT '문항';

CREATE TABLE SURVEY
(
  QUESTION_ID VARCHAR(200) NOT NULL COMMENT '문항고유값',
  ANSWER_ID   VARCHAR(200) NOT NULL COMMENT '결과고유값',
  USER_ID     VARCHAR(200) NOT NULL COMMENT '사용자고유값'
) COMMENT '설문전체';

CREATE TABLE USER
(
  NAME         VARCHAR(200) NOT NULL COMMENT '이름',
  USER_ID      VARCHAR(200) NOT NULL COMMENT '사용자고유값',
  PASSWORD     VARCHAR(200) NOT NULL COMMENT '비밀번호',
  PHONE_NUMBER VARCHAR(200) NOT NULL COMMENT '전화번호',
  PRIMARY KEY (USER_ID)
) COMMENT '사용자';

CREATE TABLE USER_AUTH
(
  AUTH_UNIQUE_ID VARCHAR(200) NOT NULL COMMENT '권한 고유값',
  USER_ID        VARCHAR(200) NOT NULL COMMENT '사용자고유값'
) COMMENT '사용자권한목록';

ALTER TABLE SURVEY
  ADD CONSTRAINT FK_QUESTION_TO_SURVEY
    FOREIGN KEY (QUESTION_ID)
    REFERENCES QUESTION (QUESTION_ID);

ALTER TABLE SURVEY
  ADD CONSTRAINT FK_ANSWER_TO_SURVEY
    FOREIGN KEY (ANSWER_ID)
    REFERENCES ANSWER (ANSWER_ID);

ALTER TABLE SURVEY
  ADD CONSTRAINT FK_USER_TO_SURVEY
    FOREIGN KEY (USER_ID)
    REFERENCES USER (USER_ID);

ALTER TABLE USER_AUTH
  ADD CONSTRAINT FK_AUTH_NAMES_TO_USER_AUTH
    FOREIGN KEY (AUTH_UNIQUE_ID)
    REFERENCES AUTH_NAMES (AUTH_UNIQUE_ID);

ALTER TABLE USER_AUTH
  ADD CONSTRAINT FK_USER_TO_USER_AUTH
    FOREIGN KEY (USER_ID)
    REFERENCES USER (USER_ID);
