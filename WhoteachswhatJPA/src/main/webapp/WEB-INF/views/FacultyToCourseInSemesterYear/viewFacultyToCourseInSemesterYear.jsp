<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Manage Faculty - Course in Semester Year</title>
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
    @Purpose: AJAX posting and validation for adding, updating and deleting a faculty to a course in a particular 
    		  semester during a certain year
   */
   
	// Get faculty id from query string
	var facultyId = window.location.search.slice(4); // Removes ?id=
	facultyId = encodeURI(facultyId); // Escape string  	
    
   var addFacToCourseSem=function() {
	   if (!facultyId || !facultyId.length) { // If no id in query string, use the one from the form
			facultyId = document.getElementById("facultyId").value;
		}
		
		$.ajax({
			type: "POST",
			url: "api/facultyToCourseInSemesterYear",
			data: { 
				additionAttribute: document.getElementById("additionAttribute").value, 
		   		comphourAllowance: document.getElementById("comphourAllowance").value,
		   		comphourAssigned: document.getElementById("comphourAssigned").value,
		   		sectionNumber: document.getElementById("sectionNumber").value,
		   		semesterId: document.getElementById("semesterId").value,
		   		year: document.getElementById("year").value,
		   		comphourId: document.getElementById("comphourId").selectedIndex + 1,
		   		courseId: document.getElementById("courseId").selectedIndex + 1,
		   		facultyId: facultyId,
		   		prepTypeId: document.getElementById("prepTypeId").selectedIndex + 1  
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Course Added to Faculty',
						type : 'info',
						text : 'Course has been assigned to faculty'
					});
		    		
		    		document.getElementById("addFacToCourseSemForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addFacToCourseSemModal').modal('hide');
			   	}
			}
		});
	};
   
	var updateFacToCourseSem=function() {
		if (!facultyId || !facultyId.length) { // If no id in query string, use the one from the form
			facultyId = document.getElementById("up_facultyId").value;
		}
		
		$.ajax({
			type: "POST",
			url: "api/facultyToCourseInSemesterYear/"+document.getElementById("up_cisId").value,
			data: { 
				additionAttribute: document.getElementById("up_additionAttribute").value, 
		   		comphourAllowance: document.getElementById("up_comphourAllowance").value,
		   		comphourAssigned: document.getElementById("up_comphourAssigned").value,
		   		sectionNumber: document.getElementById("up_sectionNumber").value,
		   		semesterId: document.getElementById("up_semesterId").value,
		   		year: document.getElementById("up_year").value,
		   		comphourId: document.getElementById("up_comphourId").selectedIndex + 1,
		   		courseId: document.getElementById("up_courseId").selectedIndex + 1,
		   		facultyId: facultyId,
		   		prepTypeId: document.getElementById("up_prepTypeId").selectedIndex + 1  
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'Updated Course Added to Faculty',
						type : 'info',
						text : 'Course has been updated for faculty'
					});
		    		
		    		document.getElementById("updateFacToCourseSemForm").reset(); // Form needs resetting due to never being submitted
		    		$('#updateFacToCourseSemModal').modal('hide');
			   	}
			}
		});
	};

	var deleteFacToCourseSem= function(id, course, facultyFirstName, faultyLastName) {
	 	$.ajax({
	 		type:"DELETE", 
		  	url : "api/facultyToCourseInSemesterYear/"+id,
		  	data : null,
		  	cache : false,
		  	success : function(data){
	     		if (data.success === "true") {
	    			$.pnotify({
						title : 'Course :' + course + 'has been removed from faculty',
						type : 'info',
						text : 'Course has been removed from ' + facultyFirstName + ' ' + facultyLastName
					});
	    			location.reload();
	  			}
	   	  	}
	 	});
	};	   

	var updateForm=function(cisId, facId, additionAttribute, comphourAllowance, comphourAssigned, sectionNumber, semesterId, year,
		comphourId, courseId, prepTypeId){
		$("#up_cisId").val(cisId);
		$("#facultyId").val(facId);
		$("#up_additionAttribute").val(additionAttribute); 
   		$("#up_comphourAllowance").val(comphourAllowance);
   		$("#up_comphourAssigned").val(comphourAssigned);
   		$("#up_sectionNumber").val(sectionNumber);
   		$("#up_semesterId").val(semesterId);
   		$("up_year").val(year);
   		$("#up_comphourId").val(comphourId);
   		$("#up_courseId").val(courseId);
   		$("#up_prepTypeId").val(prepTypeId); 
	};											

