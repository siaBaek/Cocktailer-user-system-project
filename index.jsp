<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cocktailer</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/index.css" />
    <link rel="stylesheet" href="css/common.css" />
    <link rel="stylesheet" href="jqueryUIplugin/jquery-ui.css" />
    <link rel="shortcut icon" href="imgs/favicon.ico" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/sub3.js"></script>
  </head>
  <body>
  
  <jsp:include page="include/header.jsp" />

    <div class="banner">
      <h2>EXPERIENCES</h2>
      <p>다양한 체험 프로그램을 통해 색다른 럼을 만나보세요</p>
    </div>

    <section>
      <div class="container">
        <!-- 탭 메뉴 상단 시작 -->
        <ul class="tabs">
          <li class="tab-link current" data-tab="tab-1">class</li>
          <li class="tab-link" data-tab="tab-2">factory</li>
          <li class="tab-link" data-tab="tab-3">tasting</li>
        </ul>

        <div id="tab-1" class="tab-content current">
          <img src="./imgs/article1-fhd.jpg" />
          <div class="tab-des">
            <h5>칵테일 클래스</h5>
            <p>
              칵테일 입문자들을 위해 칵테일의 재료, 도구, 기법 등 기본적인 요소에 대해 소개해 드립니다. 럼이 들어가는 가장 대표적인 칵테일인 모히또와
              피나콜라다를 함께 만들어 즐기는 시간을 가져보세요.
            </p>
            <table>
              <tbody>
                <tr class="con-left">
                  <td><img src="./imgs/article-icon1.png" /></td>
                  <td>90분</td>
                </tr>
                <tr class="con-right">
                  <td><img src="./imgs/article-icon2.png" /></td>
                  <td>만 18세 이상</td>
                </tr>
                <tr class="con-left">
                  <td><img src="./imgs/article-icon3.png" /></td>
                  <td>최대 10명</td>
                </tr>
                <tr class="con-right">
                  <td><img src="./imgs/article-icon4.png" /></td>
                  <td>70,000</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>

        <div id="tab-2" class="tab-content">
          <img src="./imgs/article2-fhd.jpg" />
          <div class="tab-des">
            <h5>럼 공장 투어</h5>
            <p>
              럼에 대해 깊이 알고싶어하는 분들을 위해 항상 열려있습니다. 가이드와 함께 럼이 만들어지는 공장에 방문하여 제조 과정과 역사에 대해 공부해보세요.
            </p>
            <table>
              <tbody>
                <tr class="con-left">
                  <td><img src="./imgs/article-icon1.png" /></td>
                  <td>90분</td>
                </tr>
                <tr class="con-right">
                  <td><img src="./imgs/article-icon2.png" /></td>
                  <td>연령제한 없음</td>
                </tr>
                <tr class="con-left">
                  <td><img src="./imgs/article-icon3.png" /></td>
                  <td>최대 50명</td>
                </tr>
                <tr class="con-right">
                  <td><img src="./imgs/article-icon4.png" /></td>
                  <td>20,000</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>

        <div id="tab-3" class="tab-content">
          <img src="./imgs/article3-fhd.jpg" />
          <div class="tab-des">
            <h5>럼 시음 투어</h5>
            <p>
              테이스팅 투어를 통해 럼을 맛보고 향을 느껴보세요. 다양한 종류의 럼을 시음해보고 나만의 취향을 찾으세요. 프리미엄 럼도 시음할 수 있고, 끝난 후에는
              구매도 가능합니다.
            </p>
            <table>
              <tbody>
                <tr class="con-left">
                  <td><img src="./imgs/article-icon1.png" /></td>
                  <td>75분</td>
                </tr>
                <tr class="con-right">
                  <td><img src="./imgs/article-icon2.png" /></td>
                  <td>만 18세 이상</td>
                </tr>
                <tr class="con-left">
                  <td><img src="./imgs/article-icon3.png" /></td>
                  <td>최대 20명</td>
                </tr>
                <tr class="con-right">
                  <td><img src="./imgs/article-icon4.png" /></td>
                  <td>35,000</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </section>
    <div class="programBtn">
    
    	 <c:set var="id" value="${id}" />
      	<c:if test="${!empty sessionScope.id}">
      	      <a href="program.do?id=${sessionScope.id}">프로그램 신청하기 →</a>
      	</c:if> 
      	<c:if test="${empty sessionScope.id}">
             <a href="goLogin.do">프로그램 신청하기 →</a>
      </c:if> 
    
    

    </div>
    <footer>
      <h6>COCKTAILER</h6>
      <p>&copy; 2021 Cocktailer. All rights reserved.</p>
    </footer>
  </body>
</html>
