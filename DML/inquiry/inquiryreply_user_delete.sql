-- 일반 사용자 문의 답변 삭제(user_id가 존재하는 일반사용자 인지 판별)
DELETE
  FROM InquiryReply
 WHERE inquiry_id = 3
   AND user_id = 'user01'
   AND EXISTS (
     SELECT 1 FROM User WHERE user_id = 'user01'
   );

-- 제대로 삭제 되었는지 확인
select
    reply_id as '문의 답변 번호'
  , content as '답변 내용'
  , reply_date as '답변 일시'
  , inquiry_id as '문의 게시물 번호'
  , answerer_sort as '답변자 구분'
  , user_id as '사용자 아이디'
from inquiryreply
where answerer_sort = 'USER';