-- 카테고리명 수정
UPDATE Category
SET category_name = '카메라'
WHERE category_id = (SELECT category_id
                     FROM   Category
                     WHERE  category_name ='키보드'
);