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
    @Purpose: AJAX posting and validation for adding, updating and deleting a faculty member
     
   */
    
	function deleteDialog(){
		bootbox.dialog('<h3>Confirming</h3><br /> Are you sure you would like to delete this faculty member? <br /> <br /> <br /><button class="btn btn-danger btn-small"  onclick=\'deleteJob();\'><i class="icon-white icon-download-alt"></i> Confirm Delete </button><button class="btn btn-primary btn-small" onclick="closeAll();"><i class="icon-white icon-download-alt"></i> Cancel</button>');
	};

	function closeAll(){
		bootbox.hideAll();
	}

	 var addFaculty=function() {
		$.ajax({
			type: "POST",
			url: "api/faculty",
			data: { 
				faculty_first_name : document.getElementById("fname").value, 
				faculty_last_name : document.getElementById("lname").value,
				faculty_status : document.getElementById("status").selectedIndex+1  
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Faculty added',
						type : 'info',
						text : 'Faculty member ' + document.getElementById('fname').value + 
						' ' + document.getElementById("lname").value + ' has been added'
					});
		    		
		    		document.getElementById("addFacultyForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addFacultyModal').modal('hide');
			   	}
			}
		});
	};
	
	 var updateFaculty=function() {
		$.ajax({
			type: "POST",
			url: "api/faculty/"+document.getElementById("up_facId").value,
			data: { 
				faculty_first_name : document.getElementById("up_fname").value, 
				faculty_last_name : document.getElementById("up_lname").value,
				faculty_status : document.getElementById("up_accessLevel").selectedIndex+1  
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'Faculty updated',
						type : 'info',
						text : 'Faculty member ' + document.getElementById('up_fname').value + 
						' ' + document.getElementById("up_lname").value + ' has been updated'
					});
		    		
		    		document.getElementById("updateFacultyForm").reset(); // Form needs resetting due to never being submitted
		    		$('#updateFacultyModal').modal('hide');
			   	}
			}
		});
	};
 
		
	var deleteFaculty= function(id, fname, lname) {
	   	$.ajax({type:"DELETE", 
		   	url : "api/faculty/"+id,
		   	data : null,
		   	cache : false,
		   	success : function(data){
	       		if (data.success === "true") {
	       			$.pnotify({
						title : 'Faculty :' + fname + ' ' + lname,
						type : 'info',
						text : 'Faculty has been deleted'
					});
       				location.reload();
		   		}
	   		 }
	   	});
   };
   
   var updateForm=function(up_facId, up_fname, up_lname, up_status){
		$("#up_facId").val(up_facId);
		$("#up_fname").val(up_fname);
		$("#up_lname").val(up_lname);
		$("#up_accessLevel").val(up_status);
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
										<th>#</th>
										<th>Faculty Member(s)</th>
										<th>Status</th>
										<th width="25%" style="text-align: right">Operation(s)</th>
								   </tr>
							   </thead>
							   <tbody>
									<c:forEach items="${allFaculty }" var="faculty">
								   		<tr>
											<td>${ faculty.getFacultyId() }</td>
											<td>
												<label>
													<a href="#">
														${faculty.getFacultyFirstName()}  ${faculty.getFacultyLastName() }
													</a>
												</label>
											</td>
											<td>
												${faculty.getTeachingType().getTeachingType_name() }
											</td>
											
											<c:set var="facultyId" value = "${ faculty.getFacultyId() }"></c:set>
											
											<td class="align">
												<a class="bootstrap-tooltip" data-original-title="Responsibility" 
													href="viewResponsibilityToFaculty?id=${facultyId }">
													<i class="icon-list-alt"></i>
												</a> 
												<a class="bootstrap-tooltip" data-original-title="Courses" 
													href="viewFacultyToCourseInSemesterYear?id=${facultyId }">
													<i class="icon-book"></i>
												</a>
												<a class="bootstrap-tooltip" data-original-title="Update" 
													onclick="updateForm('${faculty.getFacultyId()}', 
														'${faculty.getFacultyFirstName()}', 
														'${faculty.getFacultyLastName()}',
														'${faculty.getTeachingType().getTeachingType_name() }' )"
													data-toggle="modal" data-target="#updateFacultyModal">
													<i class="icon-edit"></i>
												</a> 
												<a class="bootstrap-tooltip" data-original-title="Delete" 
													onclick="deleteFaculty('${faculty.getFacultyId() }', 
														'${faculty.getFacultyFirstName()}', '${faculty.getFacultyLastName() }')">
													<i class="icon-trash"></i>
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
                </div><!-- end container -->

            </form>

		<!-- Button trigger modal -->
		<button class="btn btn-primary btn-lg" data-toggle="modal"
			data-target="#addFacultyModal">Add Faculty</button>

		<!-- Modal -->
		<div class="modal fade" id="addFacultyModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Add Faculty</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="addFacultyForm" class="form-horizonatal">
							<div class="input-group">
								<span class="input-group-addon">First Name: </span><br /> <input
									type="text" class="form-control" name="fname" id="fname"
									placeholder="First name" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Last Name: </span><br /> <input
									type="text" class="form-control" name="lname" id="lname"
									placeholder="Last Name" />
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
							<button type="button" onclick="addFaculty();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF ADD MODAL -->
		
		<!-- Modal -->
		<div class="modal fade" id="updateFacultyModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Update Faculty</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="updateFacultyForm" class="form-horizonatal">
							<div class="input-group">
								<input type="hidden" class="form-control" name="up_facId" id="up_facId" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">First Name: </span><br /> <input
									type="text" class="form-control" name="up_fname" id="up_fname" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Last Name: </span><br /> <input
									type="text" class="form-control" name="up_lname" id="up_lname" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Access Level:</span> <br /> 
									<select class="form-control" id="up_accessLevel">
										<c:forEach items="${allStatus }" var="status">
										<option value="${status.getTeachingType_id() }">${status.getTeachingType_name() }</option>
									</c:forEach>
								</select>
							</div>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="updateFaculty();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer">
					</div>
				</div>
			</div>
		</div>


		<!--  END OF UPDATE MODAL -->

        </div>
        </body>
</html>
