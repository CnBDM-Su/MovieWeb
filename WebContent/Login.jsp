<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>user login</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/style2-login.css" rel="stylesheet" type="text/css" />
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="Homepge.jsp">首页</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
           <!-- <li class="active"><a href="#">首页</a></li>-->
            <li><a href="#about">国内电影</a></li>
            <li><a href="#about">国外电影</a></li>
            <li><a href="#about">喜剧</a></li>
            <li><a href="#about">动作</a></li>
            <li><a href="#about">爱情</a></li>
            <li><a href="#about">科幻</a></li>
            <li><a href="#about">悬疑</a></li>
            <li><a href="#about">惊悚</a></li>
            <li><a href="#contact">犯罪</a></li>
            <li><a href="#about">历史</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="Register.jsp">注册</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="Login.jsp">登录</a></li>
          </ul>
          
        </div><!--/.nav-collapse -->
      </div>
</nav>

<div class="main" >
  <div class="container container-custom">
    <div class="wrap-login">  
      <div class="login-user ">
        <div class="login-part">
          <h3> 账号登录</h3>
          <div class="user-info">
            <div class="user-pass">
              <form id="fm1" action="LoginServlet.do" method="post">
                <ul>
                  <li><input id="username" class="user-name" type="text" name="username" tabindex="1" placeholder="输入账号" value=""/></li>
                  <li><input id="password" class="pass-word" type="password" name="password" tabindex="2" placeholder="输入密码" autocomplete="off" value=""/></li>
                  <li>${message }</li>
                  <li><input id="logining" class="login-btn" type="submit" name="logining" tabindex="6" accesskey="l" value="登录"></li>                
               </ui>
              </form>
              <form action="AdminLoginServlet.do" method="post">
              <input id = "adminlogining" class= "login-btn" type="submit" tabindex= "6" value ="管理员登录">
              </form>
            </div>
          </div>
          <div class="line"></div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

</body>
</html>
