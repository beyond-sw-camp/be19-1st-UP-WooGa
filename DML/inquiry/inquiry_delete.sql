-- 특정 사용자의 글을 삭제
CALL DeleteInquiry (1,'user01');

-- 제대로 삭제되었는지 확인
select *
from inquiry;

