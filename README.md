# 우리의 가전, WooGa

> <span style="font-size: 1.8em; font-weight: bold; color: #f6c743;">돈은 아끼고, 필요한 가전만 똑똑하게 쓰자!</span>

<img width="1432" height="253" alt="wooga logo" src="https://github.com/user-attachments/assets/ffb531ca-93c8-4311-86fc-2d0f72a27a4e" />
<br><br>


1인 가구를 위한 사용자 간(P2P) 소형 가전 대여 플랫폼 **WooGa**<br>
필요할 땐 빌리고, 안 쓸 땐 빌려주며 수익까지 얻어보세요!

<br>

<br>

## 프로젝트 멤버
|<img width="95" alt="image" src="https://github.com/user-attachments/assets/620d8ec7-5b50-43dd-b8eb-fb9d400aca6d" />|<img width="85" alt="image" src="https://github.com/user-attachments/assets/9794d84c-4208-4876-80df-6db6b5148fe1" />|<img width="100" alt="image" src="https://github.com/user-attachments/assets/3ff1ebb1-1593-424a-a805-51024e83ed4a" />|<img width="100" alt="image" src="https://github.com/user-attachments/assets/3d6f278d-6640-4e59-a410-c8bc4655f00b" />|<img width="85" alt="image" src="https://github.com/user-attachments/assets/51b2819a-2aa0-403b-9b5e-0ee657a23680" />|
|:---:|:---:|:---:|:---:|:---:|
|**강지현**|**김민지**|**김승민**|**박상윤**|**이재근**|


<br>

# 목차

