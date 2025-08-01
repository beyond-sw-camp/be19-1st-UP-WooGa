-- 특정 사용자의 글을 삭제(user01이 본인의 글을 삭제)
DELETE
  FROM Inquiry
 WHERE inquiry_id = 1 and user_id = 'user01';

-- 관리자가 문의글을 삭제
DELETE
  FROM Inquiry
 WHERE inquiry_id = 1;

-- 특정 날짜 이전 문의글 삭제
 DELETE
   FROM Inquiry
  WHERE created_at < '2025-07-22';

select *
  from inquiry;

