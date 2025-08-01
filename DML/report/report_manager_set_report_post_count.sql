-- 게시물 신고누적횟수 증가
UPDATE post
   SET report_count = report_count + 1
 WHERE post_id = (SELECT reported_post_id FROM report WHERE report_id = 1);