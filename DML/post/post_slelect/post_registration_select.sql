-- 등록 게시물 조회

select

    user_id, category_id, title, description, product_name,
    rental_start_date, rental_end_date, rental_daily_price, deposit,
    created_at, updated_at, next_available_date


from post

where user_id = 'user08';
