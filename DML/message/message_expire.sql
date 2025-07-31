-- 자동만료일 설정 : 메세지 수신파트에서 처리 가능해서 여기 작성하던건 주석처리
-- delimiter //

-- CREATE OR REPLACE TRIGGER start_expire_date
--     AFTER UPDATE
--     ON message
--     FOR EACH ROW
-- BEGIN
--     UPDATE message
--        SET OLD.message_expiry_date = DATE_ADD(NOW(), INTERVAL 1 MONTH)
--      WHERE OLD.message_id = NEW.message_id;
-- END //

-- delimiter ;

-- DROP TRIGGER if EXISTS start_expire_date;

-- 만료시 쪽지 삭제
-- *******************이벤트 스케쥴러 사용할 때 반드시 이벤트 스케쥴러 켜져있는지 확인해야함!!!!!!!!
-- 확인 명령어 : SHOW VARIABLES LIKE 'event%';
-- 이벤트 스케쥴러 작동 명령어 : SET GLOBAL event_scheduler = ON;
delimiter //

CREATE EVENT del_expired_message
ON SCHEDULE EVERY 10 SECOND
STARTS '2025-07-31 12:12:00'
DO
  DELETE 
    FROM message
   WHERE message_expiry_date = CURRENT_TIMESTAMP //

delimiter ;

-- 이벤트 스케쥴러 삭제
-- DROP EVENT if EXISTS del_expired_message;