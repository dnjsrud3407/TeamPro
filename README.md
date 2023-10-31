# ITBOOKS

## 프로젝트 소개
아이티윌 부산교육센터에서 자바 개발자 양성과정을 수강하며 5명이 수행한 팀 프로젝트로 JSP & Servlet MVC 패턴으로 개발하였습니다.<br>
웹 개발자를 위한 로드맵 도서 쇼핑몰입니다.<br>
웹 개발자가 되기 위한 단계를 총 4단계로 구분하여 카테고리별로 도서를 확인할 수 있고, 장바구니 및 구매도 가능합니다.<br>
관리자 페이지도 개발하여 상품 관리, 회원 관리를 할 수 있습니다.

<br>

## 개발 환경 및 사용된 기술
개발 환경
- JSP & Servlet, Java 11
- Mysql
<br><br>

사용된 기술
- HTML, CSS, JS, JQuery, JSTL
- Git, Github
- Gmail smtp, 아임포트 결제 API

<br>

## Database ERD
<img title="db_erd" src="https://user-images.githubusercontent.com/52884298/279357205-92877fe3-60fe-4000-baf7-b22990b749ae.png" width="1100px">

<br><br>
<hr><br>

## 주요 기능

회원 기능과 관리자 기능으로 구분할 수 있습니다.

### 회원기능 

1. 사용자 메인<br>
   배너와 새로 나온 책, 베스트 셀러 등을 볼 수 있습니다.

2. 계정 서비스, 마이페이지<br>
   계정 서비스에는 회원가입, 로그인, 아이디, 비밀번호 찾기 기능이 있습니다.<br> 
   회원가입은 이메일을 인증하여 진행합니다.<br> 
   마이페이지에서는 사용자의 보유 쿠폰과 포인트를 확인할 수 있고 주문 내역 확인과 주문 취소를 할 수 있습니다.

2. 상품<br>
   상품 목록을 list와 image 형식으로 볼 수 있습니다.<br>
   상품 상세보기에서 상품 후기와 문의를 등록할 수 있고 장바구니 담기와 구매하기가 가능합니다.
   
4. 장바구니<br>
   장바구니에 담긴 상품을 확인할 수 있습니다.<br>
   상품 수량 변경 및 삭제가 가능하고 총 상품금액에 따라 배송비가 변경됩니다.

5. 주문, 결제<br>
   주문할 상품을 확인하고 배송지를 선택할 수 있습니다.<br>
   할인 쿠폰과 포인트를 사용할 수 있고 최종 결제금액을 확인할 수 있습니다.<br>
   결제는 아임포트 결제 API를 사용하였습니다.
<br>

### 관리자 기능

1. 관리자 메인<br>
   주문현황과 상품현황을 확인할 수 있고 월별 매출을 Bootstrap Chart Template를 사용하여 확인 가능합니다.

2. 상품<br>
   상품 등록, 수정, 삭제가 가능합니다.<br>
   상품 목록 확인과 검색이 가능합니다.
   고객이 남긴 상품 후기와 문의글에 답변을 할 수 있습니다.

3. 회원 관리<br>
   회원 확인 및 블랙리스트 처리를 할 수 있습니다.
   
<br>

## 구현 이미지
- 사용자 메인<br>
<img title="member_main" src="https://user-images.githubusercontent.com/52884298/279366326-f4733a82-d7f4-4f03-8e9f-8efcae759d7d.png" width="600px">

<br>

- 회원가입<br>
<img title="join" src="https://user-images.githubusercontent.com/52884298/279366416-0dbeb8c1-82c9-4935-81ec-a05eacf84155.PNG" width="500px">

<br>

- 마이페이지, 결제 내역<br>
<img title="myPage" src="https://user-images.githubusercontent.com/52884298/279366637-009df273-d74b-459f-9de1-ad4aa15d2fe3.PNG" width="600px">
<img title="buyInfo" src="https://user-images.githubusercontent.com/52884298/279366884-77f60be9-1d81-4682-a718-00defd63a7b1.PNG" width="600px">

<br>

- 상품 목록(list/image 선택 가능), 상세보기<br>
<img title="bookList" src="https://user-images.githubusercontent.com/52884298/279366692-e1434783-8362-4dca-bf39-f93a08a87c93.PNG" width="600px">
<img title="bookImage" src="https://user-images.githubusercontent.com/52884298/279366713-ea66e8c9-4279-4d53-9285-0ab1c1434458.PNG" width="600px">
<img title="bookDetail" src="https://user-images.githubusercontent.com/52884298/279366746-d07ed62f-4bcf-4423-af0c-b6fff705f2d3.PNG" width="600px">

<br>

- 장바구니, 결제<br>
<img title="bag" src="https://user-images.githubusercontent.com/52884298/279366769-6d4f9a04-8f49-424c-ad6e-a1661732c4d2.PNG" width="600px">
<img title="cash" src="https://user-images.githubusercontent.com/52884298/279366833-274af0e4-de2c-45c5-8225-868c7768f850.PNG" width="600px">

<br>

- 관리자 메인<br>
<img title="admin_main" src="https://user-images.githubusercontent.com/52884298/279372666-69fb1813-19b9-4d5c-8c3c-5bb253fd13ab.PNG" width="900px">

<br>

- 상품 등록, 목록<br>
<img title="admin_book_create" src="https://user-images.githubusercontent.com/52884298/279372702-3e740e40-7db5-442b-b9e8-37546a6dfb8e.PNG" width="600px">
<img title="admin_book_List" src="https://user-images.githubusercontent.com/52884298/279372780-7d4d078c-366a-4ab9-9e45-8c37c9ad7a3a.PNG" width="800px">

<br>

- 상품 후기 등록, 목록
<img title="admin_book_after" src="https://user-images.githubusercontent.com/52884298/279372834-8ae06c9c-8a3d-4517-a48c-b78d5afa5737.PNG" width="800px">
<img title="admin_book_after_list" src="https://user-images.githubusercontent.com/52884298/279372855-3dc19934-0341-4826-b2e7-5aa793c6b5d6.PNG" width="800px">

<br>

## 개선할 점
- Spring 으로 개발해보기
