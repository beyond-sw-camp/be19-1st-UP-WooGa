-- 게시물 신고
INSERT INTO Report
(report_content, reporter_id, report_sort, reported_user_id, reported_post_id)
VALUES
('신고내용1', 'user01', 'POST', NULL, 1);

INSERT INTO ReportPhoto
(image_url,report_id)
VALUES
('https://url.kr/chnkbw',1),
('https://url.kr/d4z1tk',1);

-- 신고 내용 확인
SELECT
    r.report_id              AS '신고 ID',
    r.report_at              AS '신고 시각',
    r.report_content         AS '신고 내용',
    r.report_state           AS '처리 상태',
    r.report_manager         AS '담당 관리자',
    r.reporter_id            AS '신고자 ID',
    r.report_sort            AS '신고 유형',
    r.reported_user_id       AS '신고 대상 사용자',
    r.reported_post_id       AS '신고 대상 게시물',
    GROUP_CONCAT(rp.image_url SEPARATOR ', ') AS '신고 첨부 이미지 목록'
FROM
    Report r
        LEFT JOIN
    ReportPhoto rp
    ON
            r.report_id = rp.report_id
GROUP BY
    r.report_id, r.report_at, r.report_content, r.report_state,
    r.report_manager, r.reporter_id, r.report_sort,
    r.reported_user_id, r.reported_post_id
ORDER BY
    r.report_id DESC;
