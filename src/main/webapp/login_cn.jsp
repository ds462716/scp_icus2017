<%@page contentType="text/html;charset=utf-8" language="java"%>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ICUS2017</title>
<link rel="stylesheet" href="<%=path%>/static/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=path%>/static/css/flexslider.css">
<link rel="stylesheet" href="<%=path%>/static/css/jquery.fancybox.css">
<link rel="stylesheet" href="<%=path%>/static/css/responsive.css">
<link rel="stylesheet" href="<%=path%>/static/css/animate.min.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/style4.css" />
<link rel="stylesheet" href="<%=path%>/static/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=path%>/static/css/main_cn.css">
<script type="text/javascript">
	var app = {
		ctx : '<%=path%>',
		curl : window.location.href,
		user : {
			id : '${user.id}'/1,
			name : '${user.cnname}'
		},
		register : {
			id : '${register.id}'/1,
      	bmflag : '${register.bmflag}'/1,
			username : '${register.username}',
			email : '${register.email}',
			nickname : '${register.nickname}',
			telphone : '${register.telphone}',
			sex : '${register.sex}',
			job : '${register.job}',
			company : '${register.company}',
			message : '${register.message}'
		},
	    lunwen : {
	      id : '${lunwen.id}'/1,
	      filename:'${lunwen.filename}',
	      comments:'${lunwen.comments}',
	      type:'${lunwen.type}'
	    },
	    nofile : '${param.nofile}',
	    errormsg : '${errormsg}',
        language:1
	}
</script>
</head>

<body>
<!-- header section -->
<!-- 头部模块 -->
<%@include file="/inc/headbar_cn.jsp" %>
<%--<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<!--
            <a class="navbar-brand" href="#topWrap">
                <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-cloud fa-stack-1x fa-inverse"></i>
                </span>
                e-Sciences+<span class="title"> 会议平台</span>
            </a>
            -->
		</div>
		<div class="collapse navbar-collapse appiNav">
			<ul class="nav navbar-nav">
				<li><a href="#Home">首页</a></li>
				<li><a href="#callForPapers">征文通知 </a></li>
				<li><a href="#workshop">研讨会</a></li>
				<li><a href="#Keynote_Speakers">主题报告</a></li>
				<li><a href="#Invited_Sessions">特邀报告</a></li>
				<li><a href="#Submission">投稿</a></li>
				<li><a href="#committee">组织架构</a></li>
				<li><a href="#Fee">注册费</a></li>
				<li><a href="#Download">资料下载</a></li>
				<li><a href="#Venue">会场</a></li>
				<li id="registerInfo">
					<div class="btn-group">
						<button class="btn btn-primary" onclick="javascript:registerFormFadeIn();">注册</button>
						<button class="btn btn-warning" onclick="javacript:loginFormFadeIn();">登录</button>
						<button class="btn btn-danger" onclick="javascript:indexEn();" style="padding:1px 16px;"> EN </button>
					</div>
				</li>
			</ul>
		</div><!--/.nav-collapse -->
	</div>
