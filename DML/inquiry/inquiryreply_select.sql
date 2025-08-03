-- 문의글과 문의 답변을 조인하여 조회(작성자 칼럼은 일반 사용자나 관리자 중 하나만 출력)
select
     a.inquiry_id as '문의글 번호',
     b.title as '문의글 제목',
     b.content as '문의글 내용',
      CASE
          WHEN a.user_id IS NULL THEN a.admin_id
          ELSE a.user_id
      END AS answerer ,
      a.content as '문의 답변 내용',
      a.reply_date as '문의 답변 일시'
  from
      inquiryreply a
  join
      inquiry b
    on a.inquiry_id = b.inquiry_id;

-- 특정 문의글의 답변조회
select
      b.title as '문의글 제목'
    , a.content as '답변 내용'
    , a.reply_date as '답변 일자'
from
    inquiryreply a
        join
    inquiry b on a.inquiry_id = b.inquiry_id
where
    a.inquiry_id = 1;
