-- 일반 사용자 회원가입
-- 사용자는 아이디, 비밀번호, 주소, 전화번호, 이메일 입력
-- 가입일자, 마지막로그인일자, 마지막비밀번호변경날짜, 사용자 상태, 신고누적횟수는 default 값으로 자동 설정됨

-- 기존 회원 목록
select * from User order by signup_date desc;
select * from UserInfoUpdate order by user_update_at desc;

INSERT INTO User (
                  user_id
                , pwd
                , address
                , phone_number
                , email
)
VALUES (
    'test_user'
  , 'test'
  , '서울시 동작구'
  , '010-1234-5678'
  , 'test@test.com'
       );

-- 데이터 확인
select * from User order by signup_date desc;
select * from UserInfoUpdate order by user_update_at desc;