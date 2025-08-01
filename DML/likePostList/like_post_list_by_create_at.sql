-- 관심게시물 등록 일시 정렬 확인을 위한 Insert
INSERT INTO LikePostList (post_id, user_id)
VALUES
    (6, 'user03'),
    (7, 'user03');

-- 정렬 확인
SELECT
    p.title AS '글제목',
    p.user_id AS '판매자 아이디',
    p.product_name AS '상품이름',
    p.created_at AS '게시물 생성 일자',
    l.like_post_create_at AS '관심게시물 등록 일시'
FROM
    LikePostList l JOIN Post p ON l.post_id = p.post_id
WHERE
    l.user_id = 'user03'
ORDER BY
    l.like_post_create_at DESC;