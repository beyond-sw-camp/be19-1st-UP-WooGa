-- 비밀번호와 전화번호만 수정
CALL UpdateUserInfo('user01', '1234', NULL, '010-9999-9999', NULL);

CALL UpdateUserInfo('user01', NULL, NULL, NULL, '경기도 용인시');


select * from User;
select * from UserInfoUpdate;