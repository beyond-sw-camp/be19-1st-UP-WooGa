-- 1. 자식 테이블 (종속된 외래키 다수)
DROP TABLE IF EXISTS UserInfoUpdate;
DROP TABLE IF EXISTS LikePostList;
DROP TABLE IF EXISTS RentalRequest;
DROP TABLE IF EXISTS LoginSuccess;
DROP TABLE IF EXISTS PostPhoto;
DROP TABLE IF EXISTS BlackList;
DROP TABLE IF EXISTS ReportPhoto;
DROP TABLE IF EXISTS LoginFailure;
DROP TABLE IF EXISTS Message;
DROP TABLE IF EXISTS Report;
DROP TABLE IF EXISTS InquiryReply;

-- 2. 중간 테이블
DROP TABLE IF EXISTS Post;
DROP TABLE IF EXISTS Inquiry;

-- 3. 부모 테이블
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Manager;
DROP TABLE IF EXISTS `user`;

CREATE TABLE if NOT EXISTS User (
    user_id	VARCHAR(255)	NOT NULL,
    pwd	VARCHAR(255)	NOT NULL,
    address	VARCHAR(255)	NOT NULL,
    phone_number	VARCHAR(255)	NOT NULL,
    email	VARCHAR(255)	NOT NULL,
    signup_date	DATETIME	NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_login_date	DATETIME	NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_pwd_change_date	DATETIME	NOT NULL DEFAULT CURRENT_TIMESTAMP,
    user_state	VARCHAR(255) NOT NULL DEFAULT 'ACTIVE',
    sleep_date	DATETIME	NULL,
    resign_date	DATETIME	NULL,
    report_count	INTEGER	NOT NULL DEFAULT 0,
    PRIMARY KEY(user_id),
    CHECK(user_state IN ('ACTIVE', 'SLEEP', 'RESIGN'))
)ENGINE=INNODB;

CREATE TABLE if NOT EXISTS Manager (
    admin_id	VARCHAR(255)	NOT NULL,
    admin_pwd	VARCHAR(255)	NOT NULL,
    admin_phone_number	VARCHAR(255)	NOT NULL,
    admin_email	VARCHAR(255)	NOT NULL,
    PRIMARY KEY(admin_id)
)ENGINE=INNODB;

CREATE TABLE if NOT EXISTS Category (
    category_id	INTEGER	NOT NULL	auto_increment,
    category_name	VARCHAR(255) NOT NULL,
    parent_category_id INTEGER NULL,
    PRIMARY KEY(category_id),
    FOREIGN KEY(parent_category_id) REFERENCES category(category_id)
)ENGINE=INNODB;

CREATE TABLE if NOT EXISTS Inquiry (
    inquiry_id	INTEGER NOT NULL	auto_increment,
    title VARCHAR(255) NOT NULL,
    content	VARCHAR(255) NOT NULL,
    created_at	DATETIME	NOT NULL DEFAULT CURRENT_TIMESTAMP,
    user_id	VARCHAR(255) NOT NULL,
    PRIMARY KEY(inquiry_id),
    FOREIGN KEY(user_id) REFERENCES User(user_id)
)ENGINE=INNODB;

CREATE TABLE if NOT EXISTS Post (
    post_id	INTEGER	NOT NULL	auto_increment,
    user_id	VARCHAR(255)	NOT NULL,
    category_id	INTEGER	NOT NULL,
    title	VARCHAR(255)	NOT NULL,
    description	VARCHAR(255)	NOT NULL,
    product_name	VARCHAR(255)	NOT NULL,
    rental_start_date	DATETIME	NOT NULL,
    rental_end_date	DATETIME	NOT NULL,
    rental_daily_price	INTEGER	NOT NULL DEFAULT 0,
    deposit	INTEGER	NOT NULL DEFAULT 0,
    created_at	DATETIME	NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at	DATETIME	NULL,
    next_available_date	DATETIME	NULL,
    report_count INTEGER	NOT NULL DEFAULT 0,
    min_rental_period INTEGER NOT NULL DEFAULT 1,
    PRIMARY KEY(post_id),
    FOREIGN KEY(user_id) REFERENCES User(user_id),
    FOREIGN KEY(category_id) REFERENCES Category(category_id)
)ENGINE=INNODB;

