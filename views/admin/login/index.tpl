<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="微信管理系统" />
	<meta name="author" content="widuu" />
	<title>电梯微信管理系统</title>
	<link rel="stylesheet" href="http://fonts.useso.com/css?family=Arimo:400,700,400italic">
	<link rel="stylesheet" href="../static/admin/css/fonts/linecons/css/linecons.css">
	<link rel="stylesheet" href="../static/admin/css/fonts/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="../static/admin/css/bootstrap.css">
	<link rel="stylesheet" href="../static/admin/css/xenon-core.css">
	<link rel="stylesheet" href="../static/admin/css/xenon-forms.css">
	<link rel="stylesheet" href="../static/admin/css/xenon-components.css">
	<link rel="stylesheet" href="../static/admin/css/xenon-skins.css">
	<link rel="stylesheet" href="../static/admin/css/custom.css">
	<script src="../static/admin/js/jquery-1.11.1.min.js"></script>
	<!--[if lt IE 9]>
		<script src="../static/admin/js/html5shiv.min.js"></script>
		<script src="../static/admin/js/respond.min.js"></script>
	<![endif]-->
	
	
</head>
<body class="page-body login-page">
	<div class="login-container">
		<div class="row">
			<div class="col-sm-6">
				<script type="text/javascript">
					jQuery(document).ready(function($)
					{
						setTimeout(function(){ $(".fade-in-effect").addClass('in'); }, 1);
						$("form#login").validate({
							rules: {
								username: {
									required: true
								},
								
								passwd: {
									required: true
								}
							},
							messages: {
								username: {
									required: 'Please enter your username.'
								},
								passwd: {
									required: 'Please enter your password.'
								}
							},
							submitHandler: function(form)
							{
								show_loading_bar(70); 
								var opts = {
									"closeButton": true,
									"debug": false,
									"positionClass": "toast-top-full-width",
									"onclick": null,
									"showDuration": "300",
									"hideDuration": "1000",
									"timeOut": "5000",
									"extendedTimeOut": "1000",
									"showEasing": "swing",
									"hideEasing": "linear",
									"showMethod": "fadeIn",
									"hideMethod": "fadeOut"
								};
									
								$.ajax({
									url: "/admin/login",
									method: 'POST',
									dataType: 'json',
									data: {
										do_login: true,
										username: $(form).find('#username').val(),
										password: $(form).find('#passwd').val(),
									},
									success: function(resp)
									{
										show_loading_bar({
											delay: .5,
											pct: 100,
											finish: function(){
												resp = eval("(" + resp + ")");
												if(resp.status == 1)
												{
													window.location.href = "/admin/index";
												}else{
													toastr.error(resp.info, opts);
												}
											}
										});
									}
								});
							}
						});
						$("form#login .form-group:has(.form-control):first .form-control").focus();
					});
				</script>
				
				<div class="errors-container"></div>
				<form method="post"  role="form" id="login" class="login-form fade-in-effect">
					<div class="login-header">
						<a href="#" class="logo">
							<img src="../static/admin/images/logo1.png" alt="" width="160" />
						</a>
						<p>请输入帐号、密码登录管理控制台</p>
					</div>
					<div class="form-group">
						<label class="control-label" for="username">Username</label>
						<input type="text" class="form-control input-dark" name="username" id="username" autocomplete="off" />
					</div>
					<div class="form-group">
						<label class="control-label" for="passwd">Password</label>
						<input type="password" class="form-control input-dark" name="password" id="passwd" autocomplete="off" />
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-dark  btn-block text-center">
							<i class="fa-lock"></i>
							登 &nbsp;&nbsp;录
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="../static/admin/js/bootstrap.min.js"></script>
	<script src="../static/admin/js/xenon-toggles.js"></script>
	<script src="../static/admin/js/jquery-validate/jquery.validate.min.js"></script>
	<script src="../static/admin/js/TweenMax.min.js"></script>
	<script src="../static/admin/js/xenon-api.js"></script>
	<script src="../static/admin/js/toastr/toastr.min.js"></script>
	<!-- JavaScripts initializations and stuff -->
	<script src="../static/admin/js/xenon-custom.js"></script>
</body>
</html>