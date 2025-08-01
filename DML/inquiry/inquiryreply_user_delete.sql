-- 일반 사용자 문의 답변 삭제(user_id가 존재하는 일반사용자 인지 판별)
DELETE
  FROM InquiryReply
 WHERE inquiry_id = 2
   AND user_id = 'user01'
   AND EXISTS (
     SELECT 1 FROM User WHERE user_id = 'user01'
   );

-- 제대로 삭제 되었는지 확인
select * from inquiryreply;