-- 관리자 문의 답변 삭제(admin_id가 존재하는 관리자 인지 판별)
DELETE
  FROM InquiryReply
 WHERE inquiry_id = 1
   AND admin_id = 'admin01'
   AND EXISTS (
     SELECT 1 FROM Manager WHERE admin_id = 'admin01'
   );

-- 제대로 삭제 되었는지 확인
select
    reply_id as '문의 답변 번호'
     , content as '답변 내용'
     , reply_date as '답변 일시'
     , inquiry_id as '문의 게시물 번호'
     , answerer_sort as '답변자 구분'
     , admin_id as '관리자 아이디'
from inquiryreply
where answerer_sort = 'MANAGER';