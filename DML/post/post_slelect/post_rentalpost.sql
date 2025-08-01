-- 대여 게시물 조회


select

    a.user_id, a.category_id, a.title, a.description, a.product_name,
    a.rental_start_date, a.rental_end_date, a.deposit, a.next_available_date,
    b.post_id, b.renter, b.state, b.final_price


from post a

         JOIN RentalRequest b ON a.post_id = b.post_id

where a.post_id = 3;