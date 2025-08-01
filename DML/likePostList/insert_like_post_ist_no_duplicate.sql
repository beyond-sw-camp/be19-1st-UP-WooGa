-- 관심 게시물 저장
INSERT INTO LikePostList (post_id, user_id)
VALUES
    (1, 'user01'),
    (2, 'user02'),
    (2, 'user03'),
    (3, 'user03'),
    (3, 'user04'),
    (4, 'user01'),
    (7, 'user05');

-- 관심 게시물 저장 확인
SELECT * FROM LikePostList;

-- 중복확인
INSERT INTO LikePostList (post_id, user_id)
VALUES
    (1, 'user01');