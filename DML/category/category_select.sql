-- 하위 카테고리 기준 상위 카테고리를 알고 싶을 때
SELECT
    c.category_id
     , c.category_name AS '카테고리 이름'
      , p.category_name AS '상위 카테고리 이름'
FROM
    Category c
        LEFT JOIN
    Category p ON c.parent_category_id = p.category_id
ORDER BY
    c.category_id;

-- 상위 카테고리 기준 하위 카테고리를 알고 싶을 때
SELECT
    p.category_name AS '상위 카테고리 이름'
      , c.category_name AS '하위 카테고리 이름'
FROM
    Category p
        LEFT JOIN
    Category c ON c.parent_category_id = p.category_id
ORDER BY
    p.category_id, c.category_id;

-- 특정 상위 카테고리의 하위 카테고리를 조회하는 경우
SELECT
    p.category_name AS '상위 카테고리 이름'
    , c.category_name AS '하위 카테고리 이름'
FROM
    Category c
        JOIN
    Category p ON c.parent_category_id = p.category_id
WHERE
        p.category_name = '주방가전'
ORDER BY
    c.category_id;
