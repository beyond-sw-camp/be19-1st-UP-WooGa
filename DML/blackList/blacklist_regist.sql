-- 블랙리스트 등록
INSERT INTO blacklist
(user_id, blacklist_reason, blacklist_start_at, blacklist_period, blacklist_end_at)
VALUES
('user02', '불법게시물 무단게시', CURRENT_TIMESTAMP, 3, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL blacklist_period DAY)),
('user05', '욕설', CURRENT_TIMESTAMP, 5, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL blacklist_period DAY)),
('user06', '불법게시물 무단게시', CURRENT_TIMESTAMP, 8, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL blacklist_period DAY));