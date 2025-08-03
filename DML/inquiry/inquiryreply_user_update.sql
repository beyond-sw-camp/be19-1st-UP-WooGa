-- 일반 사용자 문의글 답변 내용 수정(user_id가 존재하는 일반사용자 인지 판별)
UPDATE InquiryReply
   SET content = '운동기구 꼭꼭!! 추가해주세요! 실내자전거 타고 싶어요!'
 WHERE user_id = 'user01'
   AND inquiry_id = 3
   AND EXISTS (
     SELECT 1 FROM USER WHERE user_id = 'user01'
   );

-- 제대로 수정되었는지 확인
select
    reply_id as '문의 답변 번호'
  , content as '답변 내용'
  , reply_date as '답변 일시'
  , inquiry_id as '문의 게시물 번호'
  , answerer_sort as '답변자 구분'
  , user_id as '사용자 아이디'
from inquiryreply
where answerer_sort = 'USER';