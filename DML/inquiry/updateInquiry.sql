-- 특정 문의 게시물 번호를 기준으로 제목,내용을 수정
 UPDATE Inquiry
    SET title = '대여자 약속장소에 안나와요',
        content = '대여자가 약속장소에 안나오면 확실한 재제가 필요한거 같습니다. 관리자님.'
   WHERE inquiry_id = 1;

-- 제대로 수정되었는지 확인.
 select *
   from inquiry
  where inquiry_id = 1;

-- 특정 문의자 기준으로 문의글 제목, 내용을 수정
UPDATE Inquiry
   SET title = 'A모델 마우스 있으신분?',
       content = 'A모델 마우스 대여해주실분?'
 WHERE inquiry_id = (SELECT inquiry_id
                       FROM Inquiry
                      WHERE user_id = 'user01'
                   ORDER BY created_at
                      LIMIT 0,1
                    );

UPDATE Inquiry
   SET title = '대여 방법이 궁금합니다.',
       content = '제가 대여가 처음인데, 대여하는 방법 좀 알려주세요'
 WHERE inquiry_id = (SELECT inquiry_id
                       FROM Inquiry
                      WHERE user_id = 'user01'
                   ORDER BY created_at
                      LIMIT 1,1
                    );

select * from inquiry where user_id = 'user01';