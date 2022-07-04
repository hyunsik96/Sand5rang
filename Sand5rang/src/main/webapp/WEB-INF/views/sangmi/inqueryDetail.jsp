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

    
        <div class="content" align="center">
        <table class="cd_table"  align="center">
            <tr class="cd_table_title">
                <td width="70px;">제목 : </td>
                <td width="700px" height="150px"><input type="text" disabled value="<%=q.getInqTitle()%>"></td>
            </tr>
            <tr class="cd_table_content1">
                <td colspan="2">
                    <div class="cd_table_content_title">문의내용</div>
                    <textarea name="" cols="110" rows="10" style="resize:none" disabled><%=q.getInqQuery() %></textarea>
                </td>
            </tr>
            <tr class="cd_table_content1">
                <td colspan="2">
                    <hr>
                    <div class="cd_table_content_title">답변내용</div>
                    <textarea name="" cols="110" rows="10" style="resize:none" disabled><%=q.getInqAnswer() %></textarea>
                </td>
            </tr>
        </table>

        </div>
        <div id="paging" align="center">
            <a href="<%= contextPath %>/inqueryList.li" class="btn btn-secondary btn-sm">목록가기</a>       
        </div>

</body>
</html>