-- 메세지 작성
INSERT INTO message(
message_id, sender_id, receiver_id, title, content, sent_at, message_expiry_date, check_time
)
VALUES
(NULL, 'user01', 'user02', 'test_title', '테스트입니다12', CURRENT_TIMESTAMP, NULL, NULL),
(NULL, 'user03', 'user04', 'test_title2', '테스트입니다34', CURRENT_TIMESTAMP, NULL, NULL),
(NULL, 'user02', 'user01', 'test_title3', '테스트입니다21', CURRENT_TIMESTAMP, NULL, NULL),
(NULL, 'user07', 'user08', 'test_title4', '테스트입니다78', CURRENT_TIMESTAMP, NULL, NULL);