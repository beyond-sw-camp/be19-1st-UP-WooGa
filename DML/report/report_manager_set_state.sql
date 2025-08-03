-- 담당자가 없는 신고글에 본인 담당자로 설정
UPDATE Report
SET report_manager = 'admin04',
    report_state = 'PROGRESSING'
WHERE report_manager IS NULL;

-- 신고 처리 상태 변경
UPDATE report 
   SET report_state = 'REJECT'   -- REPORTED,PROGRESSING,RESOLVE,REJECT
 WHERE report_id = 3
   AND report_manager = 'admin04';

-- 신고글 확인
select
    report_id as '신고글 번호'
  , report_manager as '관리자'
  , report_state as '상태'
    from report;