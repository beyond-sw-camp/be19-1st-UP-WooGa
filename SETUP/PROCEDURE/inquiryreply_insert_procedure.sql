-- 일반 사용자, 관리자 문의글 답변 작성(아이디가 관리자인지, 일반사용자인지 판별)
DELIMITER //

DROP PROCEDURE IF EXISTS InsertInquiryReply;
CREATE OR REPLACE PROCEDURE InsertInquiryReply (
    IN content VARCHAR(255),
    IN inquiry_id INT,
    IN id VARCHAR(255)
)
BEGIN
    DECLARE reply_type VARCHAR(20);

    -- 관리자인지 일반 사용자인지 확인
    IF EXISTS (SELECT 1 FROM Manager WHERE admin_id = id) THEN
        SET reply_type = 'MANAGER';
    ELSEIF EXISTS (SELECT 1 FROM User WHERE user_id = id) THEN
        SET reply_type = 'USER';
END IF;

    -- 문의 답변 삽입
INSERT INTO InquiryReply (
    content, reply_date, inquiry_id,
    answerer_sort, user_id, admin_id
) VALUES (
             content,
             NOW(),
             inquiry_id,
             reply_type,
             IF(reply_type = 'USER', id, NULL),
             IF(reply_type = 'MANAGER', id, NULL)
         );
END//

DELIMITER ;