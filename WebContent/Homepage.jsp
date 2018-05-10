<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>imovie</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/style1.css" rel="stylesheet" type="text/css" />
<style>
			
		</style>
		<script type="text/javascript">
			window.onload=function(){
				var odiv = document.getElementById('div1');
				var oul = odiv.getElementsByTagName('ul')[0];
				var ali = oul.getElementsByTagName('li');
				var spa = -2;				
				oul.innerHTML=oul.innerHTML+oul.innerHTML;
				oul.style.width=ali[0].offsetWidth*ali.length+'px';
				function move(){
					if(oul.offsetLeft<-oul.offsetWidth/4){
						oul.style.left='0';
					}
					if(oul.offsetLeft>0){
						oul.style.left=-oul.offsetWidth/4+'px'
					}
					oul.style.left=oul.offsetLeft+spa+'px';
				}
				var timer = setInterval(move,30)
				
				odiv.onmousemove=function(){clearInterval(timer);}
				odiv.onmouseout=function(){timer = setInterval(move,30)};
				document.getElementsByTagName('a')[14].onclick = function(){
					spa=-2;
				}
				document.getElementsByTagName('a')[15].onclick = function(){
					spa=2;
				}
			}
		</script>
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
  <!--导航条，包括电影首页、国内电影、国外电影、各主题电影-->
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
<div id="hot_movie_nav" class="s">
  <div class="a">
    <a href="#" class="l" id="left"><<</a>
    <a href="#" class="r" id="right">>></a>
  </div>
  <div class="head1">
    <h2>热门电影</h2>
  </div>
  <div class="zxc">
  <div id="div1">
	<ul>
	  <li class="ui-slide-item">
        <ul class="">
          <li class="poster">
            <a href=""><img src="img/阿甘正传.jpg"/></a>
          </li>
          <li class="title">
            <a href="https://movie.douban.com/subject/26430636/?from=showing" class="">阿甘正传</a>
          </li>
          <li class="rating">
            <span class="subject-rate">9.4</span>
          </li>
        </ul>
      </li>
      <li class="ui-slide-item">
        <ul class="">
          <li class="poster">
            <a href=""><img src="img/霸王别姬.jpg"/></a>
          </li>
          <li class="title">
            <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">霸王别姬</a>
          </li>
          <li class="rating">
                <span class="rating-star allstar35"></span><span class="subject-rate">9.5</span>
          </li>
        </ul>
      </li>
      <li class="ui-slide-item">
        <ul class="">
          <li class="poster">
            <a href=""><img src="img/芳华.jpg"/></a>
          </li>
          <li class="title">
            <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">芳华</a>
          </li>
          <li class="rating">
                <span class="rating-star allstar35"></span><span class="subject-rate">7.8</span>
          </li>
        </ul>
      </li>
      <li class="ui-slide-item">
        <ul class="">
          <li class="poster">
            <a href=""><img src="img/复仇者联盟3.jpg"/></a>
          </li>
          <li class="title">
            <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">复仇者联盟3</a>
          </li>
          <li class="rating">
                <span class="rating-star allstar35"></span><span class="subject-rate">8.5</span>
          </li>
        </ul>
      </li>
      <li class="ui-slide-item">
        <ul class="">
          <li class="poster">
            <a href=""><img src="img/两杆大烟枪.jpg"/></a>
          </li>
          <li class="title">
            <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">两杆大烟枪</a>
          </li>
          <li class="rating">
                <span class="rating-star allstar35"></span><span class="subject-rate">9.1</span>
          </li>
        </ul>
      </li>
      <li class="ui-slide-item">
        <ul class="">
          <li class="poster">
            <a href=""><img src="img/千与千寻.jpg"/></a>
          </li>
          <li class="title">
            <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">千与千寻</a>
          </li>
          <li class="rating">
                <span class="rating-star allstar35"></span><span class="subject-rate">9.3</span>
          </li>
        </ul>
      </li>
      <li class="ui-slide-item">
        <ul class="">
          <li class="poster">
            <a href=""><img src="img/三块广告牌.jpg"/></a>
          </li>
          <li class="title">
            <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">三块广告牌</a>
          </li>
          <li class="rating">
                <span class="rating-star allstar35"></span><span class="subject-rate">8.7</span>
          </li>
        </ul>
      </li>
      <li class="ui-slide-item">
        <ul class="">
          <li class="poster">
            <a href=""><img src="img/闪灵.jpg"/></a>
          </li>
          <li class="title">
            <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">闪灵</a>
          </li>
          <li class="rating">
                <span class="rating-star allstar35"></span><span class="subject-rate">8.0</span>
          </li>
        </ul>
      </li>
      <li class="ui-slide-item">
        <ul class="">
          <li class="poster">
            <a href=""><img src="img/摔跤吧！爸爸.jpg"/></a>
          </li>
          <li class="title">
            <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">摔跤吧！爸爸</a>
          </li>
          <li class="rating">
                <span class="rating-star allstar35"></span><span class="subject-rate">9.1</span>
          </li>
        </ul>
      </li>
      <li class="ui-slide-item">
        <ul class="">
          <li class="poster">
            <a href=""><img src="img/致命魔术.jpg"/></a>
          </li>
          <li class="title">
            <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">致命魔术</a>
          </li>
          <li class="rating">
                <span class="rating-star allstar35"></span><span class="subject-rate">8.8</span>
          </li>
        </ul>
      </li>
	</ul>
  </div>			
  </div>
