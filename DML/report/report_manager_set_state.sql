-- 신고 처리 상태 변경
UPDATE report 
   SET report_state = 'PROGRESSING'   -- REPORTED,PROGRESSING,RESOLVE,REJECT
     , report_manager = 'admin02'
 WHERE report_id = 3;