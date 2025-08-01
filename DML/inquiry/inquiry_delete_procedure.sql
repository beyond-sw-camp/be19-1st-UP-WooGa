-- 특정 사용자의 글을 삭제할 때 존재하는 사용자인지 확인
delimiter //

DROP PROCEDURE IF EXISTS DeleteInquiry;
CREATE OR REPLACE PROCEDURE DeleteInquiry (
    IN in_inquiry_id INTEGER,
    IN id VARCHAR(255)
)
BEGIN

    -- 존재하는 사용자 인지 확인
    IF EXISTS (SELECT 1 FROM User WHERE user_id = id) THEN
        -- 자식 테이블인 문의 답변 먼저 삭제
        DELETE
        FROM inquiryreply
        WHERE inquiry_id = in_inquiry_id;

        -- 부모 테이블인 문의 삭제
        DELETE
        FROM Inquiry
        WHERE inquiry_id = in_inquiry_id
          AND user_id = id;
    END IF;
END //

delimiter ;