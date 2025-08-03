-- 특정 문의 게시물 번호를 기준으로 제목,내용을 수정(user_id가 존재하는 일반사용자 인지 판별)
 UPDATE Inquiry
    SET title = '대여자 약속장소에 안나와요',
        content = '대여자가 약속장소에 안나오면 확실한 재제가 필요한거 같습니다. 관리자님.'
   WHERE inquiry_id = 1
     AND user_id = 'user01'
     AND EXISTS (
         SELECT 1 FROM User WHERE user_id = 'user01'
       );

-- 제대로 수정되었는지 확인.
select
    inquiry_id as '문의글 번호'
     , title as '문의 제목'
     , content as '문의 내용'
     , created_at as '문의 일자'
     , user_id as '사용자 아이디'
from inquiry
  where inquiry_id = 1;
