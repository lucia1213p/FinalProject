<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.or.tech.board.model.vo.*" 
		import="java.util.ArrayList" 
%>
<%
	MainpageBoard mpb=(MainpageBoard)request.getAttribute("mainPageBoard");
	Notice selectNotice=mpb.getSelectNotice();
	ArrayList<Notice> recentNoticeList=mpb.getRecentNotice();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

	table td{
	text-align:center;
	}
	
	.noticeTbl{
		padding-bottom:40px;
	}
	
	#techShare{
		padding-top:40px;
	}
	#selectNotice{
		background-color: #FFCA6C;
	}

	.container{
		padding-top:50px;
	}
</style>
<title>메인페이지</title>
</head>
<body>

<!-- 헤더 내비 -->
<jsp:include page="header.jsp" flush="false" />

<!-- 메인 테이블 -->
<div class="mainPage">
<div class="container">
	<div id="noticeTbl">
			<p><h4><b>공지사항</b></h4></p>
			<table class="table table-bordered">
				<thead class="thead-dark">
					<tr>
			            <th class="text-center">No</th>
			            <th class="text-center">Title</th>
			            <th class="text-center">Writer</th>
			            <th class="text-center">Hits</th>
			        </tr>
				</thead>
				<tbody>
					<%if(selectNotice!=null) {%>
						<tr id="selectNotice">
							<td><a href="/noticeInfo.do?noticeNo=<%=selectNotice.getNoticeNo()%>&boardCode=<%=selectNotice.getBoardCode()%>"><b><%=selectNotice.getNoticeNo()%></b></a></td>
							<td><b><%=selectNotice.getNoticeTitle() %></b></td>
							<td><b><%=selectNotice.getMemberName() %></b></td>
							<td><b><%=selectNotice.getNoticeHits() %></b></td>
						</tr>
					<%}else{%>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					<%} %>
					<%if(recentNoticeList!=null) {
						for(Notice recentNotice:recentNoticeList){
					%>
						<tr>
							<td><a href="/noticeInfo.do?noticeNo=<%=recentNotice.getNoticeNo()%>&boardCode=<%=recentNotice.getBoardCode()%>"><%=recentNotice.getNoticeNo()%></a></td>
							<td><%=recentNotice.getNoticeTitle() %></td>
							<td><%=recentNotice.getMemberName() %></td>
							<td><%=recentNotice.getNoticeHits() %></td>
						</tr>
					<%}%>
				    <%}else{%>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<%} %>
				</tbody>
			</table>
		</div>
		<div id="techShare">
			<p><h4><b>기술공유</b></h4></p>
			<table class="table table-bordered">
				<thead class="thead-dark">
					<tr>
			            <th class="text-center">No</th>
			            <th class="text-center">Title</th>
			            <th class="text-center">Writer</th>
			            <th class="text-center">Action</th>
			            <th class="text-center">Hits</th>
			            <th class="text-center">Select</th>
			        </tr>
				</thead>
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="techSupport">
			<p><h4><b>기술지원</b></h4></p>	
			<table class="table table-bordered">
			<thead class="table">
					<tr>
			            <th class="text-center">No</th>
			            <th class="text-center">Title</th>
			            <th class="text-center">Writer</th>
			            <th class="text-center">Action</th>
			            <th class="text-center">Hits</th>
			            <th class="text-center">Select</th>
			        </tr>
				</thead>
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

</body>
</html>