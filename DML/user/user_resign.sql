UPDATE User
SET user_state = 'RESIGN',
    resign_date = CURRENT_TIMESTAMP
WHERE user_id = 'user01';

select * from user;