DELIMITER //

CREATE PROCEDURE delete_reported_posts()
BEGIN
START TRANSACTION;

-- 게시물 사진 삭제
DELETE FROM PostPhoto
WHERE post_id IN (
    SELECT post_id FROM Post WHERE report_count >= 3
);

-- 게시물 삭제
DELETE FROM Post
WHERE report_count >= 3;

COMMIT;
END;
//

DELIMITER ;