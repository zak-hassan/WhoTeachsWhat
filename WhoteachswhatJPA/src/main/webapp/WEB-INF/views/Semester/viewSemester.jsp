<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Manage Users - Admin Panel</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<link rel="shortcut icon" href="favicon.ico" />
<link rel="apple-touch-icon" href="iosicon.png" />
<!--    DEVELOPMENT LESS -->
<!--          <link rel="stylesheet/less" href="static/css/photon.less" media="all" />
        <link rel="stylesheet/less" href="static/css/photon-responsive.less" media="all" /> -->
<!--    PRODUCTION CSS -->
<link rel="stylesheet" href="static/css/css/photon.css" media="all" />
<link rel="stylesheet" href="static/css/css/photon-pt2.css" media="all" />

<link rel="stylesheet" href="static/css/css/photon-responsive.css"
	media="all" />

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


<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/jquery-ui.min.js"></script>

<script type="text/javascript"
	src="static/js/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript"
	src="static/js/plugins/modernizr.custom.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.pnotify.min.js"></script>
<script type="text/javascript" src="static/js/plugins/less-1.3.1.min.js"></script>
<script type="text/javascript" src="static/js/plugins/xbreadcrumbs.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.maskedinput-1.3.min.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.autotab-1.1b.js"></script>
<script type="text/javascript" src="static/js/plugins/charCount.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.textareaCounter.js"></script>
<script type="text/javascript" src="static/js/plugins/elrte.min.js"></script>
<script type="text/javascript" src="static/js/plugins/elrte.en.js"></script>
<script type="text/javascript" src="static/js/plugins/select2.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery-picklist.min.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="static/js/plugins/additional-methods.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.form.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.metadata.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.mockjax.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.tagsinput.min.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.rating.pack.js"></script>
<script type="text/javascript" src="static/js/plugins/farbtastic.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.timeentry.min.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.jstree.js"></script>
<script type="text/javascript"
	src="static/js/plugins/dataTables.bootstrap.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.mousewheel.min.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.mCustomScrollbar.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.flot.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.flot.stack.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.flot.pie.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.flot.resize.js"></script>
<script type="text/javascript"
	src="static/js/plugins/raphael.2.1.0.min.js"></script>
<script type="text/javascript"
	src="static/js/plugins/justgage.1.0.1.min.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.qrcode.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.clock.js"></script>
<script type="text/javascript"
	src="static/js/plugins/jquery.countdown.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.jqtweet.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript"
	src="static/js/plugins/bootstrap-fileupload.min.js"></script>
<script type="text/javascript"
	src="static/js/plugins/prettify/prettify.js"></script>
<script type="text/javascript"
	src="static/js/plugins/bootstrapSwitch.js"></script>
<script type="text/javascript" src="static/js/plugins/mfupload.js"></script>
<script type="text/javascript" src="static/js/common.js"></script>
<script type="text/javascript"
	src="static/js/bootRestful/bootrestful.js"></script>
</head>
<body class="body-inner">
	<div class="btn-toolbar btn-mobile-menus">
		<button class="btn btn-main-menu"></button>
		<button class="btn btn-user-menu">
			<i class="icon-logo"></i>
		</button>
	</div>
	<!-- Navigation starts -->
	<jsp:include page="../includes/navigation-template.jsp" />
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
        
    /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding a user
     
   */
    
   var validateNewUser= function() {
   	$.post("api/account",{ username: document.getElementById("username").value, 
   		accessLevel: document.getElementById("accessLevel").selectedIndex +1
   	   	})
   		.done(function(data) {
       		console.log("AJAX RETURNED"+JSON.stringify(data));
       		
       		if (data.success === "true") {
       			// Success message
       			$("#addUser").modal('hide');
       			$.pnotify({
					title : 'New User Added',
					type : 'info',
					text : 'Added new user !'
				});
       		}
   		});
	return	false;
   };


   var suspendUser= function(id,uname) {
	   	$.post("api/account/"+id,{ username: uname, 
	   		accessLevel: 0  // 1 means suspended noaccess
	   	   	})
	   		.done(function(data) {
	       		console.log("AJAX RETURNED"+JSON.stringify(data));
	       if (data.success === "true") {
       			// Success message
       			//$("#addUser").modal('hide');
       			$.pnotify({
					title : 'User :' + uname,
					type : 'info',
					text : 'User has been suspended'
				});
       		}
   		});
		return	false;
	   };

	   var deleteUser= function(id,uname) {
		   	$.ajax({type:"DELETE", 
			   	url : "api/account/"+id,
			   	data : null,
			   	cache : false,
			   	success : function(data){
		       		if (data.success === "true") {
	       			$.pnotify({
						title : 'User :' + uname,
						type : 'info',
						text : 'User has been deleted'
					});
				  	 // Reload so the delete user is gone..
	       			location.reload();
			   	}
  		   	  }
		   	});
	   };	   

	var updateForm=function(uname,ac_level){
			$("#up_username").val(uname);
			$("#up_accessLevel").val(ac_level);
		};											

		var setViewSummary=function(uname, role){
			$("#userSummary").html("<b>Username:</b> "+uname+" <br /> <b>Role:</b> "+role);
			$("#viewUser").modal('show');
			
		}
