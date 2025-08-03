-- 블랙리스트 삭제
DELETE
  FROM blacklist
 WHERE blacklist_id = 1;

SELECT
    user_id AS '블랙리스트 사용자',
        blacklist_reason AS '사유',
        blacklist_start_at AS '등록 일시',
        blacklist_period AS '기간(일)',
        blacklist_end_at AS '블랙리스트 종료일'
FROM blacklist;