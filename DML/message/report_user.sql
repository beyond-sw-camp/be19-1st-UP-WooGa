-- 게시물 신고
INSERT INTO Report
(report_content, reporter_id, report_sort, reported_user_id, reported_post_id)
VALUES
('신고내용1', 'user01', 'POST', NULL, 1),
('신고내용2', 'user03', 'POST', NULL, 2),
('신고내용3', 'user04', 'POST', NULL, 3),
('신고내용4', 'user07', 'POST', NULL, 4);

-- 사용자 신고
INSERT INTO Report
(report_content, reporter_id, report_sort, reported_user_id, reported_post_id)
VALUES
('신고내용11', 'user02', 'USER', 'user01', NULL),
('신고내용22', 'user04', 'USER', 'user03', NULL),
('신고내용33', 'user08', 'USER', 'user10', NULL),
('신고내용44', 'user09', 'USER', 'user09', NULL);

-- 신고내역 조회
SELECT
       * 
  FROM report
 WHERE reporter_id = 'user03';