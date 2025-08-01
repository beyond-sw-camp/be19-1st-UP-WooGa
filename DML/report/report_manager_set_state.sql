-- 신고 처리 상태 변경
UPDATE report 
   SET report_state = 'REJECT'   -- REPORTED,PROGRESSING,RESOLVE,REJECT
     , report_manager = 'admin04'
 WHERE report_id = 5;