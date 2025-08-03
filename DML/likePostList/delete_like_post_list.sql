-- 특정 사용자의 관심 게시물 확인
SELECT
    post_id as '물건 게시물 번호'
  , user_id as '사용자 아이디'
  , like_post_create_at as '관심 게시물 등록 일시'
FROM LikePostList
WHERE user_id = 'user01';

-- 관심 게시물 삭제
DELETE FROM LikePostList
WHERE post_id = 1 AND user_id = 'user01';