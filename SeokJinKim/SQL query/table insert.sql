-- answer 권한 입력
INSERT INTO answer (ANSWER, ANSWER_ID)
VALUES ("(1)매우만족", "ANSWER1");
INSERT INTO answer (ANSWER, ANSWER_ID)
VALUES ("(2)만족", "ANSWER2");
INSERT INTO answer (ANSWER, ANSWER_ID)
VALUES ("(3)보통", "ANSWER3");
INSERT INTO answer (ANSWER, ANSWER_ID)
VALUES ("(4)불만", "ANSWER4");
INSERT INTO answer (ANSWER, ANSWER_ID)
VALUES ("(5)매우불만", "ANSWER5");


-- question 권한 입력
INSERT INTO question (QUESTION, QUESTION_ID)
VALUES ("1. 상담시 친절하게 안내 받으시고 궁금한 사항에 대한 답변이 만족스러우셨습니까?", "QUESTION1");
INSERT INTO question (QUESTION, QUESTION_ID)
VALUES ("2. PT(1:1 퍼스널 트레이닝) 진행시 친절하게 안내 받으시고 궁금한 사항에 대한 답변이 만족스러우셨습니까?", "QUESTION2");
INSERT INTO question (QUESTION, QUESTION_ID)
VALUES ("3. OT(1:1 무료 PT) 진행시 친절하게 안내 받으시고 궁금한 사항에 대한 답변이 만족스러우셨습니까?", "QUESTION3");
INSERT INTO question (QUESTION, QUESTION_ID)
VALUES ("4. 헬스장 오픈, 마감시 시간을 정확히 준수하였습니까?", "QUESTION4");
INSERT INTO question (QUESTION, QUESTION_ID)
VALUES ("5. 전반적인 센터 이용이 만족스러우셨습니까?", "QUESTION5");

-- question_answers 권한 입력
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION1", "ANSWER1");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION1", "ANSWER2");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION1", "ANSWER3");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION1", "ANSWER4");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION1", "ANSWER5");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION2", "ANSWER1");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION2", "ANSWER2");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION2", "ANSWER3");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION2", "ANSWER4");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION2", "ANSWER5");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION3", "ANSWER1");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION3", "ANSWER2");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION3", "ANSWER3");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION3", "ANSWER4");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION3", "ANSWER5");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION4", "ANSWER1");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION4", "ANSWER2");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION4", "ANSWER3");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION4", "ANSWER4");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION4", "ANSWER5");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION5", "ANSWER1");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION5", "ANSWER2");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION5", "ANSWER3");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION5", "ANSWER4");
INSERT INTO question_answers (QUESTION_ID, ANSWER_ID)
VALUES ("QUESTION5", "ANSWER5");

-- USER 권한 입력
INSERT INTO user (NAME,USER_ID,PASSWORD,PHONE_NUMBER)
VALUES("홍길동","USER1","password1","010-1111-2222");
INSERT INTO user (NAME,USER_ID,PASSWORD,PHONE_NUMBER)
VALUES("박보검","USER2","password2","010-2222-3333");
INSERT INTO user (NAME,USER_ID,PASSWORD,PHONE_NUMBER)
VALUES("강형욱","USER3","password3","010-3333-4444");
INSERT INTO user (NAME,USER_ID,PASSWORD,PHONE_NUMBER)
VALUES("오은영","USER4","password4","010-4444-5555");
INSERT INTO user (NAME,USER_ID,PASSWORD,PHONE_NUMBER)
VALUES("강형욱","USER5","password5","010-5555-6666");
INSERT INTO user (NAME,USER_ID,PASSWORD,PHONE_NUMBER)
VALUES("관리자","ADMIN","password6","010-6666-7777");

-- auth_names 권한 입력
INSERT INTO auth_names (AUTH_NAME,AUTH_UNIQUE_ID)
VALUES("ADMIN","A1");
INSERT INTO auth_names (AUTH_NAME,AUTH_UNIQUE_ID)
VALUES("GUEST","A2");

-- user_auth 사용자권한목록
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


select *
from answer;

select *
from auth_names;

select *
from question;

select *
from question_answers;

select *
from survey;

select *
from user;

select *
from user_auth;