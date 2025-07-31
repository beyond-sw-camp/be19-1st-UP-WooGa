-- 문의글 작성
INSERT INTO Inquiry (title, content, user_id)
VALUES ('대여자가 약속장소에 없어요', '혹시 대여자가 약속 장소에 안나오면 어떻게 하나요?', 'user01');

INSERT INTO Inquiry (title, content, user_id)
VALUES ('보증금 거래는 어떻게? ', '상대방한테 보증금은 어떻게 받아내죠?', 'user02');

INSERT INTO Inquiry (title, content, user_id)
VALUES ('게시물 카테고리 추가', '게시물 카테고리에 운동 기구 좀 추가해주세요.', 'user03');

INSERT INTO Inquiry (title, content, user_id)
VALUES ('음식 대여', '음식도 대여 해도 되나요?', 'user04');

INSERT INTO Inquiry (title, content, user_id)
VALUES ('조회 목록이 나오지 않아요', '저의 게시물 조회가 잘 안되요 개선 좀...', 'user05');

INSERT INTO Inquiry (title, content, user_id)
VALUES ('동작구에서 전자레인지 빌려줄분?', '전자레인지가 필요한데, 동작구에 빌려줄분계신가요?', 'user01');

INSERT INTO Inquiry (title, content, user_id)
VALUES ('회원가입이 잘 안되요.', '회원가입 어떻게 하나요?', 'user02');

INSERT INTO Inquiry (title, content, user_id)
VALUES ('직거래 가능한가요?', '직접 만나서 거래할 수 있는지 궁금합니다.', 'user03');

INSERT INTO Inquiry (title, content, user_id)
VALUES ('가격 조정 문의', '보증금 없이 대여할 수 있을까요?', 'user04');

INSERT INTO Inquiry (title, content, user_id)
VALUES ('카메라 대여해드립니다.', 'ABC카메라 대여해드릴게요. 필요한 사람 말씀하세요.', 'user05');

-- 제대로 값이 들어갔는지 확인
select * from inquiry;