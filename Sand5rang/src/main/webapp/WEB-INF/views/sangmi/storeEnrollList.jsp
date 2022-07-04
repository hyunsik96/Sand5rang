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
    <table id="storeList" align="center">
        <thead align="center"> 
           <tr>
               <th>이름</th>
               <th>연락처</th>
               <th>이메일</th>
               <th>지역</th>
               <th>상태(비포B)</th>
           </tr>
          </thead>
           <tbody align="center">
              <c:forEach var="e" items="${ list }">
               <tr>
                 <td>${e.storeName}</td>
                 <td>${e.phone}</td>
                 <td>${e.email}</td> 
                 <td>${e.enrollAdd}</td>
                 <td>${e.status}</td>
               </tr>
              </c:forEach>   
           </tbody>
   
   
      </table>
    </div>
</body>
</html>