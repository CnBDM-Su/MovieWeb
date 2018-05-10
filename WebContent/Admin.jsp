<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style5-admin.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<title>administrator</title>
<base href="<%=basePath%>">
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

<div id="body" style="padding-top:15px">
    <!--modal要求放在html文件最前面-->
    <div class="container-fluid">
        <!--修改菜品modal弹窗-->   
       <div id="modify_movie_modal" class="modal fade" role="dialog">
     <div class="modal-dialog">
                <!--modal内容-->
       <div class="modal-content">
                    <!--modal头部-->
          <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal">&times;</button>
             <h4 class="modal-title text-center">修改电影</h4>
          </div>
          <form class="form-horizontal" action="MovieMdiServlet.do" method="post">
                        <!--modal主体-->
            <div class="form-group">
              <label class="control-label col-sm-3" for="movie_name_modal">电影名称：</label>
                <div class="col-sm-9">
                  <input required type="text" id="movie_name_modal" class="form-control" placeholder="电影名称">
                </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="year_modal">上映时间：</label>
                <div class="col-sm-9">
                  <input required type="text" id="year_modal" class="form-control" placeholder="上映时间">
                </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="type_modal">电影类型：</label>
                <div class="col-sm-9">
                  <input required type="text" id="type_modal" class="form-control" placeholder="电影类型">
                </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="pd_name_modal">导演：</label>
                <div class="col-sm-9">
                  <input required type="text" id="pd_name_modal" class="form-control" placeholder="导演">
                </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="actor_name_modal">演员：</label>
                <div class="col-sm-9">
                  <input required type="text" id="actor_name_modal" class="form-control" placeholder="演员">
                </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="movie_description_modal">电影简介：</label>
              <div class="col-sm-9">
                <textarea required id="movie_description_modal" class="form-control" rows="10" placeholder="电影简介"></textarea>
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="movie_price_modal">评分：</label>
              <div class="col-sm-9">
                <input required type="text" id="movie_price_modal" class="form-control" placeholder="评分">
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="movie_upload_img_modal">上传图片：</label>
              <div class="col-sm-9">
                <input type="text" id="movie_upload_img_modal" class="form-control" placeholder="待写">
              </div>
             </div>
                        <!--modal尾部-->
             <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
               <button type="submit" class="btn btn-warning" id="modify_movie_model_button" data-dismiss="modal">提交</button>
             </div>
             </form>
           </div>
         </div>
       </div>
    </div>
</div>

 <div class="container-fluid" id="movieId_#(movie.Did)">
   <div class="head">
    <p class="navhead">管理员界面</p>
   </div>
   <label>添加电影</label>
   <button type="submit" class="add_movie" data-toggle="modal" data-target="#add_movie_modal" data-id="#(movie.Did)">+</button>
   <div id="add_movie_modal" class="modal fade" role="dialog">
     <div class="modal-dialog">
                <!--modal内容-->
       <div class="modal-content">
                    <!--modal头部-->
          <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal">&times;</button>
             <h4 class="modal-title text-center">添加电影</h4>
          </div>
          <form class="form-horizontal" action="MovieAddServlet.do" method="post">
                        <!--modal主体-->
            <div class="form-group">
              <label class="control-label col-sm-3" for="movie_name_modal">电影名称：</label>
                <div class="col-sm-9">
                  <input required type="text" id="movie_name_modal" class="form-control" placeholder="电影名称">
                </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="year_modal">上映时间：</label>
                <div class="col-sm-9">
                  <input required type="text" id="year_modal" class="form-control" placeholder="上映时间">
                </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="type_modal">电影类型：</label>
                <div class="col-sm-9">
                  <input required type="text" id="type_modal" class="form-control" placeholder="电影类型">
                </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="pd_name_modal">导演：</label>
                <div class="col-sm-9">
                  <input required type="text" id="pd_name_modal" class="form-control" placeholder="导演">
                </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="actor_name_modal">演员：</label>
                <div class="col-sm-9">
                  <input required type="text" id="actor_name_modal" class="form-control" placeholder="演员">
                </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="movie_description_modal">电影简介：</label>
              <div class="col-sm-9">
                <textarea required id="movie_description_modal" class="form-control" rows="10" placeholder="电影简介"></textarea>
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="movie_price_modal">评分：</label>
              <div class="col-sm-9">
                <input required type="text" id="movie_price_modal" class="form-control" placeholder="评分">
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="movie_upload_img_modal">上传图片：</label>
              <div class="col-sm-9">
                <input type="text" id="movie_upload_img_modal" class="form-control" placeholder="待写">
              </div>
             </div>
                        <!--modal尾部-->
             <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
               <button type="submit" class="btn btn-warning" id="modify_movie_model_button" data-dismiss="modal">提交</button>
             </div>
             </form>
           </div>
         </div>
       </div>
