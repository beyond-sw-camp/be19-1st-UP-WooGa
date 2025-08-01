-- 일반 사용자 로그인 프로시저

/**
  사용자 아이디, 비밀번호, 상태 select
  1. 결과가 1건이면 로그인 성공
     - LoginSuccess 테이블에 INSERT
     - User 테이블의 last_login_date 업데이트
  2. 결과가 0건이면 로그인 실패
     - LoginFailure 테이블에 INSERT
 */

DELIMITER //

DROP PROCEDURE IF EXISTS LoginAttempt;
CREATE PROCEDURE IF NOT EXISTS LoginAttempt(
    IN p_user_id VARCHAR(255),
    IN p_pwd VARCHAR(255),
    IN p_ip VARCHAR(255)
)
BEGIN
    DECLARE v_pwd VARCHAR(255);
    DECLARE v_state VARCHAR(255);
    DECLARE failure_reason VARCHAR(255);

    -- 1. 해당 아이디 존재하는지 확인
    SELECT pwd, user_state
      INTO v_pwd, v_state
      FROM User
     WHERE user_id = p_user_id;

    -- 2. 아이디가 없는 경우 → 실패 로그 남기지 않고 종료
    IF v_pwd IS NULL THEN
        SET failure_reason = '존재하지 않는 아이디입니다.';
        SELECT failure_reason AS result;

    -- 3. 비밀번호 틀린 경우
    ELSEIF v_pwd != p_pwd THEN
        SET failure_reason = '비밀번호가 일치하지 않습니다.';
        INSERT INTO LoginFailure (login_failure_ip, login_failure_reason, user_id)
        VALUES (p_ip, failure_reason, p_user_id);
        SELECT failure_reason AS result;

    -- 4. 상태가 ACTIVE가 아닌 경우 (휴면 또는 탈퇴)
    ELSEIF v_state != 'ACTIVE' THEN
        SET failure_reason = CONCAT('로그인할 수 없는 상태입니다. 현재 상태: ', v_state);
        INSERT INTO LoginFailure (login_failure_ip, login_failure_reason, user_id)
        VALUES (p_ip, failure_reason, p_user_id);
        SELECT failure_reason AS result;

    -- 5. 모든 조건 통과 → 로그인 성공
    ELSE
        INSERT INTO LoginSuccess (login_success_ip, user_id)
        VALUES (p_ip, p_user_id);

        -- 5.1. 마지막 로그인 일자 업데이트
        UPDATE User
        SET last_login_date = CURRENT_TIMESTAMP
        WHERE user_id = p_user_id;

        SELECT '로그인 성공' AS result;

    END IF;
END;
//

DELIMITER ;

SHOW PROCEDURE STATUS
    WHERE Db = DATABASE();