</div>--%>
<!-- header section --> 
<!-- contact section -->
<section id="contact" class="section">
  	<div class="container login-form">
		<div class="section-header">
			<h2 class="wow fadeInDown animated">登录</h2>
	        <p class="wow fadeInDown animated"><!-- 即刻登录，管理您的会议资源。 --></p>
    	</div>
    	<div class="row wow fadeInUp animated">
			<form id="loginForm" action="<%=path%>/auth.do?method=frontLogin" method="post">
			<div class="col-sm-8 col-sm-offset-2">
				<div class="inputContainer">
				<label>邮箱：</label>
					<input type="email" name="email" id="login_email" value="" class="form-control" autocomplete="off" placeholder="Email 地址"/>
				</div>
			</div>
			<div class="col-sm-8 col-sm-offset-2">
				<div class="inputContainer">
				<label>密码：</label>
					<input type="password" name="password" id="login_password" value="" class="form-control" autocomplete="off" placeholder="密码"/>
					<input type="hidden" name="language" id="language" value="1" />
				</div>
			</div>
			<div class="col-sm-8 col-sm-offset-2">
				<div class="col-sm-6">
					<a href="forgotPwd_cn.jsp">忘记密码？</a>
				</div>
				<div class="col-sm-6">
					<a class="pull-right" href="javascript:;" onclick="javascript:registerFormFadeIn_cn();">会议注册</a>
				</div>
			</div>
			<div class="col-sm-8 col-sm-offset-2">
        		<div class="alert alert-warning" id="alert-loginmsg" style="display:none">${errormsg}</div>
        			<button id="loginBtn" name="submit" type="submit" class="btn btn-primary btn-lg">登录</button>
			</div>
			</form>
		</div>
  	</div>

  	<div class="container baoming-form" style="display:none">
		<div class="section-header">
			<h2 class="wow fadeInDown animated">参会报名</h2>
	        <p class="wow fadeInDown animated">完善您的个人信息，现在就报名，我们将以邮件形式及时向您提供会议通知。</p>
    	</div>
    	<div class="row wow fadeInUp animated">
			<form id="baomingForm">
			<input name="id" type="hidden" />
			<div class="col-sm-4 col-sm-offset-2">
				<div class="inputContainer">
				<label>用户名（邮箱）：</label>
					<input type="text" name="email" id="b_email" value="" class="form-control" autocomplete="off" readonly="readonly" />
				</div>
			</div>
			<div class="col-sm-4">
				<div class="inputContainer">
				<label class="screen-reader-text">电话：</label>
					<input type="text" name="telphone" id="b_telphone" value="" class="form-control" autocomplete="off"  placeholder="手机 / 固话"/>
				</div>
			</div>
			<div class="col-sm-4 col-sm-offset-2">
				<div class="inputContainer">
				<label class="screen-reader-text">姓名：</label>
					<input type="text" name="nickname" id="b_nickname" value="" class="form-control" autocomplete="off"  placeholder="真实姓名 / 昵称"/>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="inputContainer">
				<label class="screen-reader-text">性别：</label>
				<div class="form-control" style="line-height:20px;">
					<label class="radio-inline">
					  <input type="radio" name="sex" id="b_sex1" value="男" checked> 男
					</label>
					<label class="radio-inline">
					  <input type="radio" name="sex" id="b_sex2" value="女"> 女
					</label>
				</div>
				</div>
			</div>
			<div class="col-sm-4 col-sm-offset-2">
				<div class="inputContainer">
				<label class="screen-reader-text">职务：</label>
					<input type="text" name="job" id="b_job" value="" class="form-control" autocomplete="off" placeholder="必填"/>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="inputContainer">
				<label class="screen-reader-text">单位：</label>
					<input type="text" name="company" id="b_company" value="" class="form-control" autocomplete="off" placeholder="必填"/>
				</div>
			</div>
			<div class="col-sm-8 col-sm-offset-2">
				<div class="inputContainer">
				<label class="screen-reader-text"><i>留言：</i></label>
					<textarea name="message" id="b_message" class="form-control" autocomplete="off"></textarea>
				</div>
			</div>
			<div class="col-sm-8 col-sm-offset-2">
				<button id="baomingBtn" name="submit" type="button" class="btn btn-primary btn-lg">确定报名</button>
			</div>
			</form>
		</div>
  	</div>
</section>
<!-- contact section --> 

<!-- footer -->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-xs-12 text-center">
        <p>Copyright &copy; 2016.<a target="_blank" href="http://www.esciences.com.cn/">  China e-Sciences tech Ltd. </a> 技术支持.
		<a href="<%=path%>/auth.do?method=logout" target="_blank" title="进入后台管理">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x"></i>
              <i class="fa fa-table fa-stack-1x fa-inverse"></i>
            </span>
          </a></p>
        <p class="social">
          <!-- <a href="#">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x"></i>
              <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
            </span>
          </a>
          <a href="#">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x"></i>
              <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
            </span>
          </a>
          <a href="#">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x"></i>
              <i class="fa fa-google-plus fa-stack-1x fa-inverse"></i>
            </span>
          </a> -->
        </p>
      </div>
    </div>
  </div>
</footer>
<!-- JS FILES --> 
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/ResourceService.js'></script>
<script src="<%=path%>/static/js/jquery.min.js"></script> 
<script src="<%=path%>/static/js/bootstrap.min.js"></script> 
<script src="<%=path%>/static/js/jquery.flexslider-min.js"></script> 
<script src="<%=path%>/static/js/jquery.fancybox.pack.js"></script> 
<script src="<%=path%>/static/js/retina.min.js"></script> 
<script src="<%=path%>/static/js/modernizr.js"></script> 
<script src="<%=path%>/static/js/main.js"></script> 
<script type="text/javascript" src="<%=path%>/static/js/jquery.contact.js"></script>

</body>
</html>