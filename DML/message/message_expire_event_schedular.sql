
-- 만료시 쪽지 삭제
-- *******************이벤트 스케쥴러 사용할 때 반드시 이벤트 스케쥴러 켜져있는지 확인해야함!!!!!!!!
-- 확인 명령어 : SHOW VARIABLES LIKE 'event%';
-- 이벤트 스케쥴러 작동 명령어 : SET GLOBAL event_scheduler = ON;
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