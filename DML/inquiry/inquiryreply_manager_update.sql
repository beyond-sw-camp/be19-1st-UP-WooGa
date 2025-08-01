-- 관리자 문의글 답변 내용 수정(admin_id가 존재하는 관리자 인지 판별)
UPDATE InquiryReply
   SET content = '죄송합니다 고객님. 고객님들간의 거래는 본사가 책임지지 않습니다.'
 WHERE admin_id = 'admin01'
   AND inquiry_id = 1
   AND EXISTS (
     SELECT 1 FROM Manager WHERE admin_id = 'admin01'
   );

-- 문의글 답변 담당 관리자 수정(담당 관리자와 수정될 담당 관리자가 둘다 관리자인지 판별)
UPDATE InquiryReply
   SET admin_id = 'admin02'
 WHERE inquiry_id = 1
   AND admin_id = 'admin01'
   AND EXISTS (
     SELECT 1 FROM Manager WHERE admin_id = 'admin01'
   )
  AND EXISTS (
    SELECT 1 FROM Manager WHERE admin_id = 'admin02'
  );

-- 제대로 수정되었는지 확인
select * from inquiryreply;