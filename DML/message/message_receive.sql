-- 메세지 수신
-- 메세지 수신 시에 만료 기간도 자동으로 갱신됩니다.
SELECT message_id
     , sender_id
	  , receiver_id
	  , title
	  , content
	  , sent_at
  FROM message
 WHERE message_id = 1;

UPDATE message 
   SET check_time = CURRENT_TIMESTAMP 
     , message_expiry_date = DATE_ADD(NOW(), INTERVAL 1 MONTH)
 WHERE message_id = 1 AND check_time IS NULL;