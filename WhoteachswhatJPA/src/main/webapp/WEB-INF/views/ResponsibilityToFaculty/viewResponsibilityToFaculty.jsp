<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Manage Faculty - Responsibilities</title>
<jsp:include page="../includes/static_includes.jsp" />
<script type="text/javascript" src="views_ajax_requests/viewResponsibilityToFacultyAJAX.js"></script>
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
				<li><a href="#">Admin Panel</a></li>
				<li class="current"><a href="viewResponsibilityToFaculty">Manage
						Responsibility To Faculty</a></li>
			</ul>
		</div>
		<header>
			<i class="icon-big-notepad"></i>
			<h2>
				<small>Manage Responsibility To Faculty</small>
			</h2>
			<h3>
				<small>Add, Update and Delete faculty responsibilities</small>
			</h3>
		</header>
		<form method="post" action="api/preptime" id="AddPreptimeForm"
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
									<th>Year</th>
									<th>Semester</th>
									<th>Faculty</th>
									<th>Responsibility</th>
									<th>Hours per Week</th>
									<th width="25%" style="text-align: right">Operation(s)</th>
								</tr>
							</thead>
							<tbody>
							 
								<c:set var="facultyId">
								    <c:out value = "${param.id}" />
								</c:set>
								
								<c:forEach items="${allResponsibilityToFaculty }" var="repToFac">
									<c:if test="${repToFac.getFaculty().getFacultyId() == facultyId || empty facultyId}">
									<tr>
										<td>${repToFac.getRepToFac_id() }</td>
										<td>${repToFac.getYear() }</td>
										<td>${repToFac.getSemester().getSemesterName() }</td>
										<td>${repToFac.getFaculty().getFacultyFirstName() } ${repToFac.getFaculty().getFacultyLastName() }</td>
										<td>${repToFac.getResponsibility().getResponsibilityName() }</td>
										<td>${repToFac.getHoursPerWeek() }</td>
										<td class="align">
											<a
												onclick="updateForm('${repToFac.getRepToFac_id()}',
													'${repToFac.getFaculty().getFacultyId()}',
													'${repToFac.getResponsibility().getResponsibilityId()}', 
													'${repToFac.getSemester().getSemesterId() }',
													'${repToFac.getYear()}',
													'${repToFac.getHoursPerWeek()}' )"
												data-toggle="modal" data-target="#updateRepToFacModal">Update</a>
											
											<a
												onclick="deleteForm('${repToFac.getRepToFac_id()}', 
													'${repToFac.getFaculty().getFacultyFirstName() }',
													'${repToFac.getFaculty().getFacultyLastName() }',
													'${repToFac.getResponsibility().getResponsibilityName() }' )"
													data-toggle="modal" data-target="#deleteModal">
												Delete
											</a>
										</td>
									</tr>
									</c:if>
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
			data-target="#addRepToFacModal">Add Responsibility to Faculty</button>

		<!-- Modal -->
		<div class="modal fade" id="addRepToFacModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Add Responsibility to Faculty</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="addRepToFacForm" class="form-horizonatal">
							<c:if test="${ empty facultyId }">
								<div class="input-group">
									<span class="input-group-addon">Faculty:</span> <br /> 
										<select class="form-control" id="facultyId" name="Faculty id">
											<c:forEach items="${allFaculty }" var="fac">
												<option value="${fac.getFacultyId() }">
													${fac.getFacultyFirstName() } ${fac.getFacultyLastName() }
												</option>
											</c:forEach>
									</select>
								</div>
							</c:if>
							<div class="input-group">
								<span class="input-group-addon">Responsibility:</span> <br /> 
									<select class="form-control" id="responsibilityId" name="Responsibility id">
										<c:forEach items="${allResponsibility }" var="rep">
											<option value="${rep.getResponsibilityId() }">
												${rep.getResponsibilityName() }
											</option>
										</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Year: </span><br /> <input
									type="text" class="form-control" name="Year" id="year" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Semester:</span> <br /> <select
									class="form-control" id="semesterId" name="Semester id">
									<c:forEach items="${allSemesters }" var="semester">
										<option value="${semester.getSemesterId() }">
											${semester.getSemesterName() }
										</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Hours per week: </span><br /> <input
									type="text" class="form-control" name="Hours per week" id="hoursperweek" />
							</div>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="addRepToFac();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF ADD MODAL -->

		<!-- Modal -->
		<div class="modal fade" id="updateRepToFacModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Update Responsibility to Faculty</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="updateRepToFacForm" class="form-horizonatal">
							<div class="input-group">
								<input type="hidden" class="form-control" name="Faculty to responsibility id" 
									id="up_repToFacId" />
							</div>
							<c:if test="${ empty facultyId }">
								<div class="input-group">
									<span class="input-group-addon">Faculty:</span> <br /> 
										<select class="form-control" id="up_facultyId" name="Faculty id">
											<c:forEach items="${allFaculty }" var="fac">
												<option value="${fac.getFacultyId() }">
													${fac.getFacultyFirstName() } ${fac.getFacultyLastName() }
												</option>
											</c:forEach>
									</select>
								</div>
							</c:if>
							<div class="input-group">
								<span class="input-group-addon">Responsibility:</span> <br /> 
									<select class="form-control" id="up_responsibilityId" name="Responsibility id">
										<c:forEach items="${allResponsibility }" var="rep">
											<option value="${rep.getResponsibilityId() }">
												${rep.getResponsibilityName() }
											</option>
										</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Year: </span><br /> <input
									type="text" class="form-control" name="Year" id="up_year" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Semester:</span> <br /> 
									<select class="form-control" id="up_semesterId" name="Semester id">
										<c:forEach items="${allSemesters }" var="semester">
											<option value="${semester.getSemesterId() }">
												${semester.getSemesterName() }
											</option>
										</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Hours per week: </span><br /> <input
									type="text" class="form-control" name="Hours per week" id="up_hoursperweek" />
							</div>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="updateRepToFac();"
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
			<input type="hidden" id="del_repToFacId" name="Faculty to responsibility id" />
			<input type="hidden" id="del_facultyFirstName" />
			<input type="hidden" id="del_facultyLastName" />
			<input type="hidden" id="del_respon_name" />
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
                	onclick="deleteRepToFac()">Yes</a>
            </div>
        </div>
		
		<!--  END DELETE MODAL -->

	</div>
</body>
</html>
