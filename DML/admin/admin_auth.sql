-- 1. 관리자 계정 등록
INSERT INTO Manager (admin_id, admin_pwd, admin_phone_number, admin_email)
VALUES ('admin10', 'adminpass10', '010-0000-0000', 'admin10@example.com');

-- 2. 관리자 로그인
SELECT *
FROM Manager
WHERE admin_id = 'admin10'
  AND admin_pwd = 'adminpass10';