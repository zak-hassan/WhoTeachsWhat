<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">
    <head>
	<title> Faculty - View </title>
	    <jsp:include page="../includes/static_includes.jsp" />
    </head>

    <body class="body-inner">
            
    <div class="btn-toolbar btn-mobile-menus">
        <button class="btn btn-main-menu"></button>
        <button class="btn btn-user-menu"><i class="icon-logo"></i></button>
    </div>
<!-- Navigation starts -->
<jsp:include page="../includes/menu.jsp" />
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

	function deleteDialog(){
		bootbox.dialog('<h3>Confirming</h3><br /> Are you sure you would like to delete this faculty member? <br /> <br /> <br /><button class="btn btn-danger btn-small"  onclick=\'deleteJob();\'><i class="icon-white icon-download-alt"></i> Confirm Delete </button><button class="btn btn-primary btn-small" onclick="closeAll();"><i class="icon-white icon-download-alt"></i> Cancel</button>');
	};

	function closeAll(){
		bootbox.hideAll();
	}
/*
 * 
	@RequestParam(value = "faculty_first_name", required = true) String faculty_first_name,
	@RequestParam(value = "faculty_last_name", required = true) String faculty_last_name,
	@RequestParam(value = "faculty_status", required = true) String faculty_status
 */
	var validateNewFaculty= function() {
	   	$.post("api/faculty",{ faculty_first_name : document.getElementById("fname").value, 
	   						   faculty_last_name : document.getElementById("lname").value,
	   						faculty_status : document.getElementById("status").selectedIndex+1 
				   	   	})
				   		.done(function(data) {
				       		console.log("AJAX RETURNED"+JSON.stringify(data));
				       		
	       		if (data.success === "true") {
	       			// Success message
	       			$("#add").modal('hide');
	       			$.pnotify({
						title : 'New User Added',
						type : 'info',
						text : 'Added new user !'
					});
	       		}
	   		});
 	   };


 	  var deleteFaculty= function(id,uname) {
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
	   
</script>
	<div class="wrapper">
		<!-- 
		['Faculty','Courses','Program','Report', Help']
		-->
		<!-- BREADCRUMB STARTS HERE -->
		<div class="breadcrumb-container" style="width:100%">
			<ul class="xbreadcrumbs">
				<li>
					<a href="dashboard.html">
						<i class="icon-photon home"></i>
					</a>
				</li>
				<li>
					<a href="#" class="span1">Faculty</a>
				</li>
				<li class="current">
					<a href="javascript:;" class="span1">View</a>
				</li>
			</ul>
			<div style="position:absolute;right:0px;">					
				<span><i class="icon-photon user"></i> Mary-Lynn Manton </span> 
				<span>
					<i class="icon-photon key_stroke"></i>
				</span>
			</div>
		</div> 
			<!-- BREADCRUMB ENDS HERE -->
				      
		<header>
			<i class="icon-big-notepad"></i>
			<h2><small>List Faculty</small></h2>
			<h3><small>List all faculty currently in this system</small></h3>
		</header>
		<form class="form-horizontal">
			<div class="container-fluid">

			<!--START OF DOCUMENTATION -->
				<div class="">
					Legend: 
					<i class="icon-list-alt"></i> =  Responsibility 
					<i class="icon-time"></i>  = Complimentary Hours
					<i class="icon-book"></i> = Course
					<i class="icon-edit"></i> = Update
					<i class="icon-trash"></i> = Delete
			    </div>

			<!--END OF DOCUMENTATION -->
			<!-- START OF NEW CONTENT -->
				<!--Sortable Non-responsive Table begin-->

					<style type="text/css">
						td.align {
							text-align: right;
						}
						
						td {
							vertical-align:middle;
						}
					</style>
					
					<div class="row-fluid">
						<div class="span12">
						   <table class="table table-striped" id="tableSortable">
							   <thead>
								   <tr>
									   <tr>
											<th>#</th>
											<th>Faculty Member(s)</th>
											<th width="20%" style="text-align: right">Operation(s)</th>
										</tr>
								   </tr>
							   </thead>
							   <tbody>
								   		<c:forEach items="${allFaculty }" var="faculty">
								   <tr>
								   
	  /*
		.getFacultyId()
		.getFacultyLastName()
		.getFacultyFirstName()
		.getTeachingType()
		.getResponsibilityToFaculties()
	*/
										<td>${ faculty.getFacultyId() }</td>
										<td><label><a href="#">${faculty.getFacultyFirstName()}  ${faculty.getFacultyLastName() }</a></label></td>
										<td class="align">
<a class="bootstrap-tooltip" data-original-title="Complimentary Hours" data-placement="top" href="Anil_ManageFacultyCompHours.html"> <i class="icon-time"></i> </a> 
<a class="bootstrap-tooltip" data-original-title="Responsibility" href="Anil_ManageFacultyResponsibilities.html"><i class="icon-list-alt"></i></a> 
<a class="bootstrap-tooltip" data-original-title="Courses" href="Anil_ManageFacultyCourses.html"> <i class="icon-book"></i> </a>
<a class="bootstrap-tooltip" data-original-title="Update" href="updateFaculty.html"><i class="icon-edit"></i></a> 
<a class="bootstrap-tooltip" data-original-title="Delete" onclick="deleteFaculty('${users.getUserId() }', ' ${faculty.getFacultyFirstName()}  ${faculty.getFacultyLastName() } ')"><i class="icon-trash"></i> </a> 
		
									
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
                </div><!-- end container -->

            </form>

		<!-- Button trigger modal -->
		<button class="btn btn-primary btn-lg" data-toggle="modal"
			data-target="#add">Add user</button>

		<!-- Modal -->
		<div class="modal fade" id="add" tabindex="-1" role="dialog"
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
						<!-- 	@RequestParam(value = "faculty_first_name", required = true) String faculty_first_name,
			@RequestParam(value = "faculty_last_name", required = true) String faculty_last_name,
			@RequestParam(value = "faculty_status", required = true) String faculty_status -->
						
							<div class="input-group">
								<span class="input-group-addon">First Name: </span><br /> <input
									type="text" class="form-control" name="fname" id="fname"
									placeholder="first_name" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Last Name: </span><br /> <input
									type="text" class="form-control" name="lname" id="lname"
									placeholder="first_name" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Status:</span> <br /> <select
									class="form-control" id="status">
									<c:forEach items="${allStatus }" var="status">
										<option value="${status.getTeachingType_id() }">${status.getTeachingType_name() }</option>
									</c:forEach>
								</select>
							</div>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="submit" onclick="validateNewFaculty();"
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
