<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<style>
h2{
	width: 960px;
    margin:0 auto;
    margin-bottom:10px;
	
}
table {
    border-collapse: collapse;
    width: 960px;
    margin:0 auto;
    margin-bottom:10px;
}

th, td {
    padding: 8px;
    text-align: center;
    border-bottom: 1px solid #ddd;
}

tr:hover{background-color:#f5f5f5}

</style>
</head>
<body>
<h2>공지사항 게시판</h2>

<table>
  <tr>
    <th>글번호</th>
    <th>글제목</th>
    <th>글쓴이</th>
    <th>글쓴 날짜</th>
  </tr>
  
  <tr>
    <td>Peter</td>
    <td>Griffin</td>
    <td>$100</td>
    <td>2017-07-10</td>
  </tr>
  <tr>
    <td>Lois</td>
    <td>Griffin</td>
    <td>$150</td>
    <td>2017-07-10</td>
  </tr>
  <tr>
    <td>Joe</td>
    <td>Swanson</td>
    <td>$300</td>
    <td>2017-07-10</td>
  </tr>
  <tr>
    <td>Cleveland</td>
    <td>Brown</td>
    <td>$250</td>
    <td>2017-07-10</td>
  </tr>
</table>
</body>
</html>