</script>
	<div class="wrapper">
		<div class="breadcrumb-container">
			<ul class="xbreadcrumbs">
				<li><a href="dashboard.html"> <i class="icon-photon home"></i>
				</a></li>
				<li><a href="#">Admin Panel</a></li>
				<li class="current"><a href="Anil_ManageUsers.html">Manage
						Users</a></li>
			</ul>
		</div>
		<header>
			<i class="icon-big-notepad"></i>
			<h2>
				<small>Manage Users</small>
			</h2>
			<h3>
				<small>Add, Delete and Suspend users</small>
			</h3>
		</header>
		<form method="post" action="ajaxAddUser" id="ManageUsersForm"
			onsubmit="return validateNewUser();" class="form-horizontal">
			<div class="container-fluid">
				<!-- START OF NEW CONTENT -->

				<!-- http://getbootstrap.com/components/ -->

				<!--Sortable Non-responsive Table begin-->

				<style type="text/css">
td.align {
	text-align: right;
}

td {
	vertical-align: middle;
}
</style>

				<div class="row-fluid">
					<div class="span12">
						<table class="table table-striped" id="tableSortable">
							<thead>
								<tr>
								<tr>
									<th>#</th>
									<th>User(s)</th>
									<th width="25%" style="text-align: right">Operation(s)</th>
								</tr>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${allUsers }" var="users">
									<tr>

										<td>${users.getUserId() }</td>

										<td><label><a onclick=setViewSummary('${users.getUsername() }',$("#accessLevel").children()['${users.accessLevel.getAccessId()}'].innerText)>${users.getUsername() }</a></label></td>
										<td class="align"><a
											onclick="suspendUser('${users.getUserId() }', ' ${users.getUsername() } ')">Suspend</a>
											| <a
											onclick="deleteUser('${users.getUserId() }', ' ${users.getUsername() } ')">Delete</a>
											| <a
											onclick="updateForm('${users.getUsername() }',${users.accessLevel.getAccessId()+1} )"
											data-toggle="modal" data-target="#updateUser">Permissions</a>
										</td>
									</tr>

								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

				<!--Sortable Non-responsive Table end-->

				<script>

					   $(document).ready(function() {

						   $('#tableSortable, #tableSortableRes, #tableSortableResMed').dataTable( {

							   "sPaginationType": "bootstrap",

							   "fnInitComplete": function(){

								   $(".dataTables_wrapper select").select2({

									   dropdownCssClass: 'noSearch'

								   });

							   }

						   });

						   //                            $("#simpleSelectBox").select2({

						   //                                dropdownCssClass: 'noSearch'

						   //                            }); 

					   });

					</script>



				<!-- END OF NEW CONTENT-->
			</div>
			<!-- end container -->
		</form>
		<!-- Button trigger modal -->
		<button class="btn btn-primary btn-lg" data-toggle="modal"
			data-target="#addUser">Add user</button>

		<!-- Modal -->
		<div class="modal fade" id="addUser" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Add User</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="ManageUsersForm" class="form-horizonatal">
							<div class="input-group">
								<span class="input-group-addon">User Name: </span><br /> <input
									type="text" class="form-control" name="username" id="username"
									placeholder="Username" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Access Level:</span> <br /> <select
									class="form-control" id="accessLevel">
									<c:forEach items="${allRoles }" var="roles">
									<option value="${roles.getAccessId() }">${roles.getAccessName() }</option>
									</c:forEach>
								</select>
							</div>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="submit" onclick="validateNewUser();"
								class="btn btn-primary">Save changes</button>

						</form>


					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>


		<!--  END OF ADD MODAL -->


		<!-- Button trigger modal -->
		<button class="btn btn-primary btn-lg" data-toggle="modal"
			data-target="#updateUser">Update user</button>

		<!-- Modal -->
		<div class="modal fade" id="updateUser" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Set User Permissions</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="ManageUsersForm" class="form-horizonatal">
							<div class="input-group">
								<span class="input-group-addon">User Name: </span><br /> <input
									type="text" class="form-control" name="username"
									id="up_username" placeholder="Username" />
							</div>

							<div class="input-group">
								<span class="input-group-addon">Access Level:</span> <br /> <select
									class="form-control" id="up_accessLevel">
							<c:forEach items="${allRoles }" var="roles">
									<option value="${roles.getAccessId() }">${roles.getAccessName() }</option>
									</c:forEach>
								</select>
							</div>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="submit" onclick="validateNewUser();"
								class="btn btn-primary">Save changes</button>

						</form>


					</div>
					<div class="modal-footer">
					</div>
				</div>
			</div>
		</div>


		<!--  END OF ADD MODAL -->






		<!-- Button trigger modal -->
		<button class="btn btn-primary btn-lg" data-toggle="modal"
			data-target="#viewUser">View User</button>

		<!-- Modal -->
		<div class="modal fade" id="viewUser" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">View User</h4>
					</div>
					<div class="modal-body">

						<div id="userSummary"></div>


					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>



	</div>
</body>
</html>