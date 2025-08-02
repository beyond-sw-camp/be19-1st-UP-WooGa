-- 함수 호출
CALL delete_category((SELECT category_id
                               FROM Category
                               WHERE category_name = '스타일러')
);

select * from Category;

select * from Post;