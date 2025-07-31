-- 신고내역 조회
SELECT
       * 
  FROM report
 WHERE reporter_id = 'user03';

-- 신고 게시물 삭제
DELETE
  FROM post
 WHERE post_id = (SELECT reported_post_id
                    FROM report
                   WHERE report_id = 18);






SELECT * FROM report;
SELECT * FROM post;




