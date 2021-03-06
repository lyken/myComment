<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="p" tagdir="/WEB-INF/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
		<title>订单查询</title>
		<link rel="stylesheet" type="text/css" href="${basePath}/css/all.css">
		<link rel="stylesheet" type="text/css" href="${basePath}/css/pop.css">
		<link rel="stylesheet" type="text/css" href="${basePath}/css/main.css">
		<script type="text/javascript" src="${basePath}/js/common/jquery-1.8.3.js"></script>
		<script type="text/javascript" src="${basePath}/js/content/orderList.js"></script>
	</head>
	<body style="background: #e1e9eb;">
		<form action="${basePath}/orders" id="mainForm" method="post">
			<input id="id" name="id" type="hidden">
			<input id="basePath" value="${basePath}" type="hidden">
			<input name="page.currentPage" id="currentPage" value="1" type="hidden">
			<div class="right">
				<div class="current">当前位置：<a href="#">内容管理</a> &gt; 订单查询</div>
				<div class="rightCont">
					<p class="g_title fix">订单列表</p>
					<table class="tab1">
						<tbody>
							<tr>
								<td width="80" align="right">手机号：</td>
								<td>
									<input name="member.phone" id="phone" value="${searchParam.member.phone}" class="allInput" type="text"/>
								</td>
	                            <td style="text-align: right;" width="150">
	                            	<input class="tabSub" value="查询" onclick="search('1');" type="button">&nbsp;&nbsp;&nbsp;&nbsp;
	                            </td>
	       					</tr>
						</tbody>
					</table>
					<div class="zixun fix">
						<table class="tab2" width="100%">
							<tbody>
								<tr>
								    <th>序号</th>
								    <th>手机号</th>
								    <th>订单号</th>
								    <th>金额(元)</th>
								</tr>
								<c:forEach items="${orderList}" var="item" varStatus="status">
									<tr>
										<td>${status.index + 1}</td>
										<td>${item.member.phone}</td>
										<td>${item.id}</td>
										<td>${item.price}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- 分页 -->
						<p:page page="${searchParam.page}" jsMethodName="search"/>
					</div>
				</div>
			</div>
		</form>
	</body>
</html>