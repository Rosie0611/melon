<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div>
<input type="hidden" name="arti_no" value="${arti_main_static.artist_no}" />
		<br><h2 align="center">아티스트 채널</h2><br>
		<div class="container">
		<table align="center" class="table table-hover">	
			<tr>
				<td width="300px" rowspan="5" align="center"><img align="middle" src="${arti_main_static.img}" title="가수이미지"/></td>
				<td><font style="font-weight: bold; font-size: xx-large;" >${arti_main_static.artist_name}</font><br></td>
			</tr>
			<tr>
				<td>가수소개</td>
			</tr>		
			<tr>
				<td>수상경력<br>
				
				</td>
			</tr>	
		</table>
		</div>
	</div>
</body>
</html>