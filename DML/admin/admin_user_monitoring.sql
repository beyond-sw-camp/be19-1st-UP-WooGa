-- 1. 사용자 정보 조회
-- 전체 사용자 목록
SELECT
       user_id as '회원 아이디'
     , address as '주소'
     , phone_number as '전화번호'
     , email as '이메일'
     , user_state as '사용자 상태'
     , signup_date as '가입 일자'
     , last_login_date as '마지막 로그인 일자'
     , last_pwd_change_date as '마지막 비밀번호 변경 일자'
     , sleep_date as '휴면 전환 일자'
     , resign_date as '탈퇴 일자'
     , report_count as '신고 누적 횟수'
FROM User;

-- 특정 사용자 조회
SELECT
    user_id as '회원 아이디'
     , address as '주소'
     , phone_number as '전화번호'
     , email as '이메일'
     , user_state as '사용자 상태'
     , signup_date as '가입 일자'
     , last_login_date as '마지막 로그인 일자'
     , last_pwd_change_date as '마지막 비밀번호 변경 일자'
     , sleep_date as '휴면 전환 일자'
     , resign_date as '탈퇴 일자'
     , report_count as '신고 누적 횟수'
FROM User
WHERE user_id = 'user01';

-- 2. 로그인 성공 이력 조회
-- 전체 성공 이력
SELECT * FROM LoginSuccess ORDER BY login_success_at DESC;

-- 특정 사용자 이력
SELECT * FROM LoginSuccess
WHERE user_id = 'user01'
ORDER BY login_success_at DESC;

-- 3. 로그인 실패 이력 조회
-- 전체 실패 이력
SELECT * FROM LoginFailure ORDER BY login_failure_at DESC;

-- 특정 사용자 이력
SELECT * FROM LoginFailure
WHERE user_id = 'user01'
ORDER BY login_failure_at DESC;

-- 4. 개인정보 변경 이력 조회
-- 전체 사용자 변경 이력
SELECT * FROM UserInfoUpdate ORDER BY user_update_at DESC;

-- 특정 사용자 변경 이력
SELECT * FROM UserInfoUpdate
WHERE user_id = 'user01'
ORDER BY user_update_at DESC;
