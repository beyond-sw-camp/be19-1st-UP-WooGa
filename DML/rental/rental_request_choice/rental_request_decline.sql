-- 2. 대여 요청 거절




select
    *
from rentalrequest

where renter = 'user08';



update rentalrequest

set state = 'DECLINE'

where renter = 'user08' and rental_request_id = 8;