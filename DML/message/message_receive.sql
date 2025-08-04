-- 메세지 수신
-- 메세지 수신 시에 만료 기간도 자동으로 갱신됩니다.
SELECT
    message_id as '쪽지 번호',
    sender_id as '보낸 사용자',
    receiver_id as '받는 사용자',
    title as '쪽지 제목',
    content as '쪽지 내용',
    sent_at as '보낸 시간',
    message_expiry_date as '쪽지 만료일'
  FROM message
 WHERE message_id = 1
   AND receiver_id = 'user02';

-- 읽지 않은 경우에만 읽은 시간과 만료일 갱신
UPDATE message
   SET check_time = CURRENT_TIMESTAMP 
     , message_expiry_date = DATE_ADD(NOW(), INTERVAL 1 MONTH)
 WHERE message_id = 1
   AND check_time IS NULL;

SELECT
    message_id as '쪽지 번호',
    check_time as '확인 시각',
    message_expiry_date as '쪽지 만료일'
FROM message
WHERE message_id = 1
  AND receiver_id = 'user02';
