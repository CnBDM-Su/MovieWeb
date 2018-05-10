<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/style4-intro.css" rel="stylesheet" type="text/css" />
<title>电影介绍</title>
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
            <li><a href="classify.html">国外电影</a></li>
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
<div class="nav_wrap">
  <div class="nav_secondwrap">
    <div class="nav_logo">
      <a class="link" href="Homepage.jsp">imovie</a>
    </div>
    <div class="nav_search">
      <form action="MovieTraceServlet.do" method="get">
        <!--<fieldset>-->
          <div class="container">
            <div id="search">
            <label for="search"></label>
            <input type="text" style="width:500px;height:40px;" name="q" size="22" maxlength="60" placeholder="搜索电影\影人" value="" autocomplete="off"             class="input-box"/>
            <input class="button" type="submit" value="搜索" />
            </div>
          </div>
        <!--</fieldset>-->
      </form>
    </div>
  </div>
</div>
<!--搜索框-->
<div class="wrapper">
  <div class="content">
    <h1>
      <span property="v:itemreviewed"></span>
      <span class="year"></span>
    </h1>
    <div class="intro">
      <div class="article">
        <div  id="mainpic" class="">
          <a class="image" href=""></a>
        </div>
        <div id="info">
          <span>
            <span class="pl">导演</span>
            :
            <span class="attrs">
              <a href="" rel="v:directedBy"></a>
            </span>
          </span>
          <br />
          <span class="actor">
            <span class="pl">主演</span>
            :
            <span class="attrs">
              <span><a href="" rel="v:v:starring"></a>/</span>
              <span><a href="" rel="v:v:starring"></a>/</span>
              <span><a href="" rel="v:v:starring"></a>/</span>
              <span><a href="" rel="v:v:starring"></a>/</span>
              <span><a href="" rel="v:v:starring"></a>/</span>
            </span>
          </span>
          <br />
          <span class="pl">类型:</span>
          <span property="v:genre">/</span>
          <span property="v:genre">/</span>
          <span property="v:genre"></span>
          <br />
          <span class="pl">制片国家/地区:</span>
          <br />
          <span class="pl">语言:</span>
          <br />
          <span class="pl">上映日期：</span>
          <span property="v:initialReleaseDate" content=""></span>
          <br />
          <span class="pl">片长：</span>
          <span property="v:v:runtime" content=""></span>
          <br />
        </div>
      </div>
      <div class="related-info">
        <h2>
          <i class=""></i>
          :
        </h2>
        <div id="link-report" class="report">
          <span class="" property="v:summary"></span>
        </div>
      </div> 
      <div class="related-info2">
        <h2>
          <i class=""></i>
          :
        </h2>
        <div id="link-review" class="review">
          <span class="" property="v:summary"></span>
        </div>
      </div> 
    </div>
  </div>
</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>