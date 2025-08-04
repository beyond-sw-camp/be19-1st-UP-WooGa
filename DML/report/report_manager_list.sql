-- 전체 신고글 확인
SELECT
    report_id         AS '신고 ID',
    reporter_id       AS '신고자',
    report_sort       AS '신고 유형',
    report_content    AS '신고 내용',
    report_manager    AS '관리자',
    report_state      AS '처리 상태',
    reported_user_id  AS '신고 대상 사용자',
    reported_post_id  AS '신고 대상 게시글',
    report_at         AS '신고 일시'
FROM
    Report;

-- 본인(관리자)에게 할당된 신고 내역 조회
SELECT
    report_id         AS '신고 ID',
    reporter_id       AS '신고자',
    report_sort       AS '신고 유형',
    report_content    AS '신고 내용',
    report_state      AS '처리 상태',
    reported_user_id  AS '신고 대상 사용자',
    reported_post_id  AS '신고 대상 게시글',
    report_at         AS '신고 일시'
FROM
    Report
WHERE
        report_manager = 'admin04'
ORDER BY
    report_state, report_at DESC;