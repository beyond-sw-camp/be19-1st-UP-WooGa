-- 게시물 테이블 수정

SELECT
    *
FROM Post
WHERE post_id = 8;


UPDATE Post
SET title = '콩순이 세탁기 '
  ,description = '쏘맥 말아먹기 좋아요!! 상태최상'
WHERE post_id = 8;


SELECT
    *
FROM Post
WHERE post_id = 8;