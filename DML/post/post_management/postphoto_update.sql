-- 게시물 사진 테이블 수정



SELECT
    *
FROM postphoto
WHERE post_id = 9;



UPDATE postphoto
SET photo_post_url = 'https://www.daum.net/'
WHERE post_id = 9;



SELECT
    *
FROM postphoto
WHERE post_id = 9;