# ITBOOKS

## 프로젝트 소개
부산 아이티윌 자바 개발자 양성과정을 수강하며 수행한 팀 프로젝트로 JSP & Servlet MVC 패턴으로 개발하였습니다.
웹 개발자를 위한 도서 쇼핑몰입니다.
웹 개발자가 되기 위한 단계를 총 4단계로 구분하여 카테고리별로 도서를 확인할 수 있고, 장바구니 및 구매도 가능합니다.
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

2. 계정 서비스<br>
   계정 서비스에는 회원가입, 로그인, 아이디, 비밀번호 찾기 기능이 있습니다.<br> 
   회원가입, 아이디, 비밀번호 찾기는 이메일을 인증하여 진행합니다.

2. 리스트<br>
   게시글을 리스트로 관리할 수 있습니다.<br>
   예를 들어 경주 여행이나 부산 맛집 등 리스트를 생성하여 리스트 별로 게시글을 한 번에 확인할 수 있습니다.


3. 마이페이지<br>
   회원이 작성한 게시글, 리스트 수를 확인할 수 있습니다.<br> 
   또한 비밀번호 변경, 회원 탈퇴, 로그 아웃 및 계정과 관련된 기능을 진행할 수 있습니다.


4. 계정 서비스<br>
   계정 서비스에는 회원가입, 로그인, 아이디, 비밀번호 찾기 기능이 있습니다.<br> 
   회원가입, 아이디, 비밀번호 찾기는 이메일을 인증하여 진행합니다.<br>
   로그인으로 일반 회원가입과 Kakao 간편 회원가입이 있습니다.<br>
   로그인 시 Redis In memory에 JWT 토큰을 관리하여 최대 2주동안 로그인 유지가 가능합니다.


5. 관리자 서비스<br>
   게시글 카테고리를 관리할 수 있습니다.

<br>

## 시연 영상
- 로그인 및 회원가입<br>
<img title="join_login" src="https://user-images.githubusercontent.com/52884298/268448285-0b872e22-4538-4b54-8cc1-3bb94e698738.gif" width="1000px">

<br>

- 카카오 로그인<br>
<img title="kakaoLogin" src="https://user-images.githubusercontent.com/52884298/268448542-2f675b23-d2fe-48c7-a47c-4667f832376f.gif" width="1000px">

<br>

- 게시글 검색 및 목록<br>

https://github.com/dnjsrud3407/foodstagram/assets/52884298/61e74790-c74b-4da2-9b42-36ca97202c7d

<br><br>

- 게시글 상세보기<br>

https://github.com/dnjsrud3407/foodstagram/assets/52884298/07c34f3d-83d0-44df-9d97-610a9634db4e

<br><br>

- 리스트 목록 및 등록하기
<img title="list_detail_create" src="https://user-images.githubusercontent.com/52884298/268457514-409a7e11-4824-4ffb-8017-3da0012bd706.gif" width="1000px">

<br>

## 개선할 점
- Redis 서버 분리하여 JWT, 이메일 인증번호 저장하기
