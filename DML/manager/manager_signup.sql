-- 관리자 계정 확인
SELECT
    admin_id as '관리자 아이디'
  , admin_pwd as '관리자 비밀번호'
  , admin_phone_number as '관리자 전화번호'
  , admin_email as '관리자 이메일'
FROM Manager;

-- 관리자 계정 등록
INSERT INTO Manager (admin_id, admin_pwd, admin_phone_number, admin_email)
VALUES ('admin10', 'adminpas10', '010-9999-9999', 'admin10@example.com');

-- 추가된 관리자 계정 확인
SELECT
    admin_id as '관리자 아이디'
     , admin_pwd as '관리자 비밀번호'
     , admin_phone_number as '관리자 전화번호'
     , admin_email as '관리자 이메일'
FROM Manager;
