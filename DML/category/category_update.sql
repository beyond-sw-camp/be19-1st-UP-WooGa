-- 카테고리명 확인
select category_name
from category
where category_id = 25;

-- 카테고리명 수정
UPDATE Category
SET category_name = '에어컨'
WHERE category_id = (SELECT category_id
                     FROM   Category
                     WHERE  category_name ='에어컨(이동식)'
);