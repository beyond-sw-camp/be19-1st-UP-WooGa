-- 관리자 답변 작성
CALL InsertInquiryReply(
        '고객님들간의 약속으로 생긴 문제는 저희가 책임지지 않습니다.',
        1,
        'admin01'
     );

-- 사용자 답변 작성
CALL InsertInquiryReply(
        '운동기구 꼭 추가해주세요 !!',
        3,
        'user01'
     );

-- 제대로 값이 들어갔는지 확인
select
    reply_id as '문의 답변 번호'
  , content as '답변 내용'
  , reply_date as '답변 일시'
  , inquiry_id as '문의 게시물 번호'
  , answerer_sort as '답변자 구분'
  , user_id as '사용자 아이디'
  , admin_id as '관리자 아이디'
    from inquiryreply;