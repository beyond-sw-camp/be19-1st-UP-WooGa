DELIMITER $$

CREATE OR REPLACE PROCEDURE delete_category(IN target_id INT)
BEGIN
    DECLARE parent_id INT;
    DECLARE child_cnt INT;
    DECLARE etc_id INT;

    -- 1) 부모 카테고리 확인
SELECT parent_category_id
INTO parent_id
FROM Category
WHERE category_id = target_id;

-- 2) 중분류라면 하위 확인 후 ‘기타’ 생성/조회
IF parent_id IS NULL THEN
    SELECT COUNT(*) INTO child_cnt
    FROM Category
    WHERE parent_category_id = target_id;
IF child_cnt > 0 THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = '하위 카테고리가 있어 삭제할 수 없습니다.';
END IF;

SELECT category_id
INTO etc_id
FROM Category
WHERE category_name = '기타'
    LIMIT 1;
IF etc_id IS NULL THEN
            INSERT INTO Category(category_name, parent_category_id)
            VALUES('기타', NULL);
            SET etc_id = LAST_INSERT_ID();
END IF;

ELSE
        -- 소분류면 부모 카테고리로 재할당
        SET etc_id = parent_id;
END IF;

    -- 3) Post 테이블 업데이트
UPDATE Post
SET category_id = etc_id
WHERE category_id = target_id;

-- 4) 삭제
DELETE FROM Category
WHERE category_id = target_id;

END$$

DELIMITER ;