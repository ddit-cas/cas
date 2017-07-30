<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

</head>
<body>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>



<script>
var IMP = window.IMP; // 생략가능
IMP.init('imp99126419'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '포인트 충전',
    amount : "${point.chargingAmount}",
    buyer_email : '${loginUser.memEmail}',
    buyer_name : '${loginUser.memName}',
    buyer_tel : '${loginUser.memHp}',
    buyer_addr : '${loginUser.memAddr1}'+'${loginUser.memAddr2}',
    buyer_postcode : '${loginUser.memMailnumber}',
    m_redirect_url : '/cas/member/insertPoint'
}, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
    }
    alert(msg);
});
</script>
</body>
</html>