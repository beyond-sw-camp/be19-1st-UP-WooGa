-- 신고내역 조회
SELECT
       * 
  FROM report
 WHERE reporter_id = 'user03';

-- 신고 처리 상태 변경
UPDATE report 
   SET report_state = 'PROGRESSING'   -- REPORTED,PROGRESSING,RESOLVE,REJECT
     , report_manager = 'admin02'
 WHERE report_id = 3;

-- 게시물 신고누적횟수 증가
UPDATE post
   SET report_count = report_count + 1
 WHERE post_id = (SELECT report_id FROM report WHERE report_id = 1);






