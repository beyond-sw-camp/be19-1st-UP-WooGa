-- User 테이블 샘플 데이터
INSERT INTO User (user_id, pwd, address, phone_number, email)
VALUES
    ('user01', '1234', '서울시 강남구', '010-1234-5678', 'user01@example.com'),
    ('user02', '1234', '서울시 강북구', '010-2234-5678', 'user02@example.com'),
    ('user03', '1234', '서울시 강서구', '010-3234-5678', 'user03@example.com'),
    ('user04', '1234', '서울시 강동구', '010-4234-5678', 'user04@example.com'),
    ('user05', '1234', '서울시 중구', '010-5234-5678', 'user05@example.com'),
    ('user06', '1234', '부산시 해운대구', '010-6234-5678', 'user06@example.com'),
    ('user07', '1234', '대구시 수성구', '010-7234-5678', 'user07@example.com'),
    ('user08', '1234', '인천시 연수구', '010-8234-5678', 'user08@example.com'),
    ('user09', '1234', '광주시 북구', '010-9234-5678', 'user09@example.com'),
    ('user10', '1234', '울산시 남구', '010-0334-5678', 'user10@example.com');

INSERT INTO User (user_id, pwd, address, phone_number, email, user_state)
VALUES
    ('user11', '1234', '용인시 기흥구', '010-0987-8765', 'user11@example.com', 'RESIGN');

-- Manager 테이블 샘플 데이터
INSERT INTO Manager (admin_id, admin_pwd, admin_phone_number, admin_email)
VALUES
    ('admin01', 'adminpass1', '010-1999-9999', 'admin01@example.com'),
    ('admin02', 'adminpass2', '010-2999-9999', 'admin02@example.com'),
    ('admin03', 'adminpass3', '010-3999-9999', 'admin03@example.com'),
    ('admin04', 'adminpass4', '010-4999-9999', 'admin04@example.com'),
    ('admin05', 'adminpass5', '010-5999-9999', 'admin05@example.com');

-- Category 테이블 샘플 데이터
-- 1. 대분류 (parent_category_id = NULL)
INSERT INTO Category (category_name, parent_category_id) VALUES
                                                             ('주방가전', NULL),        -- id = 1
                                                             ('생활가전', NULL),        -- id = 2
                                                             ('계절가전', NULL),        -- id = 3
                                                             ('미용/헬스가전', NULL),    -- id = 4
                                                             ('전기기기', NULL),        -- id = 5
                                                             ('기타', NULL);           -- id = 6

-- 2. 소분류 (parent_category_id = 대분류 ID)
-- 주방가전
INSERT INTO Category (category_name, parent_category_id) VALUES
                                                             ('에어프라이어', 1),
                                                             ('전자레인지', 1),
                                                             ('커피머신', 1),
                                                             ('토스터기', 1),
                                                             ('블렌더/믹서기', 1),
                                                             ('전기포트', 1),
                                                             ('전기밥솥', 1),
                                                             ('인덕션/전기레인지', 1),
                                                             ('식기건조기', 1);

-- 생활가전
INSERT INTO Category (category_name, parent_category_id) VALUES
                                                             ('무선청소기', 2),
                                                             ('로봇청소기', 2),
                                                             ('다리미/스팀다리미', 2),
                                                             ('의류관리기', 2),
                                                             ('살균기/건조기', 2),
                                                             ('전동공구/DIY도구', 2),
                                                             ('세탁기(소형)', 2);

-- 계절가전
INSERT INTO Category (category_name, parent_category_id) VALUES
                                                             ('선풍기', 3),
                                                             ('서큘레이터', 3),
                                                             ('에어컨(이동식)', 3),
                                                             ('히터/온풍기', 3),
                                                             ('전기매트', 3),
                                                             ('가습기', 3),
                                                             ('제습기', 3),
                                                             ('에어서큘레이터', 3);

-- 미용/헬스가전
INSERT INTO Category (category_name, parent_category_id) VALUES
                                                             ('헤어드라이기', 4),
                                                             ('고데기/매직기', 4),
                                                             ('피부관리기', 4),
                                                             ('안마기/마사지건', 4),
                                                             ('체중계/체성분계', 4),
                                                             ('헬스케어 기기', 4);

-- 전자기기
INSERT INTO Category (category_name, parent_category_id) VALUES
                                                             ('촬영 장비(조명/마이크)', 5),
                                                             ('소형 프로젝터', 5),
                                                             ('게임기기', 5);

-- 기타
INSERT INTO Category (category_name, parent_category_id) VALUES
                                                             ('캠핑용 가전', 6),
                                                             ('기타 소형가전', 6);

