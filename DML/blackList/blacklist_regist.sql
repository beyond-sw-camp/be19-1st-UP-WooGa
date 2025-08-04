-- 블랙리스트 등록
INSERT INTO blacklist
(user_id, blacklist_reason, blacklist_start_at, blacklist_period, blacklist_end_at)
VALUES
('user02', '불법게시물 무단게시', CURRENT_TIMESTAMP, 3, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL blacklist_period DAY)),
('user05', '욕설', CURRENT_TIMESTAMP, 5, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL blacklist_period DAY)),
('user06', '불법게시물 무단게시', CURRENT_TIMESTAMP, 8, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL blacklist_period DAY));

-- 블랙리스트 조회
SELECT
    user_id AS '블랙리스트 사용자',
    blacklist_reason AS '사유',
    blacklist_start_at AS '등록 일시',
    blacklist_period AS '기간(일)',
    blacklist_end_at AS '블랙리스트 종료일'
FROM blacklist;
