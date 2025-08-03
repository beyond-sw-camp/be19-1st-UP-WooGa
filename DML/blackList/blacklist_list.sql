-- 블랙리스트 조회
SELECT
    b.user_id AS '블랙리스트 사용자',
    u.report_count AS '누적 신고 횟수',
    b.blacklist_reason AS '사유',
    b.blacklist_period AS '기간(일)',
    b.blacklist_start_at AS '등록 일시',
    b.blacklist_end_at AS '블랙리스트 종료일'
FROM blacklist b
JOIN user u ON b.user_id = u.user_id;


