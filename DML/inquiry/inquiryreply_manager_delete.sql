-- 관리자 문의 답변 삭제(admin_id가 존재하는 관리자 인지 판별)
DELETE
  FROM InquiryReply
 WHERE inquiry_id = 1
   AND admin_id = 'admin01'
   AND EXISTS (
     SELECT 1 FROM Manager WHERE admin_id = 'admin01'
   );

-- 제대로 삭제 되었는지 확인
select * from inquiryreply;