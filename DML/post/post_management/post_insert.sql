-- 게시물 테이블 생성

insert into Post (
    user_id, category_id, title, description, product_name,
    rental_start_date, rental_end_date, rental_daily_price, deposit,
    created_at, updated_at, next_available_date, report_count, min_rental_period
)

    value
    ( 'user08', 4, '콩순이 컴퓨터 대여해드립니다', '컴퓨터 사양: CPU - intell i7, GPU - RTX 5090, SSD - 16GB. 상태 양호.', '콩순이 컴퓨터',
     '2025-09-4', '2025-09-19', 30000, 200000, NOW(), NOW(), '2025-09-20', 0, 3),
    ('user04', 8, '콩순이 냉장고 대여해드립니다', ' 누르면은 물 나와요~ 상태 양호.', '콩순이 냉장고',
     '2025-09-7', '2025-11-30', 20000, 500000, NOW(), NOW(), '2025-12-01', 0, 30);


select
    *
from Post;