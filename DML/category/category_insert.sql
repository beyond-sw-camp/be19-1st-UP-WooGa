-- 상위 카테고리 조회
SELECT
    category_id,
    category_name AS '상위 카테고리 이름'
FROM Category
WHERE
    parent_category_id IS NULL
ORDER BY
    category_id;

-- 상위 카테고리 추가
INSERT INTO Category (category_name, parent_category_id)
VALUES
    ('의류가전', NULL);

-- '의류가전' 카테고리의 하위 카테고리 조회
SELECT
    category_id,
    category_name AS '하위 카테고리 이름'
FROM
    Category
WHERE
        parent_category_id = (
        SELECT category_id
        FROM Category
        WHERE category_name = '의류가전'
    )
ORDER BY category_id;

-- 하위 카테고리 추가
INSERT INTO Category (category_name, parent_category_id)
VALUES
    ('스타일러'
    , (SELECT category_id FROM Category WHERE category_name = '의류가전')
    );