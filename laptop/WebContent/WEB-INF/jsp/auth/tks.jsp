<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<b:if cond='data:blog.pageType == &quot;error_page&quot;'>
	<style type='text/css'>
#error-page {
	background-color: #e9e9e9;
	position: fixed !important;
	position: absolute;
	text-align: center;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 99999
}

#error-404 {
	margin: 11% auto
}

#error-404 .box-404 {
	width: 400px;
	height: 200px;
	background: #21afa4;
	color: #fff;
	font-size: 80px;
	line-height: 200px;
	border-radius: 10px;
	margin: 0 auto 50px;
	position: relative
}

#error-404 .box-404::after {
	content: &quot;
	width: 0;
	height: 0;
	bottom: -8px;
	border-color: #21afa4 transparent transparent;
	border-style: solid;
	border-width: 9px 9px 0;
	position: absolute;
	left: 47%
}

#error-404 h1 {
	text-transform: uppercase
}

#error-404 p {
	line-height: 1.7em;
	font-size: 15px;
	font-family: arial
}
</style>
	<div id='error-page'>
		<div id='error-404'>
			<div class='box-404'>ThankYou</div>
			<h1 style="color:red">Hàng Của Bạn Sẽ Được Gửi Đến Nhanh Nhất Có Thể</h1>
			<h1 style="color:red"><a href="${pageContext.request.contextPath }/">Về Trang Chủ >></a></h1>
		</div>
	</div>
</b:if>