CALL InsertInquiryReply(
        '고객님들간의 약속으로 생긴 문제는 저희가 책임지지 않습니다.',
        1,
        'admin01'
     );

CALL InsertInquiryReply(
        '상호간의 약속이 지켜지지 않으면 보증금을 내셔야 겠죠?',
        2,
        'user01'
     );

-- 제대로 값이 들어갔는지 확인
select * from inquiryreply;