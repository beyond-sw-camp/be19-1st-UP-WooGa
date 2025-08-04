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
