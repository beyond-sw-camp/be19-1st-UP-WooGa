-- 블랙리스트 조회
SELECT
       user_id
     , blacklist_reason
	  , blacklist_start_at
	  , blacklist_period
  FROM blacklist;