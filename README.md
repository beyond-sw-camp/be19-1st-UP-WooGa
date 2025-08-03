<img width="1338" height="868" alt="image" src="https://github.com/user-attachments/assets/21121f48-cef5-461f-a9cf-56305f1379cd" />


┣ [**1. 프로젝트 개요**](#1-프로젝트-개요)  
┣ [**2. 주요 기능**](#2-주요-기능)  
┣ [**3. WBS**](#3-wbs)  
┣ [**4. UML**](#4-uml)  
┣ [**5. 요구사항 명세서**](#5-요구사항-명세서)  
┣ [**6. DB모델링**](#6-db모델링)  
┣ [**7. 테스트 케이스**](#7-테스트-케이스)  
└ [**8. 회고**](#8-회고)  

--- 

- 팀원 소개

<br/>

|<img width="291" height="225" alt="image" src="https://github.com/user-attachments/assets/6929d467-e5a2-4e11-a38f-6a6e24874440" />|<img width="379" height="257" alt="image" src="https://github.com/user-attachments/assets/1e30ef06-6968-4f22-8a86-0db9015d653c" />|<img width="327" height="239" alt="image" src="https://github.com/user-attachments/assets/3b48c980-887a-4c90-9d59-81cb443abdc9" />|<img width="299" height="269" alt="image" src="https://github.com/user-attachments/assets/4b599509-e9ec-4ea5-8cbe-dd17969c1c64" />|<img width="334" height="277" alt="image" src="https://github.com/user-attachments/assets/b0f9fe81-2206-4ba4-8f74-3cef32fd7208" />|
|:---:|:---:|:---:|:---:|:---:|
|**강지현**|**김민지**|**김승민**|**박상윤**|**이재근**|

<br/>

# 1. 프로젝트 개요

> <img width="1875" height="959" alt="image" src="https://github.com/user-attachments/assets/ea5e22fb-b6c5-4dfc-ac20-443f8107ac37" />
> <img width="1760" height="1089" alt="image" src="https://github.com/user-attachments/assets/8912224d-90c8-419d-84e5-f0432cfc9b26" />
> 사용자들이 다양한 가전 제품을 편리하게 빌리고 반납할 수 있는 모바일/웹 기반 플랫폼을 구축하여 합리적인 가격과 간편한 절차를 통해 렌탈 시장을 활성화하고,
> 서비스의 신뢰 기반의 기능을 통해 안전한 렌탈 거래 환경을 구축한다.

<br/>

> - 기술 스택
> <img src="https://img.shields.io/badge/mariaDB-003545?style=for-the-badge&logo=mariaDB&logoColor=white">
> <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white">
> <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
> <img src="https://img.shields.io/badge/notion-000000?style=for-the-badge&logo=notion&logoColor=white">
> <img src="https://img.shields.io/badge/google_Docs-4285F4?style=for-the-badge&logo=googleDocs&logoColor=white">
> <img src="https://img.shields.io/badge/intellij_idea-000000?style=for-the-badge&logo=intellijidea&logoColor=white">

# 2. 주요 기능

> - **회원 기능**: 사용자는 자신의 계정을 생성하여 서비스를 이용할 수 있다.  
> - **게시물 기능**: 대여할 물품을 게시물로 게시하면 일정별 금액에 따라 보증금이 계산되어 등록된다.  
> - **카테고리 기능**: 카테고리별로 대분류, 중분류, 소분류로 나뉘어 원하는 카테고리를 검색 할 수 있다.  
> - **쪽지 기능**: 사용자간에 대여관련 대화를 할 수 있다.  
> - **관심 게시물 기능**: 사용자가 관심가지고 있는 게시물을 모아서 볼 수 있다.  
> - **문의 기능**: 시스템에 대해 문의할 사항이 생길경우 관리자와 1대1 답변형식으로 대화 할 수 있다.  
> - **신고 기능**: 게시물 또는 사용자를 신고하여 일정 누적 신고횟수가 초과하면 게시물 삭제 또는 블랙리스트에 등록이 된다.  

# 3. WBS

<details>
<summary>WBS</summary>
<div markdown="1">

<img width="2122" height="883" alt="image" src="https://github.com/user-attachments/assets/2fb50e7e-85c5-4f29-b164-8bbc6c5be4fa" />

</div>
</details>

# 4. UML

<details>
<summary>UseCase Diagram</summary>
<div markdown="1">

<img width="718" height="617" alt="image (1)" src="https://github.com/user-attachments/assets/4fd6dad2-874b-4cd0-bfe4-2c3083a57226" />

</div>
</details>

# 5. 요구사항 명세서

<details>
<summary>회원</summary>
<div markdown="1">
  
<img width="1648" height="590" alt="image" src="https://github.com/user-attachments/assets/6fa0f834-c529-4d5e-b7dd-f08aa7aad2d1" />

</div>
</details>

<details>
<summary>게시물/카테고리</summary>
<div markdown="1">
  
<img width="1689" height="508" alt="image" src="https://github.com/user-attachments/assets/15a380b4-1cbc-4468-9c37-c832a2293fe3" />

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

# 7. 테스트 케이스

<details>
<summary>테스트 케이스</summary>
<div markdown="1">
  
<img width="1152" height="1130" alt="image" src="https://github.com/user-attachments/assets/7d2d245f-0787-45bf-a1f1-cf331e739936" />

</div>
</details>

# 8. 회고



