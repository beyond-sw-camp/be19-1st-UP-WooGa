-- 게시물 신고
INSERT INTO Report
(report_content, reporter_id, report_sort, reported_user_id, reported_post_id)
VALUES
('신고내용1', 'user01', 'POST', NULL, 1),
('신고내용2', 'user03', 'POST', NULL, 2),
('신고내용3', 'user04', 'POST', NULL, 3),
('신고내용4', 'user07', 'POST', NULL, 4);