-- Post 테이블 샘플 데이터
INSERT INTO Post (
    user_id, category_id, title, description, product_name,
    rental_start_date, rental_end_date, rental_daily_price, deposit,
    created_at, updated_at, next_available_date, report_count, min_rental_period
)
VALUES
    ('user01', 13, '쿠쿠 밥솥 대여합니다', '6인용 전기밥솥. 상태 양호.', '쿠쿠 밥솥',
     '2025-08-01', '2025-08-15', 2000, 20000, NOW(), NOW(), '2025-08-01', 0, 3),

    ('user02', 16, '다이슨 청소기 렌탈', '흡입력 좋고 가벼운 무선청소기.', '다이슨 V11',
     '2025-08-03', '2025-08-30', 6000, 50000, NOW(), NOW(), '2025-08-03', 0, 5),

    ('user03', 41, '라텍스 침대 매트리스', '1개월 사용 가능, 습기 제거됨.', '라텍스 매트리스',
     '2025-08-05', '2025-09-05', 4000, 30000, NOW(), NOW(), '2025-08-05', 0, 7),

    ('user04', 5, '갤럭시 탭 S8+', '필기용으로 적합한 태블릿입니다.', 'Galaxy Tab S8+',
     '2025-08-07', '2025-08-14', 7000, 40000, NOW(), NOW(), '2025-08-07', 0, 2),

    ('user05', 37, '캐논 DSLR 카메라 대여', '여행용으로 잠깐 빌려드려요.', 'Canon 800D',
     '2025-08-02', '2025-08-10', 5000, 50000, NOW(), NOW(), '2025-08-02', 0, 3),

    ('user06', 39, '닌텐도 스위치 대여해요', '모든 기능 정상 작동.', 'Nintendo Switch',
     '2025-08-10', '2025-08-20', 6000, 30000, NOW(), NOW(), '2025-08-10', 0, 2),

    ('user07', 5, '맥북 에어 M2 대여', '개발용으로 잠시 필요하신 분께.', 'MacBook Air M2',
     '2025-08-01', '2025-08-31', 10000, 100000, NOW(), NOW(), '2025-08-01', 0, 5),

    ('user08', 18, '의류 스팀다리미 렌탈', '작지만 성능 좋은 다리미.', 'LG 스팀다리미',
     '2025-08-04', '2025-08-18', 2500, 15000, NOW(), NOW(), '2025-08-04', 0, 3),

    ('user09', 21, '전동 드릴 세트 대여', 'DIY나 조립에 유용한 공구입니다.', '보쉬 드릴 세트',
     '2025-08-08', '2025-08-15', 3500, 20000, NOW(), NOW(), '2025-08-08', 0, 2);

-- PostPhoto 테이블 샘플 데이터
INSERT INTO PostPhoto(photo_post_url, post_id)
VALUES
    ('https://cdn.cuckoo.co.kr/upload_cuckoo/_bo_mall/product/770dc7d2-107c-4e50-a419-fcecd7cc517f.jpg', 1),
    ('https://dyson-h.assetsadobe2.com/is/image/content/dam/dyson/images/products/primary/268804-01.png', 2),
    ('https://sitem.ssgcdn.com/53/07/27/item/1000483270753_i1_1200.jpg', 3),
    ('https://img.danawa.com/prod_img/500000/577/246/img/16246577_1.jpg', 4),
    ('https://image.zdnet.co.kr/2020/05/19/jungvinh_Pn6ii2tGd8y.jpg', 5),
    ('https://www.costco.co.kr/medias/sys_master/images/hb5/h4f/70125134741534.webp', 6),
    ('https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/refurb-macbook-air-m2-spacegray-202208', 7),
    ('https://de89qjx90gu7m.cloudfront.net/familymall_prod/product/a979e6ff-3c6d-4250-bafb-833fdedea4f6.png', 8),
    ('https://m.woodworker.co.kr/web/product/big/202412/2739eed9aa6c4969898338315bf66018.jpg', 9);

-- RentalRequest 테이블 데이터
INSERT INTO RentalRequest
    (post_id, renter, request_start_date, request_end_date, created_at, state, final_price)
VALUES
    (1, 'user01', '2025/10/01', '2025/11/01', '2025/09/21', 'ACCEPT', 100000),
    (2, 'user02', '2025/10/02', '2025/11/01', '2025/09/22', 'WAITING', 100000),
    (3, 'user03', '2025/10/03', '2025/11/01', '2025/09/23', 'DECLINE', 100000),
    (4, 'user04', '2025/10/04', '2025/11/01', '2025/09/24', 'ACCEPT', 100000),
    (5, 'user05', '2025/10/05', '2025/11/01', '2025/09/25', 'ACCEPT', 100000),
    (6, 'user06', '2025/10/06', '2025/11/01', '2025/09/26', 'DECLINE', 100000),
    (7, 'user07', '2025/10/07', '2025/11/01', '2025/09/27', 'ACCEPT', 100000),
    (8, 'user08', '2025/10/08', '2025/11/01', '2025/09/28', 'WAITING', 100000),
    (9, 'user09', '2025/10/10', '2025/11/01', '2025/09/30', 'DECLINE', 100000);