<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Manage Course - View</title>
<jsp:include page="../includes/static_includes.jsp" />
<script type="text/javascript" src="views_ajax_requests/view_coursesAJAX.js"></script>
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
        
</script>
	<div class="wrapper">
		<div class="breadcrumb-container" style="width: 100%">
			<ul class="xbreadcrumbs">
				<li><a href="dashboard.html"> <i class="icon-photon home"></i>
				</a></li>
				<li><a href="viewCourse">Manage Course</a></li>
			</ul>
		</div>
		<header>
			<i class="icon-big-notepad"></i>
			<h2>
				<small>Manage Course</small>
			</h2>
			<h3>
				<small>Add, Update and Delete a course</small>
			</h3>
		</header>
		<form class="form-horizontal">
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
									<th>Code(s)</th>
									<th>Name(s)</th>
									<th width="25%" style="text-align: right">Operation(s)</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${allCourses }" var="course">
									<tr>
									
										<td>${course.getCourseCode() }</td>
										<td>${course.getCourseName() }</td>
										<c:set var="courseId" value = "${ course.getCourseId() }"></c:set>
										<td class="align">
											<a 
												href="viewCourseInSemester?id=${courseId}"
												class="bootstrap-tooltip" data-original-title="Allocate Section(s)">
												<i class="icon-plus-sign"></i>
											</a>
											<a
												class="bootstrap-tooltip" data-original-title="Update"
												onclick="updateForm('${course.getCourseId() }', '${course.getCourseCode() }', 
													'${course.getCourseName() }','${course.getCrossoverCourse() }', 
													'${course.getOldCourse() }')"
												data-toggle="modal" data-target="#updateCourseModal">
												<i class="icon-edit"></i>
											</a>
											
											 <a
											 	class="bootstrap-tooltip" data-original-title="Delete"
												onclick="deleteForm('${course.getCourseId() }', ' ${course.getCourseCode() } ')"
												data-toggle="modal" data-target="#deleteModal">
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
			</div>
			<!-- end container -->
		</form>
		 <!-- Button trigger modal -->
		<button class="btn btn-primary btn-lg" data-toggle="modal"
			data-target="#addCourseModal">Add Course</button>

		<!-- Modal -->
		<div class="modal fade" id="addCourseModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Add Course</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="addCourseForm" class="form-horizonatal">
							<div class="input-group">
								<span class="input-group-addon">Course Code</span><br /> <input
									type="text" class="form-control" name="Course code" id="course_code"
									placeholder="Course Code" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Subject Name</span><br /> <input
									type="text" class="form-control" name="Course name" id="course_name"
									placeholder="Subject Name" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Crossover Course</span><br /> <input
									type="text" class="form-control" name="Crossover course" id="crossover_input"
									placeholder="Course" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Reference to old course</span><br /> <input
									type="text" class="form-control" name="Reference" id="reference_input"
									placeholder="Reference" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor 1</span><br /> <input
									type="text" class="form-control" name="Evaluation factor 1" id="evalFactor1" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor 2</span><br /> <input
									type="text" class="form-control" name="Evaluation factor 2" id="evalFactor2" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor 3</span><br /> <input
									type="text" class="form-control" name="Evaluation factor 3" id="evalFactor3" />
							</div>
							
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="addCourse();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF ADD MODAL -->

			<!-- Modal -->
		<div class="modal fade" id="updateCourseModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Update Course</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="updateCourseForm" class="form-horizonatal">
							<div class="input-group">
								<input type="hidden" class="form-control" name="Course id" id="up_course_id" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Course Code</span><br /> <input
									type="text" class="form-control" name="Course code" id="up_course_code"
									placeholder="Course Code" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Subject Name</span><br /> <input
									type="text" class="form-control" name="Course name" id="up_course_name"
									placeholder="Subject Name" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Crossover Course</span><br /> <input
									type="text" class="form-control" name="Crossover course" id="up_crossover_input"
									placeholder="Course" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Reference to old course</span><br /> <input
									type="text" class="form-control" name="Reference" id="up_reference_input"
									placeholder="Reference" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor 1</span><br /> <input
									type="text" class="form-control" name="Evaluation factor 1" id="up_evalFactor1" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor 2</span><br /> <input
									type="text" class="form-control" name="Evaluation factor 2" id="up_evalFactor2" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor 3</span><br /> <input
									type="text" class="form-control" name="Evaluation factor 3" id="up_evalFactor3" />
							</div>
							
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="updateCourse();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF UPDATE MODAL -->

		<!--  BEGIN DELETE MODAL -->
		
		<div id="deleteModal" class="modal hide fade">
			<input type="hidden" id="del_course_id" name="Course id" />
			<input type="hidden" id="del_course_code" />
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3>Delete Confirmation</h3>
            </div>
            <div class="modal-body">
				Are you sure you want to delete?
            </div>
            <div class="modal-footer">
                <a href="javascript:;" class="btn" data-dismiss="modal">Close</a>
                <a href="javascript:;" class="btn btn-primary" data-dismiss="modal"
                	onclick="deleteCourse()">Yes</a>
            </div>
        </div>
		
		<!--  END DELETE MODAL -->

	</div>
</body>
</html>
