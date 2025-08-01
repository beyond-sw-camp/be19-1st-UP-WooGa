-- 게시물 대여 요청

insert into RentalRequest(

post_id, renter, request_start_date, request_end_date, created_at, state, final_price)

values (5, 'user08','2025/11/01', '2025/11/15', '2025/08/01', 'ACCEPT', 150000),
       (3, 'user05','2025/11/16', '2025/12/01', '2025/08/08', 'WAITING', 200000);


select
    *
from RentalRequest
where post_id in (3, 5)
ORDER BY rental_request_id;
