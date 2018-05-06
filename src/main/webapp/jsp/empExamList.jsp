<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>emplist</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
		
	</head>
	<body>
		<div id="wrap">
			<div id="top_content"> 
				<div id="header">
					<div id="rightheader">
						<p>
							2009/11/20
							<br />
						</p>
					</div>
					<div id="topheader">
						<h1 id="title">
							<a href="#">main</a>
						</h1>
					</div>
					<div id="navigation">
					</div>
				</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						Welcome!
					</h1>
					<table class="table">
						<tr class="table_header">

							<td>
								员工编号
							</td>
							<td>
								姓名
							</td>
							<td>
								考核状态
							</td>
							<td>
								考核分数
							</td>  
							<td>
								操作
							</td>
						</tr>
						<c:forEach var="map" items="${requestScope.list}" varStatus="vs">
							<tr 
								<c:if test="${vs.count%2==0}">
								class="row1"
								</c:if>
								<c:if test="${vs.count%2!=0}">
								class="row2"
								</c:if>
							>
								<td>${map.ExamScore.employee.empNo}</td>
								<td>${map.Person.name}</td>
								<td>${map.status}</td>
								<td>${map.ExamScore.score}</td>
								<td><a href="${pageContext.request.contextPath}/empExam.jsp?empNo=${map.ExamScore.employee.empNo}">考核</a></td>							
							</tr>
						</c:forEach>
					 
					</table>
					<p>
					    <input type="button" class="button" value="back" onclick="location='${pageContext.request.contextPath}/empIndex.jsp'"/>
					</p>
					
					
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
				ABC@126.com
				</div>
			</div>
		</div>
	</body>
</html>
