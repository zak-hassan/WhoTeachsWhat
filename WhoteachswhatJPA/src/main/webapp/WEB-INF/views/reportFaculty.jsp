<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Report Faculty</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
	<link rel="shortcut icon" href="favicon.ico" />
	<link rel="apple-touch-icon" href="iosicon.png" />
	<!--    DEVELOPMENT LESS -->
	<!--          <link rel="stylesheet/less" href="static/css/photon.less" media="all" />
		<link rel="stylesheet/less" href="static/css/photon-responsive.less" media="all" /> -->
		<!--    PRODUCTION CSS -->
		<link rel="stylesheet" href="static/css/css/photon.css" media="all" />
		<link rel="stylesheet" href="static/css/css/photon-pt2.css" media="all" />

		<link rel="stylesheet" href="static/css/css/photon-responsive.css" media="all" />

		<!--[if IE]>
			<link rel="stylesheet" type="text/css" href="static/css/css_compiled/ie-only-min.css" />
        

			<![endif]-->

			<!--[if lt IE 9]>
				<link rel="stylesheet" type="text/css" href="static/css/css_compiled/ie8-only-min.css" />
				<script type="text/javascript" src="static/js/plugins/excanvas.js"></script>
				<script type="text/javascript" src="static/js/plugins/html5shiv.js"></script>
				<script type="text/javascript" src="static/js/plugins/respond.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/fixFontIcons.js"></script>
				<![endif]-->

        
				<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
				<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/jquery-ui.min.js"></script>

				<script type="text/javascript" src="static/js/bootstrap/bootstrap.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/modernizr.custom.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.pnotify.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/less-1.3.1.min.js"></script>        
				<script type="text/javascript" src="static/js/plugins/xbreadcrumbs.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.maskedinput-1.3.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.autotab-1.1b.js"></script>
				<script type="text/javascript" src="static/js/plugins/charCount.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.textareaCounter.js"></script>
				<script type="text/javascript" src="static/js/plugins/elrte.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/elrte.en.js"></script>
				<script type="text/javascript" src="static/js/plugins/select2.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery-picklist.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.validate.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/additional-methods.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.form.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.metadata.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.mockjax.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.uniform.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.tagsinput.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.rating.pack.js"></script>
				<script type="text/javascript" src="static/js/plugins/farbtastic.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.timeentry.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.dataTables.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.jstree.js"></script>
				<script type="text/javascript" src="static/js/plugins/dataTables.bootstrap.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.mousewheel.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.mCustomScrollbar.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.flot.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.flot.stack.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.flot.pie.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.flot.resize.js"></script>
				<script type="text/javascript" src="static/js/plugins/raphael.2.1.0.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/justgage.1.0.1.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.qrcode.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.clock.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.countdown.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.jqtweet.js"></script>
				<script type="text/javascript" src="static/js/plugins/jquery.cookie.js"></script>
				<script type="text/javascript" src="static/js/plugins/bootstrap-fileupload.min.js"></script>
				<script type="text/javascript" src="static/js/plugins/prettify/prettify.js"></script>
				<script type="text/javascript" src="static/js/plugins/bootstrapSwitch.js"></script>
				<script type="text/javascript" src="static/js/plugins/mfupload.js"></script>

				<script type="text/javascript" src="static/js/common.js"></script>
<script type="text/javascript" src="static/js/bootrestful.js"></script>
			</head>

			<body class="body-inner">
            
				<div class="btn-toolbar btn-mobile-menus">
					<button class="btn btn-main-menu"></button>
					<button class="btn btn-user-menu"><i class="icon-logo"></i></button>
				</div>
	
				<!-- Navigation Starts -->
				<jsp:include page="navigation-template.jsp" />
				<!-- Navigation ends -->     
				<script>
				$(function(){
					setTimeout(function(){
						$('.nav-fixed-topright').removeAttr('style');
					}, 300);
        
					$(window).scroll(function(){
						if($('.breadcrumb-container').length){
							var scrollState = $(window).scrollTop();
							if (scrollState > 0) $('.nav-fixed-topright').addClass('nav-released');
							else $('.nav-fixed-topright').removeClass('nav-released')
						}
					});
					$('.user-sub-menu-container').on('click', function(){
						$(this).toggleClass('active-user-menu');
					});
					$('.user-sub-menu .light').on('click', function(){
						if ($('body').is('.light-version')) return;
						$('body').addClass('light-version');
						setTimeout(function() {
							$.cookie('themeColor', 'light', {
								expires: 7,
								path: '/'
							});
						}, 500);
					});
					$('.user-sub-menu .dark').on('click', function(){
						if ($('body').is('.light-version')) {
							$('body').removeClass('light-version');
							$.cookie('themeColor', 'dark', {
								expires: 7,
								path: '/'
							});
						}
					});
				});
				</script>
				<div class="wrapper" style="margin-left:30px;">
					<div class="breadcrumb-container">
						<ul class="xbreadcrumbs">
							<li>
								<a href="dashboard.html">
									<i class="icon-photon home"></i>
								</a>
							</li>
							<li>
								<a href="#">Manage Faculty</a>
								<ul class="breadcrumb-sub-nav">
									<li>
										<a href="#">Manage Courses</a>
									</li>
									<li>
										<a href="#">Manage Program </a>
									</li>
									<li>
										<a href="#">Generate Reports</a>
									</ul>
								</li>
								<li class="current">
									<a href="javascript:;">View Faculty</a>
								</li>
							</ul>
						</div>            <header>
							<i class="icon-big-notepad"></i>
							<h2><small>View Faculty</small></h2>
							<h3><small>You can view faculty members.</small></h3>
						</header>
						<form class="form-horizontal">
							<div class="container-fluid  offset4 span8">

								<div class="form-legend" id="Input_Field">View faculty members that where created</div>

								<!--Input Field begin-->
								<div class="control-group row-fluid">
									<div class="container-fluid">

										<!--Basic Non-responsive Table begin-->
										<div class="row-fluid">
											<div class="span12">
												<table class="table table-striped">
													<thead class="">
														<tr>
															<th>#</th>
															<th>First Name</th>
															<th>Last Name</th>
															<th>Status</th>
															<th>Action</th>
																	   
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>1</td>
															<td>Mark</td>
															<td>Otto</td>
															<td>Full-Time</td>
															<td>
																<button class="btn btn-danger">Delete</button>
																<button class="btn btn-success">Update</button>
																<button class="btn btn-info">View</button>
															</td>
														</tr>
														<tr>
															<td>2</td>
															<td>Angelica</td>
															<td>Otto</td>
															<td>Full-Time</td>
															<td>
																<button class="btn btn-danger">Delete</button>
																<button class="btn btn-success">Update</button>
																<button class="btn btn-info">View</button>
															</td>
		
														</tr>
														<tr>
															<td>3</td>
															<td>Magdelena</td>
															<td>von Thornton</td>
															<td>Full-Time</td>
		
															<td>
																<button class="btn btn-danger">Delete</button>
																<button class="btn btn-success">Update</button>
																<button class="btn btn-info">View</button>
															</td>
		
														</tr>
														<tr>
															<td>4</td>
															<td>Larry</td>
															<td>the Bird</td>
		
															<td>Full-Time</td>
															<td>
																<button class="btn btn-danger">Delete</button>
																<button class="btn btn-success">Update</button>
																<button class="btn btn-info">View</button>
															</td>
		
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<!--Basic Non-responsive Table end-->

									</div>
								</div>
								<!--Input Field end-->
						


							</div><!-- end container -->



						</form>
					</div>
				</body>
				</html>
