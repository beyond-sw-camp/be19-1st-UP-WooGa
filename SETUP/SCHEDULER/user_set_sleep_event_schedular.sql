-- 마지막 로그인 일자가 6개월이 넘어가면 휴면상태 전환
delimiter //

CREATE EVENT user_set_sleep
ON SCHEDULE EVERY 1 DAY
STARTS '2025-08-02 00:00:00'
DO
  UPDATE user
     SET sleep_date = CURRENT_TIMESTAMP
       , user_state = 'SLEEP'
   WHERE DATE_ADD(last_login_date,INTERVAL 6 MONTH) <= CURRENT_TIMESTAMP AND sleep_date IS NULL//

delimiter ;