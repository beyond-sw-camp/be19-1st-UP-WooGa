-- 탈퇴 전 회원 아이디
select
    user_id as '회원 아이디'
  , user_state '회원 상태'
  from user
 where user_id = 'user09';

-- 탈퇴
UPDATE User
SET user_state = 'RESIGN',
    resign_date = CURRENT_TIMESTAMP
WHERE user_id = 'user09';

-- 탈퇴 후 회원 상태
select
    user_id as '회원 아이디'
     , user_state '회원 상태'
from user
where user_id = 'user09';

-- 로그인 시도 시 실패함
CALL LoginAttempt('user09', '1234', '192.168.0.1');
