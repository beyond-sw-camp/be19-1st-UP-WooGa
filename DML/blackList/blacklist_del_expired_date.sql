-- 만료된 블랙리스트 일괄 삭제
delimiter //

CREATE EVENT del_expired_blacklist
ON SCHEDULE EVERY 1 DAY
STARTS '2025-08-02 00:00:00'
DO
  DELETE 
    FROM blacklist
   WHERE blacklist_end_at <= CURRENT_TIMESTAMP //

delimiter ;