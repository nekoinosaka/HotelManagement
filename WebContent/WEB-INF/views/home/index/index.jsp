<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="Author" content="">
  <link href="../resources/home/css/reservation.css" type="text/css" rel="Stylesheet"/>
  <link href="../resources/home/css/index.css" type="text/css" rel="Stylesheet"/>
  <link href="../resources/home/shouye/css/bootstrap.css" rel="stylesheet">
  <link href="../resources/home/shouye/css/bxslider.css" rel="stylesheet">
  <link href="../resources/home/shouye/css/style.css" rel="stylesheet">
  <title>酒店|酒店管理系统首页</title>
 	
</head>
<body>
<!--头部-->
<div id="c_header"></div>
<!--主体内容-->
<section>
	<%@include file="../common/header.jsp"%>
  <!---轮播图--->
    <div class="flash"style="margin-top:0px;">
    	<ul class="bxslider" >
      		<li><a href="javascript:;"><img src="../resources/home/shouye/images/45629869.jpg"   width="1920px" height="300px"  alt="广告一" /></a></li>
    	</ul>
  	</div>
  
  <!---预订菜单--->
  <div id="due_menu">
    <!--关于-->
    
    <!--客房-->
    <div id="guest_rooms">
      <p class="booking_tab"><span></span>客房列表</p>
      <div class="chioce">
        <input type="text" placeholder="关键字" value="${kw }" id="kw"/>
        <input type="button" value="搜索" id="search-btn"/>
      </div>
      <form style="display:none;" action="search" method="POST" id="search-form"><input type="hidden" name="name" id="search-name"></form>
      <!--列表-->
      <table id="pro_list" >
        <thead>
          <tr>
            <th width="200px">客房</th>
            <th>房型</th>
            <th>可住人数</th>
            <th>床位数</th>
            <th>房价</th>
              <th>推荐指数</th>
            <th>房态</th>
              <th>功能</th>
            <th>预订</th>
          </tr>
        </thead>
        <tbody >
        <c:forEach items="${roomTypeList }" var="roomType">
        <tr>
          <td><a href="#"><img src="${roomType.photo }" alt=""></a>
          </td>
          <td align="center">
            <p>${roomType.name }</p>
            <p class="sub_txt">${roomType.remark }</p>
          </td>
          <td>${roomType.liveNum }</td>
          <td>${roomType.bedNum }</td>
          <td>${roomType.price }</td>
            <td>${roomType.recommend }</td>
          <td>
          	<c:if test="${roomType.status == 0 }">
          		已满房
          	</c:if>
          	<c:if test="${roomType.status == 1 }">
          		可预订
          	</c:if>
          </td>
            <td><img src="../resources/home/images/wifi.png" style="width: 80px;height: 80px" alt=""></td>
          <td>
          	<c:if test="${roomType.status == 0 }">
          		<input type="button" class="disable" value="满房" >
          	</c:if>
          	<c:if test="${roomType.status == 1 }">
          		<input type="button" value="预订" onclick="window.location.href='account/book_order?roomTypeId=${roomType.id }'" >
          	</c:if>
          </td>
        </tr>
		</c:forEach>
        </tbody>
      </table>
      
      <div id="pages"></div>
      
    </div>
  </div>

</section>
<%@include file="../common/footer.jsp"%>
<script>
$(document).ready(function(){
	$("#search-btn").click(function(){
		$("#search-name").val($("#kw").val());
		$("#search-form").submit();
	})
});


</script>
</body>