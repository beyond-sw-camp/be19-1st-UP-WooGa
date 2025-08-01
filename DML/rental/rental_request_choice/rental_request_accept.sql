-- 대여 요청 결정

select
    *
from rentalrequest;


-- 1. 대여 요청 수락


select
    *
from rentalrequest

where post_id = 5;



update rentalrequest

set state = 'ACCEPT'

where post_id = 5 and rental_request_id = 11;