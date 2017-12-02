<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<html>
<head>
<title>Home</title>
</head>
<body>
	<div class="main">
		<div class="content1">
			<div class="genre">
				<a href="${pageContext.request.contextPath}"> <img
					src="${pageContext.request.contextPath}/img/rnb.png" width="80"
					height="80"></a>
				<a href="${pageContext.request.contextPath}">
					<img src="${pageContext.request.contextPath}/img/hiphop.png"
					width="80" height="80"></a>
				<a href="${pageContext.request.contextPath}"> <img
					src="${pageContext.request.contextPath}/img/ballad.png" width="80"
					height="80"></a>
				<a href="${pageContext.request.contextPath}">
					<img src="${pageContext.request.contextPath}/img/dance.png"
					width="80" height="80"></a>
				<a href="${pageContext.request.contextPath}"> <img
					src="${pageContext.request.contextPath}/img/folk.png" width="80"
					height="80"></a>
				<a href="${pageContext.request.contextPath}">
					<img src="${pageContext.request.contextPath}/img/rock.png"
					width="80" height="80"></a>
				<a href="${pageContext.request.contextPath}"> <img
					src="${pageContext.request.contextPath}/img/indie.png" width="80"
					height="80"></a>
				<a href="${pageContext.request.contextPath}">
					<img src="${pageContext.request.contextPath}/img/etc.png"
					width="80" height="80"></a>
			</div>
		</div>
		<div class="content2">
			<div class="album">
				<a href="#" id="contents_title" >최신 앨범</a>
				<div class="album_contents">
					<ul>
						<li><a href="#"><img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="185px" height="195px">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"><img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="185px" height="195px">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"><img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="185px" height="195px">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"><img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="185px" height="195px">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"><img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="185px" height="195px">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"><img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="185px" height="195px">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"><img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="185px" height="195px">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"><img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="185px" height="195px">
								<center>그린데이</center>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="chart">
				<a href="#" id="contents_title">차트</a>

				<div class="w3-bar chart-btn">
					<button class="w3-bar-item chart-btn"  id="gold" onclick="openSong('latest')">최신</button>
					<button class="w3-bar-item  chart-btn" id="gold" onclick="openSong('top')">Top 10</button>
				</div>

				<div id="latest" class="w3-container song">
					<c:set var="num" value="1,2,3,4,5,6,7,8,9,10"/>
					<c:forEach items="${chart_latest}" var="list"  varStatus="status">
						<p>${status.index+1}${list.title}${list.artist_name}</p>
					</c:forEach>
				</div>

				<div id="top" class="w3-container song" style="display: none">
					<h2>Top10</h2>
					<p>Paris is the capital of France.</p>
				</div>


			</div>
		</div>
		<div class="content3">
			<center>
				<h1>최신 뮤직비디오</h1>
			</center>
			<form action="${pageContext.request.contextPath}/artist/main">
				<input type="hidden" name="artist_no" value="792022">
				<input type="submit" value="테스트 메인">
			</form><br>
			<a href="${pageContext.request.contextPath}/album/album_main">테스트 앨범</a> <br>
			<a href="${pageContext.request.contextPath}/album">데이터크롤링</a> <br>
			<iframe width="360" height="202" src="https://www.youtube.com/embed/H1KBHFXm2Bg" frameborder="0"></iframe>
			
			<div class="mv_contents">

			</div>
		</div>

	</div>




</body>
</html>
<script>
	function openSong(name) {
    var i;
    var x = document.getElementsByClassName("song");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    document.getElementById(name).style.display = "block";  
}
</script>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>