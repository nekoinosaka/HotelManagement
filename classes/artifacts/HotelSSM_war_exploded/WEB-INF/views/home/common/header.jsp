<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

  <link href="../resources/home/shouye/css/bootstrap.css" rel="stylesheet">
  <link href="../resources/home/shouye/css/bxslider.css" rel="stylesheet">
  <link href="../resources/home/shouye/css/style.css" rel="stylesheet">
<script src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
<!--底部-->
<header>
  <!---首页的用户登陆--->
	<div class="top_menu" style="height:7px;">
    	<div class="container">
    		<span class="top_name" style="margin-left:-750px;text-align:left;">欢迎预定酒店</span>
     		<div class="language">用户：
     			<p style="float: right;">
					<c:if test="${account == null }">
						<a href="../home/login">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="../home/reg">注册</a>&nbsp;
					</c:if>
					<c:if test="${account != null }">
						<font color="red">欢迎您：${account.name }&nbsp;&nbsp;|&nbsp;&nbsp;</font>
						<a href="account/index">用户中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="../home/logout">注销登录</a>&nbsp;
					</c:if>
				</p>
     		</div>
    	</div>
  	</div>
  	
  	<!---菜单按钮--->
	<nav class="navbar navbar-default" style="height:50px;">
    	<div class="container" style="height:120px;">
      		<div class="navbar-header">
        		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      			<p class="logo_box"><a href="javascript:;"><img src="../resources/home/shouye/images/2.jpg"  class="logo" alt=""/></a></p>
      		</div>
      	<div id="navbar" class="navbar-collapse collapse">
       		<ul class="nav navbar-nav navbar-nav-c">
          		<li><a href="../home/index">首页</a></li>
          		<li><a href="../system/login" target="_blank">登陆后台</a></li>
        	</ul>
      	</div>
     	</div>
	</nav>
</header>