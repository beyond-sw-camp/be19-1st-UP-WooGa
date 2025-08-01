-- 게시물 신고
INSERT INTO Report
(report_content, reporter_id, report_sort, reported_user_id, reported_post_id)
VALUES
('신고내용1', 'user01', 'POST', NULL, 1);

INSERT INTO ReportPhoto
(image_url,report_id)
VALUES
('https://www.notion.so/ohgiraffers/1-_-CodeBuds-239649136c11808299e5f6676d642d0c',1),
('https://www.notion.so/ohgiraffers/2-_First-Class-239649136c118096b713c0ef7847335b',1),
('https://www.notion.so/ohgiraffers/3-_UP-Unstoppable-Power-239649136c11804b81b7f58f8373959d',1);