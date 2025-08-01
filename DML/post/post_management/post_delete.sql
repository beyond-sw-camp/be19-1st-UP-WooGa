-- 게시물 테이블 삭제


SET autocommit = 0;


START TRANSACTION;




DELETE
FROM rentalrequest
WHERE post_id = 9;

DELETE
FROM postphoto
WHERE post_id = 9;

DELETE
FROM likepostlist
WHERE post_id = 9;

DELETE
FROM report
WHERE reported_post_id = 9;


DELETE
FROM post
WHERE post_id = 9;



select
    *
from Post;

COMMIT;
-- ROLLBACK;


SET autocommit = 1;


ALTER TABLE Post AUTO_INCREMENT = 1;
