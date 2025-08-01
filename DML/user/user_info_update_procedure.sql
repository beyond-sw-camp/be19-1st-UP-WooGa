--

DELIMITER //

CREATE PROCEDURE UpdateUserInfo (
    IN p_user_id VARCHAR(255),
    IN p_pwd VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_phone_number VARCHAR(255),
    IN p_address VARCHAR(255)
)
BEGIN
    -- 비밀번호 변경
    IF p_pwd IS NOT NULL THEN
    UPDATE User
    SET pwd = p_pwd,
        last_pwd_change_date = CURRENT_TIMESTAMP
    WHERE user_id = p_user_id;
    END IF;

    -- 이메일 변경
    IF p_email IS NOT NULL THEN
    UPDATE User
    SET email = p_email
    WHERE user_id = p_user_id;
    END IF;

    -- 전화번호 변경
    IF p_phone_number IS NOT NULL THEN
    UPDATE User
    SET phone_number = p_phone_number
    WHERE user_id = p_user_id;
    END IF;

    -- 주소 변경
    IF p_address IS NOT NULL THEN
    UPDATE User
    SET address = p_address
    WHERE user_id = p_user_id;
    END IF;

    SELECT '회원 정보가 수정되었습니다.' AS result;
END;
//

DELIMITER ;
