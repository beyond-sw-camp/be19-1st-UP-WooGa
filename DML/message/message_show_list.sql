-- 메세지 목록 확인
SELECT message_id
     , title
  FROM message
 WHERE receiver_id = 'user01';