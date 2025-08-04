-- 사용자 신고
INSERT INTO Report
(report_content, reporter_id, report_sort, reported_user_id, reported_post_id)
VALUES
('신고내용11', 'user02', 'USER', 'user01', NULL);

-- 신고 내용 확인
SELECT
    report_id           AS '신고 ID',
        report_at           AS '신고 시각',
        report_content      AS '신고 내용',
        report_state        AS '처리 상태',
        report_manager      AS '담당 관리자 ID',
        reporter_id         AS '신고자 ID',
        report_sort         AS '신고 유형',
        reported_user_id    AS '신고 대상 사용자 ID'
FROM
    Report
WHERE
        report_sort = 'USER'
ORDER BY
    report_id DESC;
