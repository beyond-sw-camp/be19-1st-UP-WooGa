-- 신고 누적 횟수가 0보다 큰 게시물을 조회
SELECT
    post_id AS '게시물 번호'
     , user_id AS '작성자 아이디'
     , title AS '글제목'
     , description AS '상세내용'
     , product_name AS '상품이름'
     , created_at AS '게시물 생성 일자'
     , updated_at AS '게시물 수정 일자'
     , report_count AS '신고누적횟수'
FROM Post
WHERE report_count > 0;