CREATE INDEX idx_post_user_id ON Post(user_id);

CREATE TABLE if NOT EXISTS InquiryReply (
    reply_id	INTEGER	NOT NULL	auto_increment,
    content	VARCHAR(255) NOT NULL,
    reply_date	DATETIME	NOT NULL,
    inquiry_id	INTEGER	NOT NULL,
    answerer_sort VARCHAR(255) NOT NULL,
    user_id VARCHAR(255) NULL,
    admin_id	VARCHAR(255) NULL,
    PRIMARY KEY(reply_id),
    FOREIGN KEY(user_id) REFERENCES User(user_id),
    FOREIGN KEY(inquiry_id) REFERENCES Inquiry(inquiry_id),
    FOREIGN KEY(admin_id) REFERENCES Manager(admin_id),
    CHECK (
        (answerer_sort = 'USER' AND user_id IS NOT NULL AND admin_id IS NULL) OR
        (answerer_sort = 'MANAGER' AND admin_id IS NOT NULL AND user_id IS NULL)
    )
)ENGINE=INNODB;

CREATE TABLE if NOT EXISTS Report (
    report_id INTEGER	NOT NULL	AUTO_INCREMENT,
    report_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    report_content	VARCHAR(255) NULL,
    report_state	VARCHAR(255) NOT NULL DEFAULT 'REPORTED',
    report_manager	VARCHAR(255) NULL,
    reporter_id	VARCHAR(255)	NOT NULL,
    report_sort	VARCHAR(255)	NOT NULL,
    reported_user_id	VARCHAR(255)	NULL,
    reported_post_id	INTEGER	NULL,
    PRIMARY KEY(report_id),
    FOREIGN KEY(report_manager) REFERENCES Manager(admin_id),
    FOREIGN KEY(reporter_id) REFERENCES User(user_id),
    FOREIGN KEY(reported_user_id) REFERENCES User(user_id),
    FOREIGN KEY(reported_post_id) REFERENCES Post(post_id),
    CHECK(report_sort IN ('USER','POST')),
    CHECK(
        (report_sort = 'USER' AND reported_user_id IS NOT NULL AND reported_post_id IS NULL) OR
        (report_sort = 'POST' AND reported_post_id IS NOT NULL AND reported_user_id IS NULL)
    )
)ENGINE=INNODB;

CREATE TABLE if NOT EXISTS Message (
    message_id	INTEGER	NOT NULL	auto_increment,
    sender_id	VARCHAR(255)	NOT NULL,
    receiver_id	VARCHAR(255)	NOT NULL,
    title VARCHAR(255)     NOT NULL,
    content	VARCHAR(255)	NOT NULL,
    sent_at	DATETIME	NOT NULL DEFAULT CURRENT_TIMESTAMP,
    message_expiry_date DATETIME NULL DEFAULT NULL,
    check_time DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(message_id),
    FOREIGN KEY(sender_id) REFERENCES User(user_id),
    FOREIGN KEY(receiver_id) REFERENCES User(user_id)
)ENGINE=INNODB;

CREATE TABLE if NOT EXISTS LoginFailure (
    login_failure_id	INTEGER	NOT NULL	auto_increment,
    login_failure_at	DATETIME	NOT NULL DEFAULT CURRENT_TIMESTAMP,
    login_failure_ip	VARCHAR(255)	NOT NULL,
    login_failure_reason	VARCHAR(255)	NOT NULL,
    user_id	VARCHAR(255)	NOT NULL,
    PRIMARY KEY(login_failure_id),
    FOREIGN KEY(user_id) REFERENCES User(user_id)
)ENGINE=INNODB;

CREATE TABLE if NOT EXISTS ReportPhoto (
    report_image_id	INTEGER	NOT NULL	auto_increment,
    image_url	VARCHAR(255)	NOT NULL,
    report_id	INTEGER	NOT NULL,
    PRIMARY KEY(report_image_id),
    FOREIGN KEY(report_id) REFERENCES Report(report_id)
)ENGINE=INNODB;

