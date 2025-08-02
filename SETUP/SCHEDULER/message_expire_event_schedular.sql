-- 만료시 쪽지 삭제
delimiter //

CREATE EVENT del_expired_message
ON SCHEDULE EVERY 1 DAY
STARTS '00:00:01'
DO
  DELETE 
    FROM message
   WHERE message_expiry_date <= CURRENT_TIMESTAMP //

delimiter ;

-- 이벤트 스케쥴러 삭제
 DROP EVENT if EXISTS del_expired_message;