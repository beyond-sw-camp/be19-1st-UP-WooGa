-- 신고한 내역 조회
SELECT
    report_id           AS '신고 ID',
        report_at           AS '신고 일시',
        report_sort         AS '신고 유형',
        report_content      AS '신고 내용',
        reported_user_id    AS '신고 대상 사용자',
        reported_post_id    AS '신고 대상 게시물',
        report_state        AS '처리 상태',
        report_manager      AS '처리 관리자'
FROM
    Report
WHERE
        reporter_id = 'user01'
ORDER BY
    report_at DESC;
