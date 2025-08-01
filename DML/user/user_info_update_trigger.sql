DELIMITER //

CREATE TRIGGER trg_after_user_update
    AFTER UPDATE ON User
    FOR EACH ROW
BEGIN
    -- 변경된 필드에 대해서만 UPDATE 수행
    UPDATE UserInfoUpdate
    SET
        user_update_at = CURRENT_TIMESTAMP,

        user_update_previous_pwd = IF(OLD.pwd != NEW.pwd, OLD.pwd, user_update_previous_pwd),
        user_update_after_pwd = IF(OLD.pwd != NEW.pwd, NEW.pwd, user_update_after_pwd),

        user_update_previous_email = IF(OLD.email != NEW.email, OLD.email, user_update_previous_email),
        user_update_after_email = IF(OLD.email != NEW.email, NEW.email, user_update_after_email),

        user_update_previous_phone_number = IF(OLD.phone_number != NEW.phone_number, OLD.phone_number, user_update_previous_phone_number),
        user_update_after_phone_number = IF(OLD.phone_number != NEW.phone_number, NEW.phone_number, user_update_after_phone_number),

        user_update_previous_address = IF(OLD.address != NEW.address, OLD.address, user_update_previous_address),
        user_update_after_address = IF(OLD.address != NEW.address, NEW.address, user_update_after_address)
    WHERE user_id = NEW.user_id;
END;
//

DELIMITER ;
