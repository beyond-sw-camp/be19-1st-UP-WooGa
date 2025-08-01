-- user테이블 샘플 데이터
INSERT INTO User (user_id, pwd, address, phone_number, email)
VALUES
    ('user01', 1234, '서울시 강남구', '010-1234-5678', 'user01@example.com'),
    ('user02', 1234, '서울시 강북구', '010-2234-5678', 'user02@example.com'),
    ('user03', 1234, '서울시 강서구', '010-3234-5678', 'user03@example.com'),
    ('user04', 1234, '서울시 강동구', '010-4234-5678', 'user04@example.com'),
    ('user05', 1234, '서울시 중구', '010-5234-5678', 'user05@example.com'),
    ('user06', 1234, '부산시 해운대구', '010-6234-5678', 'user06@example.com'),
    ('user07', 1234, '대구시 수성구', '010-7234-5678', 'user07@example.com'),
    ('user08', 1234, '인천시 연수구', '010-8234-5678', 'user08@example.com'),
    ('user09', 1234, '광주시 북구', '010-9234-5678', 'user09@example.com'),
    ('user10', 1234, '울산시 남구', '010-0334-5678', 'user10@example.com');

-- manager테이블 샘플 데이터
INSERT INTO Manager (admin_id, admin_pwd, admin_phone_number, admin_email)
VALUES
    ('admin01', 'adminpass1', '010-1999-9999', 'admin01@example.com'),
    ('admin02', 'adminpass2', '010-2999-9999', 'admin02@example.com'),
    ('admin03', 'adminpass3', '010-3999-9999', 'admin03@example.com'),
    ('admin04', 'adminpass4', '010-4999-9999', 'admin04@example.com'),
    ('admin05', 'adminpass5', '010-5999-9999', 'admin05@example.com');

-- category테이블 샘플 데이터
INSERT INTO Category (category_name, parent_category_id)
VALUES
    ('가전제품', NULL),
    ('생활용품', NULL),
    ('전자기기', NULL),
    ('주방가전', 1),
    ('청소가전', 1),
    ('침구/가구', 2),
    ('태블릿/노트북', 3),
    ('카메라', 3),
    ('게임기기', 3),
    ('기타', NULL);

-- Post 테이블 샘플 데이터
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
