-- 변경 전 회원 정보 확인
select
       user_id as '회원 아이디'
     , pwd as '비밀번호'
     , address as '주소'
     , phone_number as '전화번호'
  from User
 where user_id = 'user01';

-- 회원정보 수정
CALL UpdateUserInfo('user01', '1234', NULL, '010-1234-1234', NULL);
CALL UpdateUserInfo('user01', NULL, NULL, NULL, '서울시 강남구');

-- 변경 후 회원 정보 확인
select
       user_id
     , pwd
     , address
     , phone_number
from User
where user_id = 'user01';

-- 변경 이력 확인
select
     user_update_id as '업데이트 번호'
   , user_id as '회원 아이디'
   , user_update_at as '마지막 업데이트 시간'
   , user_update_previous_pwd as '변경 전 비밀번호'
   , user_update_after_pwd as '변경 후 비밀번호'
   , user_update_previous_address as '변경 전 주소'
   , user_update_after_address as '변경 후 주소'
   , user_update_previous_phone_number as '변경 전 전화번호'
   , user_update_after_phone_number as '변경 전 전화번호'
   , user_update_previous_email as '변경 전 이메일'
   , user_update_after_email as '변경 전 이메일'
from UserInfoUpdate
where user_id = 'user01';
