-- auth_names 권한 입력
INSERT INTO auth_names (AUTH_NAME,AUTH_UNIQUE_ID)
VALUES("ADMIN","A1");
INSERT INTO auth_names (AUTH_NAME,AUTH_UNIQUE_ID)
VALUES("GUEST","A2");

-- user_auth
INSERT INTO user_auth (AUTH_UNIQUE_ID,USER_ID)
VALUES("A1","ADMIN");

INSERT INTO user_auth (AUTH_UNIQUE_ID,USER_ID)
VALUES("A2","USER1");

INSERT INTO user_auth (AUTH_UNIQUE_ID,USER_ID)
VALUES("A2","USER2");

INSERT INTO user_auth (AUTH_UNIQUE_ID,USER_ID)
VALUES("A2","USER3");

INSERT INTO user_auth (AUTH_UNIQUE_ID,USER_ID)
VALUES("A2","USER4");

INSERT INTO user_auth (AUTH_UNIQUE_ID,USER_ID)
VALUES("A2","USER5");


DELETE FROM answer
WHERE ANSWER = 'QUESTION1';

select *
from user;

select *
from auth_names;

select *
from user_auth;

select *
from answanswerer;