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
<script type="text/javascript" src="resources/adsantokhi_quote_string.js"></script>
<script type="text/javascript" src="views_ajax_requests/manageUsersAJAX.js"></script>
</head>
<body class="body-inner">
	<div class="btn-toolbar btn-mobile-menus">
		<button class="btn btn-main-menu"></button>
		<button class="btn btn-user-menu">
			<i class="icon-logo"></i>
		</button>
	</div>
	<!-- Navigation starts -->
	<jsp:include page="includes/navigation-template.jsp" />
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
    @Purpose: AJAX posting and validation for adding, updating, suspending and deleting a user
     
   */
   
   var addUser=function() {
		$.ajax({
			type: "POST",
			url: "api/account",
			data: { 
				username: document.getElementById("username").value, 
		   		accessLevel: document.getElementById("accessLevel").selectedIndex +1
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New User added',
						type : 'info',
						text : 'User ' + document.getElementById('username').value + ' has been added'
					});
		    		
		    		$.ajax({
		    			type: "GET",
		    			url: "api/account/"+data.id,
		    			data: null,
		    			dataType: "json",
		    			cache: false,
		    			success : function(user){
		    			
		    				var createA1 = document.createElement('a');
		    				var createA2 = document.createElement('a');
		    				var createA3 = document.createElement('a');

		    				var createA1Text = document.createTextNode("Update");
		    				var createA2Text = document.createTextNode("Delete");
		    				var createA3Text = document.createTextNode("Suspend");
		    				
		    				tempUsername = adsantokhi_quote_string(user.username);
		    				
		    				createA1.setAttribute('onclick', 'updateForm(' + data.id + ', ' + tempUsername + ', '
		    					+ user.accessLevelID +')');
		    				createA1.setAttribute('data-toggle', 'modal');
		    				createA1.setAttribute('data-target', '#updateUserModal');

		    				createA2.setAttribute('onclick', 'deleteUser(' + data.id + ', ' + tempUsername + ')');
		    				
		    				createA3.setAttribute('onclick', 'suspendUser(' + data.id + ', ' + tempUsername + ')');
		    				 
		    				createA1.appendChild(createA1Text);
		    				createA2.appendChild(createA2Text);
		    				createA3.appendChild(createA3Text);
		    				
		    				var updateLink = document.createElement("div");
		    				updateLink.appendChild(createA1);
		    				
		    				var deleteLink = document.createElement("div");
		    				deleteLink.appendChild(createA2);
		    				
		    				var suspendLink = document.createElement("div");
		    				suspendLink.appendChild(createA3);
		    				
		    				var newRow = $('#tableSortable').dataTable()
		    					.fnAddData( [data.id, user.username, user.accessLevel,
		    						updateLink.innerHTML + " | " + suspendLink.innerHTML + " | " + deleteLink.innerHTML] );
		    				
		    				var oSettings = $('#tableSortable').dataTable().fnSettings();
		    				var nTr = oSettings.aoData[ newRow[0] ].nTr;
		    				$('td', nTr)[3].setAttribute( 'class', 'align' );
		    			}
		    		});
		    		
		    		document.getElementById("addUserForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addUserModal').modal('hide');
			   	}
			}
		});
	};
	
	var updateUser=function() {
		$.ajax({
			type: "POST",
			url: "api/account/"+document.getElementById("up_userId").value,
			data: { 
				username: document.getElementById("up_username").value, 
		   		accessLevel: document.getElementById("up_accessLevel").selectedIndex+1
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New User added',
						type : 'info',
						text : 'User ' + document.getElementById('up_username').value + ' has been added'
					});
		    		
		    		document.getElementById("updateUserForm").reset(); // Form needs resetting due to never being submitted
		    		$('#updateUserModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};
	
	var suspendUser=function(id, username) {
		$.ajax({
			type: "POST",
			url: "api/account/"+id,
			data: { 
				username: username,
		   		accessLevel: 1 // One denotes no access 
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'User Suspended',
						type : 'info',
						text : 'User ' + username + ' has been suspended'
					});
			   	}
	    		location.reload();
			}
		});
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
    				location.reload();
  				}
   	  		}
 		});
	};	   

	var updateForm=function(userId, uname,ac_level){
		$("#up_userId").val(userId);
		$("#up_username").val(uname);
		$("#up_accessLevel").val(ac_level);
	};											

</script>
	<div class="wrapper">
		<div class="breadcrumb-container" style="width: 100%">
			<ul class="xbreadcrumbs">
				<li><a href="dashboard.html"> <i class="icon-photon home"></i>
				</a></li>
				<li><a href="#">Admin Panel</a></li>
				<li class="current"><a href="manageUsers">Manage
						Users</a></li>
			</ul>
		</div>
		<header>
			<i class="icon-big-notepad"></i>
			<h2>
				<small>Manage Users</small>
			</h2>
			<h3>
				<small>Add, Update, Delete and Suspend users</small>
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
									<th>#</th>
									<th>User(s)</th>
									<th>Role</th>
									<th width="25%" style="text-align: right">Operation(s)</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${allUsers }" var="users">
									<tr>

										<td>${users.getUserId() }</td>

										<td>${users.getUsername() }</td>
										
										<td>${users.accessLevel.getAccessName() }</td>
										
										<td class="align">
											 <a
												onclick="updateForm('${users.getUserId() }', '${users.getUsername() }',
													'${users.accessLevel.getAccessId()}' )"
												data-toggle="modal" data-target="#updateUserModal">Update
											</a>
											|
											<a
												onclick="suspendUser('${users.getUserId() }', ' ${users.getUsername() } ')">Suspend
											</a>
											| 
											<a
												onclick="deleteUser('${users.getUserId() }', ' ${users.getUsername() } ')">Delete
											</a>
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
			data-target="#addUserModal">Add user</button>

		<!-- Modal -->
		<div class="modal fade" id="addUserModal" tabindex="-1" role="dialog"
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
						<form role="form" id="addUserForm" class="form-horizonatal">
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
							<button type="button" onclick="addUser();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF ADD MODAL -->

		<!-- Modal -->
		<div class="modal fade" id="updateUserModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Update User</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="updateUserForm" class="form-horizonatal">
							<div class="input-group">
								<input type="hidden" class="form-control" name="up_userId" id="up_userId" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">User Name: </span><br /> <input
									type="text" class="form-control" name="up_username" id="up_username" />
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
							<button type="button" onclick="updateUser();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer">
					</div>
				</div>
			</div>
		</div>

		<!--  END OF UPDATE MODAL -->

		<!-- Modal -->
		<div class="modal fade" id="viewUserModal" tabindex="-1" role="dialog"
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
