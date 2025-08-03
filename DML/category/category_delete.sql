-- 1-1. 현재 상태 확인 (카테고리 연관관계 확인)
SELECT
    category_id as '카테고리 번호',
    category_name as '카테고리 이름',
    parent_category_id as '상위 카테고리 번호'
FROM
    Category
WHERE
        category_name IN ('전자기기', '게임기기', '소형 프로젝터', '촬영 장비(조명/마이크)', '기타')
ORDER BY
    category_id;

-- 1-2. 카테고리에 연결된 게시물 확인
SELECT
    p.post_id as '게시물 번호',
    p.title as '게시물 제목',
    p.category_id as '카테고리 번호',
    c.category_name as '카테고리 이름'
FROM
    Post p
        JOIN
    Category c ON p.category_id = c.category_id
WHERE
        c.category_name IN ('전자기기', '게임기기', '소형 프로젝터', '촬영 장비(조명/마이크)');

-- 2. 전자기기(상위) 삭제 시도 → 실패 (하위 있음)
CALL delete_category((SELECT category_id FROM Category WHERE category_name = '전자기기'));

-- 3. 게임기기 삭제 → 연결된 post.category_id는 전자기기(category_id: 5)로 이동
CALL delete_category((SELECT category_id FROM Category WHERE category_name = '게임기기'));

-- 확인
SELECT
    p.post_id as '게시물 번호',
    p.title as '게시물 제목',
    p.category_id as '카테고리 번호',
    c.category_name as '카테고리 이름'
FROM
    Post p
        JOIN
    Category c ON p.category_id = c.category_id
WHERE
        p.post_id = 6;

-- 4. 나머지 하위 카테고리 삭제 (촬영 장비, 소형 프로젝터)
CALL delete_category((SELECT category_id FROM Category WHERE category_name = '촬영 장비(조명/마이크)'));
CALL delete_category((SELECT category_id FROM Category WHERE category_name = '소형 프로젝터'));

-- 하위가 모두 삭제된 전자기기 확인
SELECT
    category_id as '카테고리 번호',
    category_name as '카테고리 이름'
FROM
    Category
WHERE
        parent_category_id = (SELECT category_id FROM Category WHERE category_name = '전자기기');

-- 5. 다시 전자기기 삭제 → 연결된 post.category_id는 기타(category_id: 6)로 이동
CALL delete_category((SELECT category_id FROM Category WHERE category_name = '전자기기'));

-- 6. 최종 확인
SELECT
    category_id as '카테고리 번호',
    category_name as '카테고리 이름',
    parent_category_id as '상위 카테고리 번호'
FROM
    Category
WHERE
        category_name IN ('전자기기', '기타');

SELECT
    p.post_id as '게시물 번호',
    p.title as '게시물 제목',
    p.category_id as '카테고리 번호',
    c.category_name as '카테고리 이름'
FROM
    Post p
        JOIN
    Category c ON p.category_id = c.category_id
WHERE
        p.post_id IN (4, 5, 6, 7);
