<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- TemplateBeginEditable name="doctitle" -->
<title>user register</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/style3-reg.css" rel="stylesheet" type="text/css" />
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
          <a class="navbar-brand" href="Homepage.jsp">首页</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
           <!-- <li class="active"><a href="#">首页</a></li>-->
            <li><a href="#about">国内电影</a></li>
            <li><a href="Classify.jsp">国外电影</a></li>
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
<div class="main">
  <div class="container container-custom">
    <div class="wrap-reg">  
      <div class="reg-user col-xs-12 col-sm-6 col-md-5 col-lg-5">
        <div class="reg-part">
          <h1>欢迎加入iMovie</h1>
          <div class="user-info">
            <div class="user-pass">
              <form name="lzform" method="post" action="LoginServlet.do">
                <div class="user-id">
                  <label>请输入ID</label>
                  <input id="user_id" class="basic-input" name="alias" maxlength="60" tabindex="1" value="" type="text" />
                </div>
                <div class="user-password">
                    <label>请输入密码</label>
                    <input id="password" class="basic-input" name="password" maxlength="20" tabindex="2" type="password" />
                </div>
                <div class="re-input">
                    <label>请再次输入密码</label>
                    <input id="password" class="basic-input" name="password" maxlength="20" tabindex="3" type="password" />
                </div>
                <div class="ensure-error">
                   <span class="error-icon"></span>
                   <span id="error-message"></span>
                </div>
                <div class="username">
                   <label>请设置昵称</label>
                   <input id="name" class="basic-input" name="name" maxlength="15" tabindex="4" value="" type="text" />
                </div>
                <div class="submit-btn">
                   <input id="button" class="btn-submit" name="register" value="注册" tabindex="5" accesskey="l" type="submit" />
                </div>
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