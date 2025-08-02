-- [트리거] 회원가입 성공 시, 개인정보 변경 이력 행 추가
-- 관리의 용이성을 위해

DELIMITER //

CREATE TRIGGER trg_after_user_insert
    AFTER INSERT ON user
    FOR EACH ROW
BEGIN
    INSERT INTO UserInfoUpdate (user_id)
    VALUES (NEW.user_id);
END;
//

DELIMITER ;

-- 트리거 생성 확인
show triggers ;
