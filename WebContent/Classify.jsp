<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>分类电影</title>
<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<link rel="stylesheet" href="css/baguetteBox.min.css">
 <link href="bootstrap.min.css" rel="stylesheet" type="text/css" />
 <link rel="stylesheet" type="text/css" href="css/page.css">
<link rel="stylesheet" href="css/style6-class.css">
	<style>
		.jq22-demo{ text-align: center; margin-top: 30px; }
		.jq22-demo a{ padding-left: 20px; padding-right: 20px; }
                .pageTest{ width: 1000px; height: 50px; margin-top: 100px;    }
                .activP{
                    background-color: #367fa9!important;
                    color: #fff!important;    }
	</style>
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
<div class="htmleaf-container">
		<div class="container gallery-container">
		    <div class="nav_wrap">
              <div class="nav_secondwrap">
                <div class="nav_logo">
                   <a class="link" href="Homepage.jsp">imovie</a>
                </div>
                <div class="nav_search">
                  <form action="MovieTraceServlet.do" method="get"> 
                  <div class="container">
                    <div id="search">
                      <label for="search"></label>
                      <input type="text" style="width:500px;height:40px;" name="q" size="22" maxlength="60" placeholder="搜索电影\影人" value=""                       autocomplete="off" class="input-box"/>
                      <input class="button" type="submit" value="搜索" />
                    </div>
                  </div>
                  </form>
                </div>
              </div>
            </div>
		    <div class="tz-gallery">
		        <div class="row">
		            <div class="col-sm-3 col-md-3">
		                <div class="thumbnail">
		                    <a class="lightbox" href="images/怦然心动.jpg">
		                        <img src="images/怦然心动.jpg" alt="怦然心动">
		                    </a>
		                    <div class="caption">
		                        <a class="momo" href="Movieinfo.jsp" class="">怦然心动</a>
   		                        <p> 导演: 罗伯·莱纳</p>
                                <p>编剧: 罗伯·莱纳 / 安德鲁·沙因曼 </p>
                                <p>主演: 玛德琳·卡罗尔/ 瑞贝卡·德·莫妮/安东尼·爱德华兹/ 约翰·马奥尼 </p>
                                <p>类型: 剧情 / 喜剧 / 爱情</p>
                                <p>制片国家/地区: 美国</p>
                                <p>语言: 英语</p>
                                <p>上映日期: 2010-07-26(好莱坞首映) / 2010-09-10(美国)</p>
                                <p>片长: 90分钟</p>
		                    </div>
		                </div>
		            </div>
		            <div class="col-sm-3 col-md-3">
		                <div class="thumbnail">
		                    <a class="lightbox" href="images/楚门的世界.jpg">
		                        <img src="images/楚门的世界.jpg" alt="楚门的世界">
		                    </a>
		                    <div class="caption">
		                        <h3>楚门的世界</h3>
		                        <p>导演: 彼得·威尔</p>
		                        <p>编剧: 安德鲁·尼科尔</p>
		                        <p>主演: 金·凯瑞 / 劳拉·琳妮 / 艾德·哈里斯 / 诺亚·艾默里奇 / 娜塔莎·麦克艾霍恩</p>
		                        <p>类型: 剧情 / 科幻</p>
		                        <p>制片国家/地区: 美国</p>
		                        <p>语言: 英语</p>
		                        <p>上映日期: 1998-06-05(美国)</p>
		                        <p>片长: 103 分钟</p>
		                    </div>
		                </div>
		            </div>
		            <div class="col-sm-3 col-md-3">
		                <div class="thumbnail">
		                    <a class="lightbox" href="images/布达佩斯大饭店.jpg">
		                        <img src="images/布达佩斯大饭店.jpg" alt="布达佩斯大饭店">
		                    </a>
		                    <div class="caption">
		                        <h3>布达佩斯大饭店</h3>
		                        <p>导演: 韦斯·安德森</p>
		                        <p>编剧: 韦斯·安德森 / 雨果·吉尼斯</p>
		                        <p>主演: 拉尔夫·费因斯/托尼·雷沃罗利/艾德里安·布洛迪</p>
		                        <p>类型: 剧情 / 喜剧 / 冒险</p>
		                        <p>制片国家/地区: 美国 / 德国 / 英国</p>
		                        <p>语言: 英语 / 法语 / 德语</p>
		                        <p>上映日期: 2014-02-06</p>
		                        <p>片长: 99分钟</p>
		                    </div>
		                </div>
		            </div>
		            <div class="col-sm-3 col-md-3">
		                <div class="thumbnail">
		                    <a class="lightbox" href="images/三块广告牌.jpg">
		                        <img src="images/三块广告牌.jpg" alt="三块广告牌">
		                    </a>
		                    <div class="caption">
		                        <h3>三块广告牌</h3>
		                        <p>导演: 马丁·麦克唐纳</p>
		                        <p>编剧: 马丁·麦克唐纳</p>
		                        <p>主演: 弗兰西斯·麦克多蒙德 / 伍迪·哈里森 / 山姆·洛克威尔 / 艾比·考尼什 / 卢卡斯·赫奇斯</p>
		                        <p>类型: 剧情 / 犯罪</p>
		                        <p>制片国家/地区: 英国 / 美国</p>
		                        <p>语言: 英语</p>
		                        <p>上映日期: 2018-03-02(中国大陆) / 2017-09-04(威尼斯电影节) / 2017-12-01(美国)</p>
		                        <p>片长: 115分钟</p>
		                    </div>
		                </div>
		            </div>
		            <div class="col-sm-3 col-md-3">
		                <div class="thumbnail">
		                    <a class="lightbox" href="images/告白.jpg">
		                        <img src="images/告白.jpg" alt="告白">
		                    </a>
		                    <div class="caption">
		                        <h3>告白</h3>
		                        <p>导演: 中岛哲也</p>
		                        <p>编剧: 中岛哲也 / 凑佳苗</p>
		                        <p>主演: 松隆子 / 冈田将生 / 木村佳乃 / 西井幸人 / 桥本爱 </p>
		                        <p>类型: 剧情 / 惊悚</p>
		                        <p>制片国家/地区: 日本</p>
		                        <p>语言: 日语</p>
		                        <p>上映日期: 2010-06-05(日本)</p>
		                        <p>片长: 106分钟</p>                                            
		                    </div>
		                </div>
		            </div>
		            <div class="col-sm-3 col-md-3">
		                <div class="thumbnail">
		                    <a class="lightbox" href="images/辩护人.jpg">
		                        <img src="images/辩护人.jpg" alt="辩护人">
		                    </a>
		                    <div class="caption">
		                        <h3>辩护人</h3>
		                        <p> 导演: 杨宇硕</p>
		                        <p>编剧: 杨宇硕 / 尹贤浩</p>
		                        <p>主演: 宋康昊 / 吴达洙 / 金英爱 / 郭度沅 / 任时完</p>
		                        <p>类型: 剧情</p>
		                        <p>制片国家/地区: 韩国</p>
		                        <p>语言: 韩语</p>
		                        <p>上映日期: 2013-12-18(韩国)</p>
		                        <p>片长: 127分钟</p>
		                    </div>
		                </div>
		            </div>
                    <div class="col-sm-3 col-md-3">
		                <div class="thumbnail">
		                    <a class="lightbox" href="images/房间.jpg">
		                        <img src="images/房间.jpg" alt="房间">
		                    </a>
		                    <div class="caption">
		                        <h3>房间</h3>
		                        <p>导演: 伦尼·阿伯拉罕森</p>
		                        <p>编剧: 艾玛·多诺霍</p>
		                        <p>主演: 布丽·拉尔森/雅各布·特伦布莱/琼·艾伦</p>
		                        <p>类型: 剧情 / 家庭</p>
		                        <p>制片国家/地区: 爱尔兰</p>
		                        <p>语言: 英语</p>
		                        <p>上映日期: 2015-09-04</p>
		                        <p>片长: 118分钟</p>
		                    </div>
		                </div>
		            </div>
                    <div class="col-sm-3 col-md-3">
		                <div class="thumbnail">
		                    <a class="lightbox" href="images/丹麦女孩.jpg">
		                        <img src="images/丹麦女孩.jpg" alt="丹麦女孩">
		                    </a>
		                    <div class="caption">
		                        <h3>丹麦女孩</h3>
		                        <p>导演: 汤姆·霍珀</p>
		                        <p>编剧: 露辛达·考克森/大卫·艾伯夫</p>
		                        <p>主演: 埃迪·雷德梅恩 / 艾丽西亚·维坎德 / 本·卫肖</p>
		                        <p>类型: 剧情 / 爱情 / 传记</p>
		                        <p>制片国家/地区: 英国 /比利时</p>
		                        <p>语言: 英语 / 法语 / 德语</p>
		                        <p>上映日期: 2015-09-05</p>
		                        <p>片长: 119分钟</p>
		                    </div>
		                </div>
		            </div>
		        </div>

		    </div>

		</div>
		
	</div>

        <div class="pageTest"></div>
	
	<script type="text/javascript" src="js/baguetteBox.min.js"></script>
	<script type="text/javascript">
		baguetteBox.run('.tz-gallery');
	</script>
        <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
        <script type="text/javascript" src="js/page.js"></script>
        <script type="text/javascript">
        $('.pageTest').page({
          leng: 66,//分页总数
          activeClass: 'activP' , //active 类样式定义
          clickBack:function(page){
            console.log(page)}
         })
        // $('.pageTest').setLength(10)
        </script>




<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>