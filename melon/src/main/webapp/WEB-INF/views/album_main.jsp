<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bee/album/</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/template/album_staticPage.jsp" %>
<div class="container">
 <table  class="table table-hover" align="center">
  	<tr>
  		<td colspan="8"></td>
  	</tr>
  	<tr>
  		<td colspan="8" align="Right">

 		 <img src="https://raw.githubusercontent.com/google/material-design-icons/master/action/2x_web/ic_spellcheck_black_48dp.png" width="25px" height="25px"  onclick=""><!-- 체크박스-> 곡목록 전체선택 -->
 		&nbsp;&nbsp;&nbsp;
 		 <img src="https://raw.githubusercontent.com/google/material-design-icons/master/av/2x_web/ic_playlist_add_black_48dp.png" width="25px" height="25px"  onclick="" > <!-- 플레이리스트에 저장+재생 -->
 		&nbsp;&nbsp;&nbsp; 
 		 <img src="https://raw.githubusercontent.com/google/material-design-icons/master/editor/2x_web/ic_vertical_align_bottom_black_48dp.png" width="25px" height="25px"  onclick=""><!-- 플레이리스트에 저장 -->
  		&nbsp;&nbsp;&nbsp;
		</td>
  	</tr>
  		<tr >	
  			<td align="center"><input type="checkbox"></td>
  			<td>NO</td>
  			<td></td>
  			<td>곡정보</td>
  			<td align="center" >재생</td>
  			<td align="center" >뮤비</td>
  			<td align="center" >담기</td>
  			<td align="center">좋아요</td>	<!--  이후에 추가 할지 안할지 결정해야 -->
  			
  		</tr>
  		<c:forEach var="i" begin="1" end="5" step="1">
  			<tr>	
  				<td align="center"><input type="checkbox" value=""></td>
  				<td width="30px">&nbsp;${i}</td>
  				<td>	
  					<img alt="가사보기" src="https://raw.githubusercontent.com/google/material-design-icons/master/editor/2x_web/ic_format_align_justify_black_48dp.png" width="20px" height="20px" onclick="">
  				</td>	
  				<td><a href="artist_music">${album_musicList.title}</a><br>
  					<a href="artist_main">${arti_musicList.artist_name}</a></td>
  				<td> 
  					<img alt="재생" title="재생" src="https://raw.githubusercontent.com/google/material-design-icons/master/av/2x_web/ic_play_circle_outline_black_48dp.png" width="20px" height="20px" onclick="">
  				</td>
  				<td> 
  					<img alt="뮤직비디오" title="뮤직비디오" src="https://raw.githubusercontent.com/google/material-design-icons/master/av/2x_web/ic_videocam_black_48dp.png" width="20px" height="20px" onclick="">
  				</td>
  				<td>
  					<img alt="재생목록 담기" title="재생목록 담기" src="https://raw.githubusercontent.com/google/material-design-icons/master/content/2x_web/ic_add_circle_outline_black_48dp.png" width="20px" height="20px" onclick="">
  				</td>
  				
  				<td align="center"><img alt="좋아요" src="https://raw.githubusercontent.com/google/material-design-icons/master/action/2x_web/ic_favorite_black_48dp.png" width="20px" height="20px" onclick=""></td>	<!--  이후에 추가 할지 안할지 결정해야 -->
  		</tr>
  		</c:forEach>
  	</table>
  </div>
</body>
</html>