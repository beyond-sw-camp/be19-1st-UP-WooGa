-- 로그인 수행 전 데이터 확인
select * from User;
select * from LoginSuccess;
select * from LoginFailure;

-- 로그인 성공
CALL LoginAttempt('user01', '1234', '192.168.0.1');
select * from LoginSuccess;

-- 로그인 실패 (아이디 없는 경우)
CALL LoginAttempt('test', 'test', '192.168.0.1');

-- 로그인 실패 (비밀번호 틀린 경우)
CALL LoginAttempt('user01', '0000', '192.168.0.1');

-- 로그인 실패 (탈퇴한 회원인 경우)
CALL LoginAttempt('user11', '1234', '192.168.0.1');

select * from LoginFailure;