1. [프로젝트 개요](#1-프로젝트-개요)  
   
2. [주요 기능](#2-주요-기능)  

3. [WBS](#3-wbs)  

4. [UML](#4-uml)  

5. [요구사항 명세서](#5-요구사항-명세서)  

6. [DB 모델링](#6-db모델링)

7. [DB 서버 구축 (리플리케이션)](#7-db-서버-구축-리플리케이션)  

8. [테스트 케이스](#8-테스트-케이스)  

9. [회고](#9-회고)  
   

<br/>

# Git 폴더 구조
<pre>
\BE19-1ST-UP-WOOG
📁 DATA
📁 DDL
📁 DML
├─ 📂 admin
├─ 📂 blackList
├─ 📂 category
├─ 📂 inquiry
├─ 📂 likePostList
├─ 📂 message
├─ 📂 post
│ ├─ 📂 post_management
│ └─ 📂 post_slelect
├─ 📂 rental
│ ├─ 📂 rental_request
│ └─ 📂 rental_request_choice
├─ 📂 report
└─ 📂 user
📁 images
📁 SETUP
├─ ⚙️ PROCEDURE
├─ 🕒 SCHEDULER
└─ 🧲 TRIGGER
</pre>

<br>

# 1. 프로젝트 개요

## 프로젝트 소개

**WooGa**는 1인 가구를 위한 **소형 가전 P2P 대여 플랫폼**입니다!

- 사용자는 필요한 가전을 빌릴 수도, 자신이 보유한 가전을 빌려줄 수도 있어요.
- 정기적으로 사용하지 않는 가전을 대여함으로써 수익을 창출할 수 있고,
- 필요한 순간에만 빌려써서 공간과 비용을 절약할 수 있습니다.


## 프로젝트 기획 배경

**1인 가구의 꾸준한 증가**

- 집에서 사용하는 가전은 필수지만, 1인 가구의 경우 사용 빈도가 낮은 경우가 많아 효율성이 떨어집니다.
- 필요한 시점에만 빌려 쓸 수 있다면, 보다 합리적인 소비가 가능해집니다.

> <img width="1300" height="959" alt="image" src="https://github.com/user-attachments/assets/ea5e22fb-b6c5-4dfc-ac20-443f8107ac37" />

**생활 가전 렌탈 시장의 성장**

- 렌탈 시장은 지속적으로 성장 중이며, 특히 생활 밀착형 소형가전의 수요가 증가하고 있습니다.
- 이에 따라, 개인 간(P2P) 가전 공유 플랫폼의 필요성이 대두되고 있어요.

> <img width="1300" height="1089" alt="image" src="https://github.com/user-attachments/assets/8912224d-90c8-419d-84e5-f0432cfc9b26" />


## Tech Stack

**🗄️ Database** <br>
<img src="https://img.shields.io/badge/mariaDB-003545?style=for-the-badge&logo=mariaDB&logoColor=white">

**🐧 Operating System & Virtualization**<br>
<img src="https://img.shields.io/badge/linux-FCC624?style=for-the-badge&logo=linux&logoColor=black"> <img src="https://img.shields.io/badge/ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white"> <img src="https://img.shields.io/badge/virtualbox-183A61?style=for-the-badge&logo=virtualbox&logoColor=white">

**🛠️ Version Control & Collaboration**<br>
<img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white"> <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white"> <img src="https://img.shields.io/badge/notion-000000?style=for-the-badge&logo=notion&logoColor=white"> <img src="https://img.shields.io/badge/google_Docs-4285F4?style=for-the-badge&logo=googleDocs&logoColor=white">

**💻 IDE**<br>
<img src="https://img.shields.io/badge/intellij_idea-000000?style=for-the-badge&logo=intellijidea&logoColor=white">

<br>

# 2. 주요 기능

| 기능 구분           | 설명                          |
| --------------- | --------------------------- |
| 📝 게시물 등록       | 사용자가 소형 가전을 대여 가능한 상태로 등록   |
| 🔍 전체 게시물 탐색    | 다른 사용자의 대여 가전을 카테고리별로 탐색    |
| 🙋 대여 신청        | 원하는 가전에 대해 기간/금액 확인 후 대여 요청 |
| 💬 쪽지 기능        | 사용자 간 소통으로 대여 일정 및 장소 조율     |
| ✅ 대여 승인/거절      | 대여자가 신청 내역을 보고 수락 여부 결정     |
| 💰 보증금 및 대여료 관리 | 대여 시작 전/후 결제 및 정산 처리        |
| 🛡️ 신고 및 블랙리스트  | 부적절한 사용자나 제품을 신고 가능         |
| 📍 문의  | 관리자에게 서비스 관련 문의         |

<br>

# 3. WBS

<details>
<summary>WBS</summary>
<div markdown="1">

<img width="1053" height="447" alt="image" src="https://github.com/user-attachments/assets/2695dee4-4b34-47fa-8416-6cd6407d5db8" />

</div>
</details>

<br>

# 4. UML

<details>
<summary>UseCase Diagram</summary>
<div markdown="1">

<img width="718" height="617" alt="image (1)" src="https://github.com/user-attachments/assets/4fd6dad2-874b-4cd0-bfe4-2c3083a57226" />

</div>
</details>

<br>

# 5. 요구사항 명세서

<details>
<summary>회원</summary>
<div markdown="1">
  
<img width="1648" height="590" alt="image" src="https://github.com/user-attachments/assets/6fa0f834-c529-4d5e-b7dd-f08aa7aad2d1" />

</div>
</details>

<details>
<summary>게시물/대여신청/카테고리</summary>
<div markdown="1">
  
<img width="1689" height="508" alt="image" src="https://github.com/user-attachments/assets/0bc19d32-7ffb-4e4a-843c-57a2a2dc82f9" />


</div>
</details>

<details>
<summary>문의/쪽지</summary>
<div markdown="1">
  
<img width="1685" height="542" alt="image" src="https://github.com/user-attachments/assets/838726ad-4c62-4c6c-93d5-19c5407c33fc" />

</div>
</details>

<details>
<summary>신고/블랙리스트</summary>
<div markdown="1">
  
<img width="1657" height="447" alt="image" src="https://github.com/user-attachments/assets/a970c574-9d3a-43b3-bd2f-968040a8c7a6" />

</div>
</details>

<br>

# 6. DB모델링
<details>
<summary>논리 모델링</summary>
<div markdown="1">

<img width="1543" height="1094" alt="image (3)" src="https://github.com/user-attachments/assets/18c18188-2283-4a69-ab43-46fde759e74f" />

</div>
</details>

<details>
<summary>물리 모델링</summary>
<div markdown="1">

<img width="2048" height="1062" alt="image (2)" src="https://github.com/user-attachments/assets/765af2f6-9e2c-43d7-97bc-853f2c355e2d" />

</div>
</details>

<br>

# 7. DB 서버 구축 (리플리케이션)

<img width="1500" alt="image" src="https://github.com/user-attachments/assets/a56147cb-9a13-4423-af7f-98cf31c17b2e" />


# 8. 테스트 케이스

<details>
<summary>REG-M-회원관리</summary>

<details>
<summary>REQ-M-1_회원가입</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REG-M-회원관리/REQ-M-1_회원가입.gif?raw=true">
</details>
<details>
<summary>REQ-M-2_로그인_성공_실패이력</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REG-M-회원관리/REQ-M-2_로그인_성공_실패이력.gif?raw=true">
</details>
<details>
<summary>REQ-M-3_회원정보수정</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REG-M-회원관리/REQ-M-3_회원정보수정.gif?raw=true">
</details>
<details>
<summary>REQ-M-4_회원탈퇴</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REG-M-회원관리/REQ-M-4_회원탈퇴.gif?raw=true">
</details>
<details>
<summary>REQ-M-5_관리자계정등록</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REG-M-회원관리/REQ-M-5_관리자계정등록.gif?raw=true">
</details>
<details>
<summary>REQ-M-6_관리자로그인</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REG-M-회원관리/REQ-M-6_관리자로그인.gif?raw=true">
</details>
<details>
<summary>REQ-M-7_회원정보조회</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REG-M-회원관리/REQ-M-7_회원정보조회.gif?raw=true">
</details>
<details>
<summary>REQ-M-8_휴면계정처리</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REG-M-회원관리/REQ-M-8_휴면계정처리.gif?raw=true">
</details>

</details>

<br>

<details>
<summary>REQ-C-카테고리 관리</summary>

<details>
<summary>REQ-C-1_카테고리조회</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-C-카테고리 관리/REQ-C-1_카테고리조회.gif?raw=true">
</details>
<details>
<summary>REQ-C-2_카테고리수정</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-C-카테고리 관리/REQ-C-2_카테고리수정.gif?raw=true">
</details>
<details>
<summary>REQ-C-3_카테고리추가</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-C-카테고리 관리/REQ-C-3_카테고리추가.gif?raw=true">
</details>
<details>
<summary>REQ-C-4_카테고리삭제</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-C-카테고리 관리/REQ-C-4_카테고리삭제.gif?raw=true">
</details>

</details>

<br>

<details>
<summary>REQ-D-신고 관리</summary>

<details>
<summary>REQ-D-1_게시물신고</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-D-신고 관리/REQ-D-1_게시물신고.gif?raw=true">
</details>
<details>
<summary>REQ-D-2_사용자신고</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-D-신고 관리/REQ-D-2_사용자신고.gif?raw=true">
</details>
<details>
<summary>REQ-D-3_신고내역조회(사용자)</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-D-신고 관리/REQ-D-3_신고내역조회(사용자).gif?raw=true">
</details>
<details>
<summary>REQ-D-4_게시물신고누적증가</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-D-신고 관리/REQ-D-4_게시물신고누적증가.gif?raw=true">
</details>
<details>
<summary>REQ-D-5_신고내역조회(관리자)</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-D-신고 관리/REQ-D-5_신고내역조회(관리자).gif?raw=true">
</details>
<details>
<summary>REQ-D-6_신고처리상태변경</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-D-신고 관리/REQ-D-6_신고처리상태변경.gif?raw=true">
</details>
<details>
<summary>REQ-D-7_블랙리스트등록</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-D-신고 관리/REQ-D-7_블랙리스트등록.gif?raw=true">
</details>
<details>
<summary>REQ-D-8_블랙리스트조회</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-D-신고 관리/REQ-D-8_블랙리스트조회.gif?raw=true">
</details>
<details>
<summary>REQ-D-9_블랙리스트삭제</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-D-신고 관리/REQ-D-9_블랙리스트삭제.gif?raw=true">
</details>

</details>

<br>

<details>
<summary>REQ-I-관심게시물 관리</summary>

<details>
<summary>REQ-I-1_관심게시물저장</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-I-관심게시물 관리/REQ-I-1_관심게시물저장.gif?raw=true">
</details>
<details>
<summary>REQ-I-2_관심게시물조회</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-I-관심게시물 관리/REQ-I-2_관심게시물조회.gif?raw=true">
</details>
<details>
<summary>REQ-I-3_관심게시물삭제</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-I-관심게시물 관리/REQ-I-3_관심게시물삭제.gif?raw=true">
</details>

</details>

<br>

<details>
<summary>REQ-N-쪽지관리</summary>

<details>
<summary>REQ-N-1_쪽지발신</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-N-쪽지관리/REQ-N-1_쪽지발신.gif?raw=true">
</details>
<details>
<summary>REQ-N-2_쪽지내용확인</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-N-쪽지관리/REQ-N-2_쪽지내용확인.gif?raw=true">
</details>
<details>
<summary>REQ-N-3_쪽지함조회</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-N-쪽지관리/REQ-N-3_쪽지함조회.gif?raw=true">
</details>
<details>
<summary>REQ-N-4_쪽지삭제</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-N-쪽지관리/REQ-N-4_쪽지삭제.gif?raw=true">
</details>

</details>

<br>

<details>
<summary>REQ-Q-문의관리</summary>

<details>
<summary>REQ-Q-1_문의글작성</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-Q-문의관리/REQ-Q-1_문의글작성.gif?raw=true">
</details>
<details>
<summary>REQ-Q-2_문의글삭제</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-Q-문의관리/REQ-Q-2_문의글삭제.gif?raw=true">
</details>
<details>
<summary>REQ-Q-3_문의글수정</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-Q-문의관리/REQ-Q-3_문의글수정.gif?raw=true">
</details>
<details>
<summary>REQ-Q-4_문의글조회</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-Q-문의관리/REQ-Q-4_문의글조회.gif?raw=true">
</details>
<details>
<summary>REQ-Q-5,8_문의답변작성</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-Q-문의관리/REQ-Q-5,8_문의답변작성.gif?raw=true">
</details>
<details>
<summary>REQ-Q-6_관리자문의답변삭제</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-Q-문의관리/REQ-Q-6_관리자문의답변삭제.gif?raw=true">
</details>
<details>
<summary>REQ-Q-7_관리자문의답변수정</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-Q-문의관리/REQ-Q-7_관리자문의답변수정.gif?raw=true">
</details>
<details>
<summary>REQ-Q-9_사용자문의답변삭제</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-Q-문의관리/REQ-Q-9_사용자문의답변삭제.gif?raw=true">
</details>
<details>
<summary>REQ-Q-10_사용자문의답변수정</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-Q-문의관리/REQ-Q-10_사용자문의답변수정.gif?raw=true">
</details>
<details>
<summary>REQ-Q-11_문의답변조회</summary>
<img src="https://github.com/beyond-sw-camp/be19-1st-UP-WooGa/blob/main/images/req_gifs/REQ-Q-문의관리/REQ-Q-11_문의답변조회.gif?raw=true">
</details>


</details>




<br>


<details>
<summary>REQ-P-게시물 관리</summary>

<details>
<summary>REQ-P-1_게시물 등록</summary>
<img src="https://github.com/user-attachments/assets/ac594ce9-299b-4334-9f19-76a377658487">
</details>



<details>
<summary>REQ-P-2_게시물 삭제</summary>
<img src="https://github.com/user-attachments/assets/1ed23506-8fee-4cb3-9e03-22fcca14cd58">
</details>




<details>
<summary>REQ-P-3_게시물 수정</summary>
<img src="https://github.com/user-attachments/assets/c7ed50d5-6d7a-4e28-8bea-441159210a68">
</details>




<details>
<summary>REQ-P-4_전체 게시물 조회</summary>
<img src="https://github.com/user-attachments/assets/461f43d5-c610-423a-9858-b55a0696d39d">
</details>





<details>
<summary>REQ-P-5_대여 게시물 조회</summary>
<img src="https://github.com/user-attachments/assets/9e7a895e-6af1-47bf-9b3c-0d05fc25bcac">
</details>




<details>
<summary>REQ-P-6_등록 게시물 조회</summary>
<img src="https://github.com/user-attachments/assets/63f858cf-2986-4d28-9e52-5a35cd6b5c36">
</details>



</details>



<br>


<details>
<summary>REQ-R-대여 신청</summary>


<details>
<summary>REQ-R-1_대여한 게시물 조회</summary>
<img src="https://github.com/user-attachments/assets/b0b065c0-69a9-48a7-acaa-2361a27a80ad">
</details>




<details>
<summary>REQ-R-2_게시물 대여 요청</summary>
<img src="https://github.com/user-attachments/assets/b2cbc4b2-39bc-4110-a71e-89b9df7d5c5b">
</details>





<details>
<summary>REQ-R-3_게시물 대여 요청 취소</summary>
<img src="https://github.com/user-attachments/assets/5f497d1e-37f1-4cfd-ba57-1ebec4c163eb">
</details>




<details>
<summary>REQ-R-4_게시물 대여 요청 조회</summary>
<img src="https://github.com/user-attachments/assets/ce1739e6-1335-48b9-9050-14b7d5b8087a">
</details>





<details>
<summary>REQ-R-5_게시물 대여 요청 수락</summary>
<img src="https://github.com/user-attachments/assets/57724e2c-3d32-46dc-b396-23a681808948">
</details>




<details>
<summary>REQ-R-6_게시물 대여 요청 거절</summary>
<img src="https://github.com/user-attachments/assets/adbc68d9-19c8-44ed-b0f6-1a7288b624a3">
</details>



</details>



<br>

# 9. 회고

### 강지현

| 평&nbsp;가&nbsp;자 | 내용 |
|--------|------|
| 김민지 | 기능 구현이나 서비스 흐름에서 헷갈리는 부분이 있을 때 함께 이야기 나누며 생각을 정리할 수 있어서 많은 도움이 되었습니다. 특히 수업에서 다루지 않았던 이벤트 스케줄러 기능도 프로젝트의 요구사항을 만족시키기 위해 개인적으로 찾아 구현해주어서 프로젝트의 퀄리티가 더 좋아졌다고 생각합니다. |
| 김승민 | 팀의 맏형으로써 엇갈리는 의견을 잘 중재해주고 팀원들이 힘들어하는 여러 부분을 보조해주어서 팀원들이 많은 도움을 받을 수 있었습니다. 뒷자리에 있어서 소통이 힘들었을 법도 한데, 불평 없이 맡은 바 역할을 충실히 수행해준 없어서는 안 될 팀원이었습니다. |
| 박상윤 | 뒷자리에 앉아서 팀원과의 소통에서 소외되는 부분이 있었을텐데도 묵묵히 자기 할 일을 책임감 있게 다하는 모습이 다른 팀원들에게 충분히 본받을 점으로 비쳐줬습니다. |
| 이재근 | 언제나 자신의 역할을 해내는 팀의 맏형 같은 존재였다. 맡은 바에 대해서 누구보다 성실하고 책임감 있게 끝까지 완수해주었다. 문제가 발생했을 때에도 차분히 해결 방안을 제시해주셔서 프로젝트 전반에 긍정적인 영향을 주었다. |

### 김민지

| 평&nbsp;가&nbsp;자 | 내용 |
|--------|------|
| 강지현 | 이번 프로젝트에서 굉장히 많은 일을 했다고 생각한다. 이전 프로젝트들에 대한 경험을 기반으로 아이디어 제시, 깃허브 관리, 프로젝트 전체적인 흐름 설계, PPT 제작 및 발표까지 정말 많은 것들을 하여 이번 프로젝트를 성공적으로 이끄는 에이스 역할을 했다고 생각한다. |
| 김승민 | 이번 프로젝트에서 누구보다 많은 일을 해주었고 팀원들이 놓칠 수 있었던 프로젝트의 많은 디테일한 부분을 꼼꼼하게 수행했으며 프로젝트의 완성도를 더욱 끌어 올려준 리더 같은 팀원이었습니다. 또한 깃 사용법 같은 팀원들이 잘 사용하지 않은 툴 사용법도 잘 알고 있어서 개인적으로 많은 도움을 받았습니다. |
| 박상윤 | 팀 프로젝트를 진행하는 동안 팀원들이 모르는 부분이나 어려워하는 부분이 있으면 적극적으로 나서서 도와주었고 맡은 바 주어진 일에 열정을 가지고 최선을 다하는 모습을 보여주었습니다. 그런 점이 프로젝트 동안 솔선수범적인 모습을 보여주었다고 생각합니다. |
| 이재근 | 다양한 프로젝트 경험을 바탕으로, 팀이 진행하는 프로젝트의 전반적인 구조와 흐름을 잡아주었다. 단순히 본인의 업무에만 집중하는 것이 아니라 전체적인 방향성을 고민해 훨씬 체계적으로 프로젝트에 임할 수 있게 도움을 주었다. |

### 김승민

| 평&nbsp;가&nbsp;자 | 내용 |
|--------|------|
| 강지현 | 이번 프로젝트에서 노력이 많이 들어가는 부분을 자처하여 먼저 행동하는 모습을 보여주었고, 덕분에 프로젝트의 기반을 다질 수 있었다고 생각한다. 이렇게 늘 성실한 모습을 보여주었던 것이 인상 깊게 남았다. |
| 김민지 | 유스케이스, WBS, 요구사항 명세서 등 여러 문서 작업을 자처해서 먼저 처리해주어서 덕분에 이후 작업을 수월하게 진행할 수 있었습니다. 또 제가 이전 프로젝트에서부터 반복적으로 해오던 방식에 대해 새로운 시각으로 질문을 던져주어서, 덕분에 놓치고 있던 부분이나 고정된 사고에서 벗어날 수 있었던 것 같습니다. |
| 박상윤 | 프로젝트 중 어려운 점도 있었을 거고 힘든 부분도 있었음에도 불구하고 자신의 주어진 일에 묵묵히 최선을 다하는 모습이 다른 팀원들에게 본받을만한 모습을 충분히 보여주었다고 생각합니다. 그리고 또한, 개발 중 더 필요한 점이나 수정해야 할 점 등 개발을 한 단계 성장시킬 만한 의견이 있으면 적극적으로 내주어 프로젝트 진행에 큰 도움을 주었습니다. |
| 이재근 | 프로젝트를 진행하면서 늘 깊이 있게 고민하고, 단순히 주어진 일뿐 아니라 향후 과제에 대해 적극적으로 생각해왔다. 이러한 태도 덕분에 팀은 이슈를 보다 명확하게 정리하며 프로젝트 전반의 흐름을 안정적으로 가져갈 수 있었다. |

### 박상윤

| 평&nbsp;가&nbsp;자 | 내용 |
|--------|------|
| 강지현 | 프로젝트를 전체적으로 보면서 자신이 할 일을 먼저 맡아서 하려는 모습이 인상 깊었고, 특히 발표 때 말을 조리 있게 잘 해주어서 프로젝트의 마지막을 잘 장식해주었다고 생각한다. 또한 팀원들 간에 대화를 유도하여 서로가 친해질 수 있는 징검다리 역할을 잘 해주었다고 생각한다. |
| 김민지 | 프로젝트 기능 하나하나에 대해 깊이 고민하고 다양한 아이디어를 제안해준 덕분에, 프로젝트의 전반적인 완성도와 퀄리티를 높일 수 있었다고 생각합니다. 또한 항상 밝고 재미있는 분위기를 만들기 위해 노력해주셔서 팀이 더욱 잘 굴러갈 수 있는 환경에서 협업할 수 있었던 것 같습니다. |
| 김승민 | 팀에서 가장 적극적으로 의견을 제시하고 프로젝트에 많은 애정을 가졌던 팀원이라고 생각됩니다. 누구보다 프로젝트 기능에 대해 깊게 고민하고 프로젝트에서 보이는 허점을 잘 짚어내는 쪽집게 같은 팀원이었습니다. 그리고 팀 분위기를 유쾌하게 풀어가고 회의시간 외에도 재밌는 이야기를 통해 팀원들과의 거리를 좁힐 수 있도록 도와주었습니다. |
| 이재근 | 프로젝트 진행 중 적극적으로 의견을 제시해주었고, 주어진 일에 그치지 않고 스스로 필요한 업무를 찾아 도맡아 처리하려는 주도적인 자세를 보였다. 그러한 태도 덕분에 팀 협업이 원활하게 이루어진 것 같다. |

### 이재근

| 평&nbsp;가&nbsp;자 | 내용 |
|--------|------|
| 강지현 | 창의적인 의견을 적극적으로 표출하고, AI 툴을 적극 활용함으로써 팀의 진도가 막혔을 때 솔루션을 제시하여 팀이 나아갈 길을 제시해주는 역할을 하였다. 또한 팀의 분위기 메이커가 되어 팀원들 간의 유대를 형성하는 데 도움을 많이 주었다. |
| 김민지 | 팀 내에서 편안하고 부드러운 분위기를 만들어주어 덕분에 팀워크 향상에 큰 도움이 되었다고 생각합니다. 또한 개발 과정에서 고민되거나 헷갈리는 부분이 생겼을 때 편하게 의견을 주고받으며 생각 정리하고 방향을 잡는 데에 큰 도움을 받았습니다. |
| 김승민 | 프로젝트에서 다양한 의견을 제시하여 다른 팀원들에게 많은 아이디어를 제공해 주었으며, 바쁜 와중에도 본인의 역할을 묵묵히 수행하는 것이 제가 본받아야 할 점이라고 생각이 드는 팀원이었습니다. 팀이 처질 때마다 분위기를 환기시켜 주었고 프로젝트에서 어렵고 막히는 부분도 묵묵히 해결해주었습니다. |
| 박상윤 | 개발 중 필요한 아이디어가 있을 시 적극적으로 나서서 혁신적이고 창의적인 해결법을 많이 제시하여 주었고 주어진 업무에 최선을 다하고 책임감 있게 행동한 모습을 보여줬습니다. 또한 유쾌한 성격으로 팀원 간의 분위기를 좋은 방향으로 이끌어갔고 덕분에 좋은 프로젝트 결과를 만들 수 있게 도와주었습니다. |
