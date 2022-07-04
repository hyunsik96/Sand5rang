<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="content">

    
    <table id="boardList" class="table table-hover" align="center">
        <thead>
            <tr>
                <th>글번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>답변유무</th>
            </tr>
        </thead>
        <tbody>
         <c:forEach var="i" items="${ list }">
            <tr>
               <td class="ino">${ i.inqNo }</td>
                <td>${ i.inqTitle }</td>
                <td>${ i.storeId }</td>
                <td>${ i.idate}</td>
                <td>${ i.status }</td>
            </tr>
         </c:forEach>
        </tbody>
    </table>
    <br>


<br><br>
 
<!-- 로그인 후 상태일 경우만 보여지는 글쓰기 버튼 -->
<c:if test="${ not empty loginUser }">
    <a class="btn btn-secondary" style="float:right;" href="inqueryPlus.bo">글추가</a>
    <a class="btn btn-secondary" style="float:right;" href="inqueryUpdate.bo">글수정</a>
    <br>
</c:if>






</div>



</body>
</html>