<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<head>
		<title>emplist</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
		<style type="text/css">
			.a1:VISITED{
				color: rgb(70,122,167);
			}
			.a1:HOVER{
				color: #73A822;
			}
		</style>
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
					<h1 style="float: left;">
						Welcome ${sessionScope.employee.empNo}!
					</h1>
					<h1 style="float: right;"><a href="${pageContext.request.contextPath}/login.do?method=exit" class="a1">安全退出</a></h1>
					<table class="table">
						<tr class="table_header">
						   <td>
						       <h3><a href="Exam.do?method=showAll">查看所有员工信息</a></h3>
						   </td>
						</tr>
					<c:if test="${sessionScope.employee.empLevel!=4}" >
					 	<tr class="table_header">
						   <td>
						       <h3><a href="Exam.do?method=showSome">进行员工考核</a></h3>
						   </td>
						</tr>
					</c:if>
					</table>
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