</script>
	<div class="wrapper">
		<div class="breadcrumb-container" style="width: 100%">
			<ul class="xbreadcrumbs">
				<li><a href="dashboard.html"> <i class="icon-photon home"></i>
				</a></li>
				<li><a href="#">Manage Faculty</a></li>
				<li><a href="viewFacultyToCourseInSemesterYear">Manage Course to Semester Year</a></li>
			</ul>
		</div>
		<header>
			<i class="icon-big-notepad"></i>
			<h2>
				<small>Manage Faculty Courses in a Semester Year</small>
			</h2>
			<h3>
				<small>Add, Update and Delete a faculty member's courses per semester year</small>
			</h3>
		</header>
		<form method="post" action="api/course" id="addCourseForm"
			onsubmit="return validateAddCourse();" class="form-horizontal">
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
									<th>Faculty</th>
									<th>Course Section</th>
									<th>Semester Year</th>
									<th>Comp Hour</th>
									<th>Hours</th>
									<th>Prep Time</th>
									<th>Addition</th>
									<th width="25%" style="text-align: right">Operation(s)</th>
								</tr>
							</thead>
							<tbody>
								
								<c:set var="facultyId">
								    <c:out value = "${param.id}" />
								</c:set>
								
								
								<c:forEach items="${allFacultyToCourseInSemesterYear}" var="facToCourse">
									<c:if test="${facToCourse.getFaculty().getFacultyId() == facultyId || empty facultyId}"> 
									<tr>
										<td>
											${facToCourse.getFaculty().getFacultyFirstName() } 
											${facToCourse.getFaculty().getFacultyLastName() }
										</td>
										<td>${facToCourse.getCourse().getCourseCode() } x ${facToCourse.getSectionNumber() }</td>
										<td>${facToCourse.getSemesterId() } ${facToCourse.getYear() }</td>
										<td>${facToCourse.getCompHour().getCompHour_name()}</td>
										<td>${facToCourse.getCompHour_assigned() }</td>
										<td>
											${facToCourse.getPrepTime().getPrepName() } 
											${facToCourse.getPrepTime().getPrepFactor()}
										</td>
										<td>${facToCourse.getAdditionAttribute() }</td>
										
										<td class="align">
											 <a
												onclick="updateForm('${facToCourse.getCisyId() }',
													'${facToCourse.getFaculty().getFacultyId()}',
													'${facToCourse.getAdditionAttribute()}',
													'${facToCourse.getCompHour_allowance() }',
													'${facToCourse.getCompHour_assigned() }',
													'${facToCourse.getSectionNumber() }',
													'${facToCourse.getSemesterId() }',
													'${facToCourse.getYear() }',
													'${facToCourse.getCompHour().getCompHour_id() }',
													'${facToCourse.getCourse().getCourseId() }',
													'${facToCourse.getPrepTime().getPrepId() }',)"
												data-toggle="modal" data-target="#updateFacToCourseSemModal">Update
											</a>
											|
											<a
												onclick="deleteFacToCourseSem('${facToCourse.getCisyId() }',
													'${facToCourse.getCourse().getCourseCode() }',
													'${facToCourse.getFaculty().getFacultyFirstName()}',
													'${facToCourse.getFaculty().getFacultyLastName()}' )">Delete
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
			data-target="#addFacToCourseSemModal">Add Faculty to Course</button>

		<!-- Modal -->
		<div class="modal fade" id="addFacToCourseSemModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Add Faculty to Course</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="addFacToCourseSemForm" class="form-horizonatal">
							<c:if test="${ empty facultyId }">
								<div class="input-group">
									<span class="input-group-addon">Faculty:</span> <br /> 
										<select class="form-control" id="facultyId">
											<c:forEach items="${allFaculty }" var="fac">
												<option value="${fac.getFacultyId() }">
													${fac.getFacultyFirstName() } ${fac.getFacultyLastName() }
												</option>
											</c:forEach>
									</select>
								</div>
							</c:if>
							<div class="input-group">
								<span class="input-group-addon">Addition: </span><br /> <input
									type="text" class="form-control" name="additionAttribute" id="additionAttribute"
									placeholder="" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Comp Hour Allowance: </span><br /> <input
									type="text" class="form-control" name="comphourAllowance" id="comphourAllowance"
									placeholder="" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Section Number: </span><br /> <input
									type="text" class="form-control" name="sectionNumber" id="sectionNumber"
									placeholder="5" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Comp Hours Assigned: </span><br /> <input
									type="text" class="form-control" name="comphourAssigned" id="comphourAssigned"
									placeholder="" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Semester:</span> <br /> <select
									class="form-control" id="semesterId">
									<c:forEach items="${allSemesters }" var="semester">
									<option value="${semester.getSemesterId() }">${semester.getSemesterName() }</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Year: </span><br /> <input
									type="text" class="form-control" name="year" id="year"
									placeholder="2014" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Course:</span> <br /> <select
									class="form-control" id="courseId">
									<c:forEach items="${allCourses }" var="course">
									<option value="${course.getCourseId() }">
										${course.getCourseCode() }
									</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Prep Time:</span> <br /> <select
									class="form-control" id="preptimeId">
									<c:forEach items="${allPrepTime}" var="pt">
									<option value="${pt.getPrepId() }">
										${pt.getPrepName() }
									</option>
									</c:forEach>
								</select>
							</div>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="addFacToCourseSem();"
								class="btn btn-primary">Save changes</button>

						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF ADD MODAL -->

			<!-- Modal -->
		<div class="modal fade" id="updateFacToCourseSemModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Update Faculty to Course</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="updateFacToCourseSemForm" class="form-horizonatal">
							<div class="input-group">
								<input type="hidden" class="form-control" name="up_facultyId" id="up_facultyId" />
							</div>
							<div class="input-group">
								<input type="hidden" class="form-control" name="up_cisId" id="up_cisId" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Addition: </span><br /> <input
									type="text" class="form-control" name="up_additionAttribute" id="up_additionAttribute"
									placeholder="" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Comp Hour Allowance: </span><br /> <input
									type="text" class="form-control" name="up_comphourAllowance" id="up_comphourAllowance"
									placeholder="" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Section Number: </span><br /> <input
									type="text" class="form-control" name="up_sectionNumber" id="up_sectionNumber"
									placeholder="5" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Comp Hours Assigned: </span><br /> <input
									type="text" class="form-control" name="up_comphourAssigned" id="up_comphourAssigned"
									placeholder="" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Semester:</span> <br /> <select
									class="form-control" id="up_semesterId">
									<c:forEach items="${allSemesters }" var="semester">
									<option value="${semester.getSemesterId() }">${semester.getSemesterName() }</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Year: </span><br /> <input
									type="text" class="form-control" name="up_year" id="up_year"
									placeholder="2014" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Course:</span> <br /> <select
									class="form-control" id="up_courseId">
									<c:forEach items="${allCourses }" var="course">
									<option value="${course.getCourseId() }">
										${course.getCourseCode() }
									</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Prep Time:</span> <br /> <select
									class="form-control" id="up_preptimeId">
									<c:forEach items="${allPrepTime}" var="pt">
									<option value="${pt.getPrepId() }">
										${pt.getPrepName() }
									</option>
									</c:forEach>
								</select>
							</div>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="updateFacToCourseSem();"
								class="btn btn-primary">Save changes</button>

						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF UPDATE MODAL -->
		
	</div>
</body>
</html>
