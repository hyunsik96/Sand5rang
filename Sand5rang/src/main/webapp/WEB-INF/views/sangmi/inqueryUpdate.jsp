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
    <div class="content" alingn="center">
        <form id="enrollForm" method="post" action="insert.bo" enctype="multipart/form-data">
            <table algin="center">
                <tr>
                    <th width="70px;"><label for="title" >제목</label></th>
                    <td width="700px" height="150px"> <input type="text" id="title" class="form-control" name="boardTitle" required></td>
                </tr>
                <tr>
                    <th><label for="content">내용</label></th>
                    <td><textarea id="content" class="form-control"  cols="110" rows="10" style="resize:none;" name="boardContent" required></textarea></td>
                </tr>
            </table>
            <br>
    
            <div align="center">
                <button type="submit" class="btn btn-primary">수정하기</button>
            </div>  
         </form>
        </div>
</body>
</html>