<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Access List - Admin Panel</title>
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

    </head>

    <body class="body-inner">
            
    <div class="btn-toolbar btn-mobile-menus">
        <button class="btn btn-main-menu"></button>
        <button class="btn btn-user-menu"><i class="icon-logo"></i></button>
    </div>
<!-- Navigation starts -->    
<jsp:include page="navigation-template.jsp" />
<!-- Navigation end -->
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
        <div class="wrapper">
            <div class="breadcrumb-container">
    <ul class="xbreadcrumbs">
        <li>
            <a href="dashboard.html">
                <i class="icon-photon home"></i>
            </a>
        </li>
        <li>
            <a href="#">Admin Panel</a>
        </li>
		<li>
			<a href="Anil_ManageUsers.html">Manage Users</a>
		</li>
        <li class="current">
            <a href="Anil_AccessList.html">Permissions</a>
        </li>
    </ul>
</div>            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Access List</small></h2>
                <h3><small>Change who can access what</small></h3>
            </header>
            <form class="form-horizontal">
                <div class="container-fluid">
			<!-- START OF NEW CONTENT -->
			
				<!-- http://getbootstrap.com/components/ -->
				
					<div id="Simple_Multiple_Select_Box" class="control-group row-fluid">
						<div class="span2">
							<label class="control-label" for="simpleMulti">
								<div class="btn-group-vertical">
									<label for="check1">
										<input type="checkbox" name="user[]" value="Mary-Lynn" />
										Mary-Lynn
									</label>
									<label for="check1">
										<input type="checkbox" name="user[]" value="Peter McIntyre" />
										Peter McIntyre
									</label>
									<label for="check1">
										<input type="checkbox" name="user[]" value="Anil Santokhi" />
										Anil Santokhi
									</label>
									<label for="check1">
										<input type="checkbox" name="user[]" value="Scheduler" />
										Scheduler
									</label>
								</div>
							</label>
						</div> <!-- End span3 -->

						<div class="span2">
							<div class="controls">
								<select multiple name="simpleMulti" id="simpleMulti">
									<option value="Permission 1">Administrator</option>
									<option value="Permission 2">Level 1 Coordinator</option>
									<option value="Permission 3">Level 2 Coordinator</option>
									<option value="Permission 4">Scheduler</option>
									<option value="Permission 5">Webmaster</option>									
								</select>
							</div>
						</div>
					</div>
					<!--Simple Select Box end-->
					<br/>
					<div class="row-fluid">
						<div class="span2 offset4">
							<button type="button" class="btn btn-large btn-block btn-info">Save</button>
						</div>
						<div class="span2">
							<button type="button" class="btn btn-large btn-block">Cancel</button>
						</div>
					</div>
                        
					<br/><br/>
					 <!--Basic Responsive Table begin-->

					<div class="row-fluid">
						<div class="span12">
							<table class="table table-striped table-responsive">
								<thead class="">
									<tr>
										<th width="20%" style="font-weight: bold">Permission</th>
										<th width="80%" style="font-weight: bold">Definition</th>
									   </tr>
								   </thead>
								   <tbody>
									   <tr>
										   <td>Administrator</td>
										   <td>An administrator has no limits in their authority within the system. They are able to manage courses, programs, faculty, view all reports generated by the system and delegate courses per semester for faculty members. An adminstrator can access all system operations.</td>
									   </tr>
									   <tr>
										   <td>Level 1 Coordinator</td>
										   <td>A level 1 coordinator is able to view and update a course or program, manage faculty information (add, view, update and delete), complimentary hours and responsbilities. Addtionally they can view all reports generated by the system and delegate courses to faculty member per semester.</td>
									   </tr>
									   <tr>
										   <td>Level 2 Coordinator</td>
										   <td>A level 2 coordinator is able to view program, course and faculty information. Additionally they have access to all reports generated by the system.</td>
									   </tr>
									   <tr>
										   <td>Scheduler</td>
										   <td>A scheduler is able to view all courses and course sections asssigned to a faculty member.</td>
									   </tr>
									   <tr>
										   <td>Webmaster</td>
										   <td>A webmaster is able to view courses and programs and is able to add faculty to the system.</td>
									   </tr>
								   </tbody>
							   </table>
						   </div>
					   </div>

                       <!--Basic Responsive Table end-->
			<!-- END OF NEW CONTENT-->
                </div><!-- end container -->

            </form>
        </div>
        </body>
</html>
