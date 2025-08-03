-- 메세지 삭제
DELETE 
  FROM message
 WHERE message_id = 1
   AND receiver_id = 'user02';

select * from message;