<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<div class="content">
    <table id="storeList" align="center">
        <thead align="center"> 
           <tr>
               <th>이름</th>
               <th>연락처</th>
               <th>이메일</th>
               <th>지역</th>
               <th>제목</th>
               <th>내용</th>
           </tr>
          </thead>
           <tbody align="center">
              <c:forEach var="e" items="${ list }">
               <tr>
                 <td>${e.storeName}</td>
                 <td>${e.phone}</td>
                 <td>${e.email}</td> 
                 <td>${e.enrollAdd}</td>
                 <td>${e.title}</td>
                 <td>${e.content}</td>
               </tr>
              </c:forEach>   
           </tbody>
      </table>
    </div>
    <hr>
  <br><br><br><br>
    <div class="inner">
     <form id="enrollForm" method="post" action="" >
        <table algin="center">
            <tr>
                <th><label for="name">가맹점 명</label></th>
                <td><input type="text" id="name" class="form-control" name="storeEnrollName" ></td>
            </tr>
            <tr>
                <th><label for="id">가맹점 아이디</label></th>
                <td><input type="text" id="id" class="form-control" value="${ loginUser.userId }" name="storeEnrollId" readonly></td>
            </tr>
            <tr>
                <th><label for="password">가맹점 비밀번호</label></th>
                <td><input type="text" id="password" class="form-control-file border" name=""></td>
            </tr>
            <tr>
                <th><label for="address">가맹점 주소</label></th>
                <td><input type="text" id="address" class="form-control-file border" name=""></td>
                
            </tr>

            <tr>
                <th><label for="content">반려이유</label></th>
                <td><textarea id="content" class="form-control" rows="10" style="resize:none;" name="" ></textarea></td>
            </tr>
        </table>
        <br>

        <div align="center">
            <button type="submit" class="btn btn-primary">승인</button>
            <button type="submit" class="btn btn-danger">반려</button>
        </div>
    </form>
   </div> 
</div>
<br><br>
       
</body>
</html>