-- 최신글 순서로 문의글 조회
  select inquiry_id,
         title,
         content,
         created_at,
         user_id
    from inquiry
order by created_at desc;

-- 특정 사용자의 문의글 조회
  select inquiry_id,
         title,
         content,
         created_at,
         user_id
    from inquiry
   where user_id = 'user01'
order by created_at desc;

-- 특정 키워드의 문의글 조회
   select inquiry_id,
          title,
          content,
          created_at,
          user_id
     from inquiry
    where title like '%대여%' or content like '%대여%';

-- 1페이지 문의글 조회 (1번째 부터 5개의 문의글 조회)
   select inquiry_id,
          title,
          content,
          created_at,
          user_id
     from inquiry
    limit 0, 5;

-- 문의자 정보와 문의글을 같이 조회
   select
          b.user_id,
          b.email,
          b.phone_number,
          a.title,
          a.content,
          a.created_at
     from
          inquiry a
     join
          user b on a.user_id = b.user_id
 order by b.user_id;