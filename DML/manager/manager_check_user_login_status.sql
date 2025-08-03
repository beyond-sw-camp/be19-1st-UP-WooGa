-- 사용자 마지막 로그인 날짜 및 상태 확인
select
    user_id as '회원 아이디'
     , last_login_date as '마지막 로그인 날짜'
     , user_state as '사용자 상태'
from user
order by last_login_date;