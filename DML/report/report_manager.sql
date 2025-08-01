-- 신고내역 조회
SELECT
       * 
  FROM report
 WHERE reporter_id = 'user03';

-- 신고 처리 상태 변경
UPDATE report
   SET report_state = 'RESOLVE'   -- REPORTED,PROGRESSING,RESOLVE,REJECT
 WHERE report_id = 20;





SELECT * FROM report;
SELECT * FROM post;




