-- 게시물(Post) 테이블 데이터

INSERT INTO Post (
    user_id, category_id, title, description, product_name,
    rental_start_date, rental_end_date, rental_daily_price, deposit,
    created_at, updated_at, next_available_date, report_count, min_rental_period
)
VALUES
    ('user01', 4, '쿠쿠 밥솥 대여합니다', '6인용 전기밥솥. 상태 양호.', '쿠쿠 밥솥',
     '2025-08-01', '2025-08-15', 2000, 20000, NOW(), NOW(), '2025-08-01', 0, 3),

    ('user02', 5, '다이슨 청소기 렌탈', '흡입력 좋고 가벼운 무선청소기.', '다이슨 V11',
     '2025-08-03', '2025-08-30', 6000, 50000, NOW(), NOW(), '2025-08-03', 0, 5),

    ('user03', 6, '라텍스 침대 매트리스', '1개월 사용 가능, 습기 제거됨.', '라텍스 매트리스',
     '2025-08-05', '2025-09-05', 4000, 30000, NOW(), NOW(), '2025-08-05', 0, 7),

    ('user04', 7, '갤럭시 탭 S8+', '필기용으로 적합한 태블릿입니다.', 'Galaxy Tab S8+',
     '2025-08-07', '2025-08-14', 7000, 40000, NOW(), NOW(), '2025-08-07', 0, 2),

    ('user05', 8, '캐논 DSLR 카메라 대여', '여행용으로 잠깐 빌려드려요.', 'Canon 800D',
     '2025-08-02', '2025-08-10', 5000, 50000, NOW(), NOW(), '2025-08-02', 0, 3),

    ('user06', 9, '닌텐도 스위치 대여해요', '모든 기능 정상 작동.', 'Nintendo Switch',
     '2025-08-10', '2025-08-20', 6000, 30000, NOW(), NOW(), '2025-08-10', 0, 2),

    ('user07', 3, '맥북 에어 M2 대여', '개발용으로 잠시 필요하신 분께.', 'MacBook Air M2',
     '2025-08-01', '2025-08-31', 10000, 100000, NOW(), NOW(), '2025-08-01', 0, 5),

    ('user08', 2, '의류 스팀다리미 렌탈', '작지만 성능 좋은 다리미.', 'LG 스팀다리미',
     '2025-08-04', '2025-08-18', 2500, 15000, NOW(), NOW(), '2025-08-04', 0, 3),

    ('user09', 1, '삼성 대형 냉장고', '양문형 600L 대용량 냉장고.', '삼성 냉장고',
     '2025-08-06', '2025-08-26', 8000, 80000, NOW(), NOW(), '2025-08-06', 0, 5),

    ('user10', 10, '전동 드릴 세트 대여', 'DIY나 조립에 유용한 공구입니다.', '보쉬 드릴 세트',
     '2025-08-08', '2025-08-15', 3500, 20000, NOW(), NOW(), '2025-08-08', 0, 2);

select
    *
from Post;








-- 게시물 사진 테이블 데이터





-- 앞서 삭제한 post_id = 9번 게시물 재생성
INSERT INTO Post (
    post_id, user_id, category_id, title, description, product_name,
    rental_start_date, rental_end_date, rental_daily_price, deposit,
    created_at, updated_at, next_available_date, report_count, min_rental_period
)
VALUES (9,'user09', 1, '삼성 대형 냉장고', '양문형 600L 대용량 냉장고.', '삼성 냉장고',
        '2025-08-06', '2025-08-26', 8000, 80000, NOW(), NOW(), '2025-08-06', 0, 5);





INSERT INTO PostPhoto(photo_post_url, post_id)

VALUES('https://www.naver.com/', 1),
      ('https://www.naver2.com/', 2),
      ('https://www.naver3.com/', 3),
      ('https://www.naver4.com/', 4),
      ('https://www.naver5.com/', 5),
      ('https://www.naver6.com/', 6),
      ('https://www.naver7.com/', 7),
      ('https://www.naver8.com/', 8),
      ('https://www.naver9.com/', 9),
      ('https://www.naver10.com/', 10);




select
    *
from PostPhoto;

