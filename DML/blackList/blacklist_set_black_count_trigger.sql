-- 블랙리스트 이력 증가
delimiter //

CREATE OR REPLACE TRIGGER blacklist_set_count
    AFTER INSERT
    ON blacklist
    FOR EACH ROW
BEGIN
    UPDATE user
       SET report_count = report_count + 1
     WHERE NEW.user_id = user_id;
END //

delimiter ;