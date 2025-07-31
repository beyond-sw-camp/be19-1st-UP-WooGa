-- 특정 사용자의 첫번쨰 문의글 삭제
DELETE
  FROM Inquiry
 WHERE inquiry_id = (SELECT
                            inquiry_id
                       FROM Inquiry
                      WHERE user_id = 'user001'
                   ORDER BY inquiry_id ASC
                      LIMIT 0,1
                    );

-- 특정 날짜 이전 문의글 삭제
 DELETE
   FROM Inquiry
  WHERE created_at < '2025-07-22';

