-- 문의글과 문의 답변을 조인하여 조회(작성자 칼럼은 일반 사용자나 관리자 중 하나만 출력)
select
      a.inquiry_id,
      b.title,
      b.content,
      CASE
          WHEN a.user_id IS NULL THEN a.admin_id
          ELSE a.user_id
      END AS answerer,
      a.content,
      a.reply_date
  from
      inquiryreply a
  join
      inquiry b
    on a.inquiry_id = b.inquiry_id;

-- 특정 문의글의 답변조회
select
    b.title,
    a.content,
    a.reply_date
from
    inquiryreply a
        join
    inquiry b on a.inquiry_id = b.inquiry_id
where
    a.inquiry_id = 1;
