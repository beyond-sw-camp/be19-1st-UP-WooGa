-- 상위 카테고리 추가
INSERT INTO Category (category_name, parent_category_id)
VALUES
    ('의류가전', NULL);

-- 하위 카테고리 추가
INSERT INTO Category (category_name, parent_category_id)
VALUES
    ('스타일러'
    , (SELECT category_id FROM Category WHERE category_name = '의류가전')
    );