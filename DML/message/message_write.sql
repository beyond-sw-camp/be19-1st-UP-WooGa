-- 메세지 작성
INSERT INTO message(
                    sender_id
                  , receiver_id
                  , title
                  , content
)
VALUES(
       'user03'
     , 'user04'
     , '제품 상태 질문'
     , '안녕하세요. 공기청정기 필터는 최근에 교체하셨을까요?'
     );

select * from message;