</div>

<div class="container-fluid">
  <div class="passwordbtn">
    <button type="submit" class="modify_password" data-toggle="modal" data-target="#modify_password_modal" data-id="#(movie.Did)">修改密码</button>
   <div id="modify_password_modal" class="modal fade" role="dialog">
     <div class="modal-dialog">
                <!--modal内容-->
       <div class="modal-content">
                    <!--modal头部-->
          <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal">&times;</button>
             <h4 class="modal-title text-center">修改密码</h4>
          </div>
          <form class="form-horizontal" action="PasswordMdiServlet.do" method="get">
                        <!--modal主体-->
            <div class="form-group">
              <label class="control-label col-sm-3" for="origin_password">原密码：</label>
                <div class="col-sm-9">
                  <input required type="password" id="origin_password" class="form-control" placeholder="输入原密码">
                </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="new_password">新密码：</label>
                <div class="col-sm-9">
                  <input required type="password" id="new_password" class="form-control" placeholder="输入新密码">
                </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3" for="confirm_password">确认新密码：</label>
                <div class="col-sm-9">
                  <input required type="password" id="confirm_password" class="form-control" placeholder="重复输入密码">
                </div>
            </div>
                        <!--modal尾部-->
             <div class="modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
               <button type="submit" class="btn btn-warning" id="add_movie_model_button" data-dismiss="modal">提交</button>
             </div>
             </form>
           </div>
         </div>
       </div>
    </div>
</div>

<div class="container-fluid">
  <div class="nav_wrap">
  <div class="nav_secondwrap">
    <div class="nav_search">
      <form action="MovieTraceServlet.do" method="get">
        <!--<fieldset>-->
          <div class="container">
            <div id="search">
            <label for="search"></label>
            <input type="text" style="width:474px;height:32px;" name="q" size="20" maxlength="50" placeholder="搜索电影\影人" value="" autocomplete="off"             class="input-box"/>
            <input class="button" type="submit" value="搜索" />
            </div>
          </div>
        <!--</fieldset>-->
      </form>
    </div>
  </div>
   
   <div class="tab-content col-sm-10">
            <!--菜品追踪完成-->
     <div id="movies_trace" class=" tab-pane fade in active">
                <!--手风琴折叠-->
         <div id="dishes" class="panel-group">
                	#setLocal(num=0)
                	#for(movie:movies)
           <div class="panel panel-default" id="movieId_#(movie.Did)">
             <div class="panel-heading">
               <h4 class="panel-title">
                 <div class="panel-group">
                    <a data-toggle="collapse" data-parent="#movies" href="#movie_#(++num)">
                                      	#(movie.Dname)
                    </a>
                    <button type="submit" class="btn pull-right delete_movie" data-id="#(movie.Did)">删除</button>
                    <button type="submit" class="btn pull-right modify_movie" data-toggle="modal" data-target="#modify_movie_modal" data-id="#(movie.Did)">修改</button>
                  </div>
                </h4>
              </div>
              <div id="movie_#(num)" class="panel-collapse collapse #if(num==1) in #end">
                <div class="panel-body">
                  <c:if var="u" test="${!(empty userList)}">
				  <c:forEach items="${userList}" var="user">
                  <p>电影名字：#(movie.Cname)=${user.Moviename }</p>
                  <p>导演：#(movie.Pdname)=${user.Director }</p>
                  <p>演员：#(movie.Actorname)=${user.Performer }</p>
                  <p>上映时间：#(movie.Cyear)=${user.Releasetime }</p>
                  <p>分类：#(movie.Class)=${user.Type }</p>
                  <p>描述：#(movie.Ddescription)=${user.Description }</p>
                  <p>评分：#(movie.Dprice)=${user.Rate }</p>
                     </div>
                   </div>
                  </div>
                 </div>
             </div>
                	#end
           </div>
                <!--分页-->
					</c:forEach>
					</c:if>
					<jsp:include page="pages.jsp"></jsp:include>
		</div>
      </div>
</div>
</div>

<script type="text/javascript" src="js/admin.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

</body>

</html>