-- 특정 사용자의 글을 삭제
CALL DeleteInquiry (2,'user02');

-- 제대로 삭제되었는지 확인
select
    inquiry_id as '문의글 번호'
     , title as '문의 제목'
     , content as '문의 내용'
     , created_at as '문의 일자'
     , user_id as '사용자 아이디'
from inquiry
where user_id = 'user02';