</div>
<div id="new_movie_nav" class="z">
  <div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="tab" role="tabpanel">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab">最新热门电影</a></li>
                    <li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab">国内</a></li>
                    <li role="presentation"><a href="#Section3" aria-controls="messages" role="tab" data-toggle="tab">欧美</a></li>
                    <li role="presentation"><a href="#Section4" aria-controls="messages" role="tab" data-toggle="tab">日韩</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content tabs">
                    <div role="tabpanel" class="tab-pane fade in active" id="Section1">
                        <div id="div2">
                        	<ul>
                              <ul>
                           <li class="ui-slide-item">
                             <ul class="">
                                 <li class="poster">
                                   <a href=""><img src="img/昆池岩.jpg"/></a>
                                 </li>
                                 <li class="title">
                                   <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">昆池岩</a>                        
                                  
                                 </li>
                                 <li class="rating">
                                       <span class="rating-star allstar35"></span><span class="subject-rate">6.3</span>
                                 </li>
                             </ul>
                           </li>
                           <li class="ui-slide-item">
                               <ul class="">
                                 <li class="poster">
                                   <a href=""><img src="img/复仇者联盟3.jpg"/></a>
                                 </li>
                                 <li class="title">
                                   <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">复仇者联盟3</a>
                                 </li>
                                 <li class="rating">
                                     <span class="rating-star allstar35"></span><span class="subject-rate">8.5</span>
                                 </li>
                               </ul>
                           </li>
                           <li class="ui-slide-item">
                               <ul class="">
                                 <li class="poster">
                                   <a href=""><img src="img/红海行动.jpg"/></a>
                                 </li>
                                 <li class="title">
                                   <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">红海行动</a>
                                 </li>
                                 <li class="rating">
                                       <span class="rating-star allstar35"></span><span class="subject-rate">8.4</span>
                                 </li>
                               </ul>
                             </li>
                         </ul>
                         </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="Section2">
                       <div id="div3">
                         <ul>
                           <li class="ui-slide-item">
                             <ul class="">
                                 <li class="poster">
                                   <a href=""><img src="img/唐人街探案2.jpg"/></a>
                                 </li>
                                 <li class="title">
                                   <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">唐人街探案2</a>
                                 </li>
                                 <li class="rating">
                                       <span class="rating-star allstar35"></span><span class="subject-rate">6.9</span>
                                 </li>
                             </ul>
                           </li>
                           <li class="ui-slide-item">
                               <ul class="">
                                 <li class="poster">
                                   <a href=""><img src="img/妖猫传.jpg"/></a>
                                 </li>
                                 <li class="title">
                                   <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">妖猫传</a>
                                 </li>
                                 <li class="rating">
                                     <span class="rating-star allstar35"></span><span class="subject-rate">7.0</span>
                                 </li>
                               </ul>
                           </li>
                           <li class="ui-slide-item">
                               <ul class="">
                                 <li class="poster">
                                   <a href=""><img src="img/前任3：再见前任.jpg"/></a>
                                 </li>
                                 <li class="title">
                                   <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">前任3：再见前任</a>
                                 </li>
                                 <li class="rating">
                                       <span class="rating-star allstar35"></span><span class="subject-rate">5.6</span>
                                 </li>
                               </ul>
                             </li>
                         </ul>
                       </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="Section3">
                        <div id="div4">
                          <ul>
                            <li class="ui-slide-item">
                               <ul class="">
                                 <li class="poster">
                                   <a href=""><img src="img/请以你的名字呼唤我.jpg"/></a>
                                 </li>
                                 <li class="title">
                                   <a href="https://movie.douban.com/subject/26430636/?from=showing" class="">请以你的名字呼唤我</a>
                                 </li>
                                 <li class="rating">
                                   <span class="subject-rate">8.8</span>
                                 </li>
                               </ul>
                             </li>
                             <li class="ui-slide-item">
                               <ul class="">
                                 <li class="poster">
                                   <a href=""><img src="img/黑豹.jpg"/></a>
                                 </li>
                                 <li class="title">
                                   <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">黑豹</a>
                                 </li>
                                 <li class="rating">
                                       <span class="rating-star allstar35"></span><span class="subject-rate">6.6</span>
                                 </li>
                               </ul>
                             </li>
                             <li class="ui-slide-item">
                               <ul class="">
                                 <li class="poster">
                                   <a href=""><img src="img/水形物语.jpg"/></a>
                                 </li>
                                 <li class="title">
                                   <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">水形物语</a>
                                 </li>
                                 <li class="rating">
                                       <span class="rating-star allstar35"></span><span class="subject-rate">7.2</span>
                                 </li>
                               </ul>
                             </li>
                          </ul>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="Section4">
                       <div id="div5">
                         <ul>
                           <li class="ui-slide-item">
                             <ul class="">
                                 <li class="poster">
                                   <a href=""><img src="img/小森林.jpg"/></a>
                                 </li>
                                 <li class="title">
                                   <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">小森林</a>
                                 </li>
                                 <li class="rating">
                                       <span class="rating-star allstar35"></span><span class="subject-rate">7.2</span>
                                 </li>
                             </ul>
                           </li>
                           <li class="ui-slide-item">
                               <ul class="">
                                 <li class="poster">
                                   <a href=""><img src="img/杀人者的记忆法.jpg"/></a>
                                 </li>
                                 <li class="title">
                                   <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">杀人者的记忆法</a>
                                 </li>
                                 <li class="rating">
                                     <span class="rating-star allstar35"></span><span class="subject-rate">7.3</span>
                                 </li>
                               </ul>
                           </li>
                           <li class="ui-slide-item">
                               <ul class="">
                                 <li class="poster">
                                   <a href=""><img src="img/浪矢解忧杂货店.jpg"/></a>
                                 </li>
                                 <li class="title">
                                   <a onclick="moreurl(this, {from:'mv_a_tl'})" href="https://movie.douban.com/subject/26430636/?from=showing" class="">浪矢解忧杂货店</a>
                                 </li>
                                 <li class="rating">
                                       <span class="rating-star allstar35"></span><span class="subject-rate">7.2</span>
                                 </li>
                               </ul>
                             </li>
                         </ul>
                       </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    
</div>
<table class="table">
  <caption>电影推荐</caption>
  <thead>
    <tr>
      <th>推荐电影</th>
      <th>导演</th>
      <th>演员</th>
      <th>上映时间</th>
      <th>类型</th>
      <th>评分</th>
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
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
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
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="jquery.navBarScroll.js"></script>
<script>
    $(function(){
        $.navBarScroll({
            step:5,
            nav_li:'ul li'
        });
    });
</script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>