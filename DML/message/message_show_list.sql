-- 받은 쪽지함
SELECT
    sender_id as '보낸 사용자',
    title as '쪽지 제목',
    sent_at as '보낸 시간',
    message_expiry_date as '쪽지 만료일',
    CASE
        WHEN check_time IS NULL THEN '읽지 않음'
        ELSE '읽음'
        END AS '읽음 여부'
  FROM message
 WHERE receiver_id = 'user04';

-- 안 읽은 쪽지함
SELECT
    sender_id AS '보낸 사용자',
    title AS '쪽지 제목',
    sent_at AS '보낸 시간'
FROM message
WHERE receiver_id = 'user04'
  AND check_time IS NULL;


-- 보낸 쪽지함
SELECT
       receiver_id as '받는 사용자'
     , title as '쪽지 제목'
     , sent_at as '보낸 시간'
FROM message
WHERE sender_id = 'user03';

select * from message;