CREATE TABLE if NOT EXISTS BlackList (
    blacklist_id	INTEGER	NOT NULL	auto_increment,
    user_id	VARCHAR(255)	NOT NULL,
    blacklist_reason	VARCHAR(255) NOT NULL,
    blacklist_start_at	DATETIME	NOT NULL DEFAULT CURRENT_TIMESTAMP,
    blacklist_period	INTEGER NOT NULL DEFAULT 3,
    PRIMARY KEY(blacklist_id),
    FOREIGN KEY(user_id) REFERENCES User(user_id)
)ENGINE=INNODB;

CREATE TABLE if NOT EXISTS PostPhoto (
    photo_post_id	INTEGER	NOT NULL	auto_increment,
    photo_post_url	VARCHAR(255) NOT	NULL,
    post_id	INTEGER	NOT NULL,
    PRIMARY KEY(photo_post_id),
    FOREIGN KEY(post_id) REFERENCES Post(post_id)
)ENGINE=INNODB;

CREATE TABLE if NOT EXISTS LoginSuccess (
    login_success_id	INTEGER	NOT NULL	auto_increment,
    login_success_at	DATETIME	NOT NULL DEFAULT CURRENT_TIMESTAMP,
    login_success_ip	VARCHAR(255) NOT NULL,
    user_id	VARCHAR(255) NOT NULL,
    PRIMARY KEY(login_success_id),
    FOREIGN KEY(user_id) REFERENCES User(user_id)
)ENGINE=INNODB;

CREATE TABLE if NOT EXISTS RentalRequest (
    rental_request_id	INTEGER	NOT NULL	auto_increment,
    post_id	INTEGER	NOT NULL,
    renter	VARCHAR(255) NOT NULL,
    request_start_date DATETIME NOT NULL,
    request_end_date	DATETIME	NOT NULL,
    created_at	DATETIME	NOT NULL DEFAULT CURRENT_TIMESTAMP,
    state	VARCHAR(255)	NOT NULL DEFAULT 'WAITING',
    final_price	INTEGER	NOT NULL DEFAULT 0,
    PRIMARY KEY(rental_request_id),
    FOREIGN KEY(post_id) REFERENCES Post(post_id),
    FOREIGN KEY(renter) REFERENCES User(user_id),
    CHECK(state IN ('WAITING','ACCEPT','DECLINE'))
)ENGINE=INNODB;

CREATE INDEX idx_rental_post_id ON rentalrequest(post_id);
CREATE INDEX idx_rental_renter ON rentalrequest(renter);

CREATE TABLE if NOT EXISTS LikePostList (
    like_post_id	INTEGER	NOT NULL	auto_increment,
    post_id	INTEGER	NOT NULL,
    user_id	VARCHAR(255)	NOT NULL,
    like_post_create_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(like_post_id),
    FOREIGN KEY(post_id) REFERENCES Post(post_id),
    FOREIGN KEY(user_id) REFERENCES user(user_id)
)ENGINE=INNODB;

CREATE TABLE if NOT EXISTS UserInfoUpdate (
    user_update_id	INTEGER	NOT NULL	auto_increment,
    user_update_at	DATETIME	NOT NULL DEFAULT CURRENT_TIMESTAMP,
    user_update_previous_pwd	VARCHAR(255) NULL,
    user_update_after_pwd	VARCHAR(255) NULL,
    user_update_previous_address	VARCHAR(255) NULL,
    user_update_after_address	VARCHAR(255) NULL,
    user_update_previous_phone_number VARCHAR(255) NULL,
    user_update_after_phone_number VARCHAR(255) NULL,
    user_update_previous_email VARCHAR(255) NULL,
    user_update_after_email VARCHAR(255) NULL,
    user_id	VARCHAR(255) NOT NULL,
    PRIMARY KEY(user_update_id),
    FOREIGN KEY(user_id) REFERENCES User(user_id)
)ENGINE=INNODB;
