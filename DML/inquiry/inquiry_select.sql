-- 최신글 순서로 문의글 조회
select
    inquiry_id as '문의글 번호'
     , title as '문의 제목'
     , content as '문의 내용'
     , created_at as '문의 일자'
     , user_id as '사용자 아이디'
    from inquiry
order by created_at desc;

-- 특정 사용자의 문의글 조회
select
    inquiry_id as '문의글 번호'
     , title as '문의 제목'
     , content as '문의 내용'
     , created_at as '문의 일자'
     , user_id as '사용자 아이디'
    from inquiry
   where user_id = 'user01'
order by created_at desc;

-- 특정 키워드의 문의글 조회
select
    inquiry_id as '문의글 번호'
     , title as '문의 제목'
     , content as '문의 내용'
     , created_at as '문의 일자'
     , user_id as '사용자 아이디'
     from inquiry
    where title like '%대여%' or content like '%대여%';

-- 1페이지 문의글 조회 (1번째 부터 5개의 문의글 조회)
select
    inquiry_id as '문의글 번호'
     , title as '문의 제목'
     , content as '문의 내용'
     , created_at as '문의 일자'
     , user_id as '사용자 아이디'
     from inquiry
    limit 0, 5;

-- 문의자 정보와 문의글을 같이 조회
   select
          b.user_id as '문의자 아이디'
        , b.email as '문의자 이메일'
        , b.phone_number as '문의자 전화번호'
        , a.title as '문의 제목'
        , a.content as '문의 내용'
        , a.created_at as '문의 일자'
     from
          inquiry a
     join
          user b on a.user_id = b.user_id
 order by b.user_id;