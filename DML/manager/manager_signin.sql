-- 관리자 계정 확인
SELECT
    admin_id as '관리자 아이디'
  , admin_pwd as '관리자 비밀번호'
  , admin_phone_number as '관리자 전화번호'
  , admin_email as '관리자 이메일'
FROM Manager;

-- 관리자 로그인 유효성 검사 (성공 -> 조회 1건)
SELECT *
FROM Manager
WHERE admin_id = 'admin10'
  AND admin_pwd = 'adminpas10';

-- 관리자 로그인 유효성 검사 (실패 -> 조회 0건)
SELECT *
FROM Manager
WHERE admin_id = 'admin10'
  AND admin_pwd = 'adminpass11';