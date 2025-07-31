-- -- 자동만료일 설정 : 메세지 수신파트에서 처리 가능해서 여기 작성하던건 주석처리
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
delimiter //

CREATE EVENT del_expired_message
ON SCHEDULE EVERY 1 DAY
STARTS '2025-07-30 00:00:00'
DO
  DELETE message
   WHERE message_expiry_date = CURRENT_TIMESTAMP //

delimiter ;

-- DROP EVENT if EXISTS del_expired_message;