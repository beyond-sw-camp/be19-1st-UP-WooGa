-- 게시물 신고누적횟수 증가
UPDATE post
   SET report_count = report_count + 1
 WHERE post_id = (SELECT reported_post_id FROM report WHERE report_id = 1);

-- 위에서 report_id = 6에 연결된 post의 정보를 다시 확인
SELECT
    p.post_id       AS '게시물 ID',
        p.title         AS '게시물 제목',
        p.report_count  AS '신고 누적 횟수',
        u.user_id       AS '작성자 ID'
FROM
    post p
        JOIN user u ON p.user_id = u.user_id
WHERE
        p.post_id = (SELECT reported_post_id FROM report WHERE report_id = 1);
