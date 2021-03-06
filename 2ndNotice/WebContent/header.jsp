<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- bootstrap start-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>



<style>
    /*공통 부분 */
*{
    box-sizing: border-box;
}
a{
    text-decoration: none;
	margin-left : 10px
}
.body__container{
    font-family: 'Roboto', sans-serif;
    font-size: 16px;
    font-weight: 400;
    color: #333;
}

.section{
    position: relative;
}

input{
    font-weight: 500;
    max-width: 100%;
    transition: border .2s ease-in-out;
}

input:not([type="checkbox"]) {
    outline: none;
}
.w500{
    width: 500px !important;
}

.w15{
    width: 15% !important;

}

.w25{
    width: 25% !important;
}



/*헤더 부분 */
.header{
    border-bottom: 1px solid #d3d3d3;
}
.header-container{
    max-width: 1180px;
    margin: 0 auto;
    padding: 0 0%;
    position: relative;
    align-items: center;
    display: flex;
    height: 120px;
    justify-content: space-between;
}



.header-container .logo{
    display: flex;
    align-items: center;
}

.right-nav{
    display: flex;
    align-items: center;
    list-style: none;
}


.header-container .img__link{
    margin-bottom: 20px;
}


.header-container  .main__link{
    margin-left: 30px;
    padding: 0;
    background: transparent;
    font-weight: 700;
    font-size: 15px;
    line-height: 19px;
    color: #000;
}

.header-container  .sub__link{
    margin-right: 30px;
    padding: 0;
    background: transparent;
    font-weight: 700;
    font-size: 15px;
    line-height: 19px;
    color: #000;
}

#w3loginbtn{

    background: rgba(204,255,000,0.6);
    border-radius: 30px;
    margin-bottom: 10px;
    font-size: 15px;
    box-shadow: 0px 0px 5px rgb(0 0 0 / 20%);
    color: 	#483d8b;
            margin-right: 25px;
        padding: 0 17px;
        display: flex;
        justify-content: center;
        align-items: center;
        width: 150px;
        height: 50px;
        font-size: 15px;
        font-weight: bold;
}

.header-container  .main__link:hover, .sub__link:hover {
    color: rgba(102,178,255);
    text-decoration: underline;
}


ol, ul {
    margin-bottom: 0;
}
 
</style> 

<body>
	<header class="header">
        <div class="header-container">
            <div class="logo">
                <a class="img__link" href="main.jsp"><img src="img/idolbom1.jpg"
                    alt="logo"></a> <a class="main__link" href="notice?type=guide2&type2=sitter">이용 가이드</a> <a
                    class="main__link" href="userCenter.jsp">고객 센터</a>
            </div>
				<ul class="right-nav">
				
			<c:if test="${userId == null }">
	
	                <li><a class="sub__link" href="board?type=sitterBoard">맘시터 찾기</a></li>
	                <li><a class="sub__link" href="board?type=momBoard">일자리 찾기</a></li>
	               <!--  <li><a class="sub__link" href="login.jsp">로그인</a></li>--> 
	                <li><a class="sub__link" href="joinType.jsp">회원가입</a></li>
	                <li><a id="w3loginbtn"   href="login.jsp" >로그인</a></li>
            </c:if>
            
           <c:if test="${userId != null }">
            		<li><a class="sub__link" href="board?type=sitterBoard">맘시터 찾기</a></li>
	                <li><a class="sub__link" href="board?type=momBoard">일자리 찾기</a></li>
	                <li><a class="sub__link" href="controller?type=mypInfo">마이페이지</a></li>
	               <!-- <li><a class="sub__link" href="join.jsp">로그아웃</a></li> --> 
	                 <li><a id="w3loginbtn"  href="controller?type=logout">로그아웃</a></li>
            </c:if>
			    </ul>            
         </div>

	</header>

</body>
</html>