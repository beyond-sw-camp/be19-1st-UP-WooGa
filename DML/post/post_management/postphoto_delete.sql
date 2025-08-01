-- 게시물 사진 테이블 삭제

SET autocommit = 0;


START TRANSACTION;


DELETE
FROM postphoto
WHERE post_id = 9;


select
    *
from postphoto;

COMMIT;
-- ROLLBACK;


SET autocommit = 1;


ALTER TABLE Post AUTO_INCREMENT = 1;
