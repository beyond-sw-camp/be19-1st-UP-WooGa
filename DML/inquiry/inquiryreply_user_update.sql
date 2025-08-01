-- 일반 사용자 문의글 답변 내용 수정(user_id가 존재하는 일반사용자 인지 판별)
UPDATE InquiryReply
   SET content = '둘이 알아서 하십쇼.'
 WHERE user_id = 'user01'
   AND inquiry_id = 2
   AND EXISTS (
     SELECT 1 FROM USER WHERE user_id = 'user01'
   );

-- 제대로 수정되었는지 확인
select * from inquiryreply;