<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Manage Course - Semester Section</title>
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
    @Purpose: AJAX posting and validation for adding, updating and deleting a course in a semester
   */
   
	// Get course id from query string
	var courseId = window.location.search.slice(4); // Removes ?id=
	courseId = encodeURI(courseId); // Escape string
	    
   var addCourseInSemester=function() {
	   if (!courseId|| !courseId.length) { // If no id in query string, use the one from the form
			courseId = document.getElementById("courseId").value;
		}
	   
		$.ajax({
			type: "POST",
			url: "api/courseinsemester",
			data: { 
				addition_attribute: document.getElementById("addition_attribute").value,
	  	   		eval_1_ans: document.getElementById("eval_1_ans").value,
	  	   		eval_2_ans: document.getElementById("eval_2_ans").value,
	  	 		eval_3_ans: document.getElementById("eval_3_ans").value,
	  	 		eval_1: document.getElementById("eval_1").value,
	  	 		eval_2: document.getElementById("eval_2").value,
	  	 		eval_3: document.getElementById("eval_3").value,
	  	 		sectionNumber: document.getElementById("sectionNumber").value,
	  	 		year: document.getElementById("year").value,
	  	 		course_id: courseId,
	  	 		semester_id: document.getElementById("semester_id").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Course Section in Semester added',
						type : 'info',
						text : 'Course has been allocated ' + document.getElementById("sectionNumber").value 
							+ 'number of sections'
					});
		    		
		    		// Form needs resetting due to never being submitted
		    		document.getElementById("addCourseInSemesterForm").reset(); 
		    		$('#addCourseInSemesterModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};
	
	var updateCourseInSemester=function() {
	   if (!courseId|| !courseId.length) { // If no id in query string, use the one from the form
			courseId = document.getElementById("up_courseId").value;
		}
	   	   
		$.ajax({
			type: "POST",
			url: "api/courseinsemester/"+document.getElementById("cisId").value,
			data: { 
				addition_attribute: document.getElementById("up_addition_attribute").value,
	  	   		eval_1_ans: document.getElementById("up_eval_1_ans").value,
	  	   		eval_2_ans: document.getElementById("up_eval_2_ans").value,
	  	 		eval_3_ans: document.getElementById("up_eval_3_ans").value,
	  	 		eval_1: document.getElementById("up_eval_1").value,
	  	 		eval_2: document.getElementById("up_eval_2").value,
	  	 		eval_3: document.getElementById("up_eval_3").value,
	  	 		sectionNumber: document.getElementById("up_sectionNumber").value,
	  	 		year: document.getElementById("up_year").value,
	  	 		course_id: courseId,
	  	 		semester_id: document.getElementById("up_semester_id").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'Course Section Updated',
						type : 'info',
						text : 'Course section has been updated'
					});
		    		
		    		// Form needs resetting due to never being submitted
		    		document.getElementById("updateCourseInSemesterForm").reset(); 
		    		$('#updateCourseInSemesterModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};
   
  	var deleteCourseInSemester= function(id, course_code, semester, year) {
 		$.ajax({
 			type:"DELETE", 
  			url : "api/courseinsemester/"+id,
  			data : null,
  			cache : false,
  			success : function(data){
     			if (data.success === "true") {
    				$.pnotify({
						title : 'Course :' + course_code + 'sections removed',
						type : 'info',
						text : 'Course sections has been removed for ' + semester + ' ' + year
					});
    			location.reload();
  				}
  	 		 }
 		});
	};	  	   

	var updateForm=function(cisId, up_addition_attribute, up_eval_1_ans, up_eval_2_ans, up_eval_3_ans, up_sectionNumber,
		up_year, up_course_id, up_eval_1, up_eval_2, up_eval_3, up_semester_id){
		
		$("#cisId").val(cisId);
		$("#up_addition_attribute").val(up_addition_attribute);
		$("#up_eval_1_ans").val(up_eval_1_ans);
		$("#up_eval_2_ans").val(up_eval_2_ans);
		$("#up_eval_3_ans").val(up_eval_3_ans);
		$("#up_eval_1").val(up_eval_1);
		$("#up_eval_2").val(up_eval_2);
		$("#up_eval_3").val(up_eval_3);
		$("#up_sectionNumber").val(up_sectionNumber);
		$("#up_year").val(up_year);
		$("#up_courseId").val(up_course_id);
		$("#up_semester_id").val(up_semester_id);
	};
	
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
				<small>Manage Course in Semester Year</small>
			</h2>
			<h3>
				<small>Add, Update and Delete a course's section numbers per semester year</small>
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
									<th>Code(s)</th>
									<th>Name(s)</th>
									<th>Section Number</th>
									<th>Semester</th>
									<th>Year</th>
									<th width="25%" style="text-align: right">Operation(s)</th>
								</tr>
							</thead>
							<tbody>
								<c:set var="courseId">
								    <c:out value = "${param.id}" />
								</c:set> 
								<c:forEach items="${entityList }" var="cis">
									<c:if test="${cis.getCourse().getCourseId() == courseId || empty courseId}">
									<tr>
										<td>${cis.getCourse().getCourseCode() }</td>
										<td>${cis.getCourse().getCourseName() }</td>
										<td>${cis.getTotalSection() }</td>
										<td>${cis.getSemester().getSemesterName() }</td>
										<td>${cis.getYear() }</td>
										
										<td class="align">
											<a
												onclick="updateForm('${cis.getCisId()}', '${cis.getAdditionAttribute()}', 
													'${cis.getEval1Ans()}','${cis.getEval2Ans()}', '${cis.getEval3Ans()}',
													'${cis.getTotalSection() }', '${cis.getYear()}', 
													'${cis.getCourse().getCourseId()}',
													'${cis.getEvalFactor1().getEvalId()}',
													'${cis.getEvalFactor2().getEvalId()}',
													'${cis.getEvalFactor3().getEvalId()}',
													'${cis.getSemester().getSemesterId()}')"
												data-toggle="modal" data-target="#updateCourseInSemesterModal">Update
											</a>
											|
											 <a
												onclick="deleteCourseInSemester('${cis.getCisId()}', 
													'${cis.getCourse().getCourseCode()}', 
													'${cis.getSemester().getSemesterName()}',
													'${cis.getYear()}' )">
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
			data-target="#addCourseInSemesterModal">Add Course in Semester</button>

		<!-- Modal -->
		<div class="modal fade" id="addCourseInSemesterModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Add Course in Semester</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="addCourseInSemesterForm" class="form-horizonatal">
							<c:if test="${ empty courseId }">
								<div class="input-group">
									<span class="input-group-addon">Course:</span> <br /> 
										<select class="form-control" id="courseId">
											<c:forEach items="${allCourses }" var="course">
												<option value="${course.getCourseId() }">
													${course.getCourseCode()}
												</option>
											</c:forEach>
									</select>
								</div>
							</c:if>
							<div class="input-group">
								<span class="input-group-addon">Section Number:</span><br /> <input
									type="text" class="form-control" name="sectionNumber" id="sectionNumber" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Semester:</span> <br /> 
									<select class="form-control" id="semester_id">
										<c:forEach items="${allSemesters }" var="semester">
										<option value="${semester.getSemesterId() }">
											${semester.getSemesterName() }
										</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Year</span><br /> <input
									type="text" class="form-control" name="year" id="year" placeholder="2014" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor 1:</span> <br /> 
									<select class="form-control" id="eval_1">
										<c:forEach items="${allEvalFactors }" var="evalFactor">
										<option value="${evalFactor.getEvalId() }">
											${evalFactor.getEvalName() } - ${evalFactor.getEvalFactor() }
										</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor 2:</span> <br /> 
									<select class="form-control" id="eval_2">
										<c:forEach items="${allEvalFactors }" var="evalFactor">
										<option value="${evalFactor.getEvalId() }">
											${evalFactor.getEvalName() } - ${evalFactor.getEvalFactor() }
										</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor 3:</span> <br /> 
									<select class="form-control" id="eval_3">
										<c:forEach items="${allEvalFactors }" var="evalFactor">
										<option value="${evalFactor.getEvalId() }">
											${evalFactor.getEvalName() } - ${evalFactor.getEvalFactor() }
										</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor Answer 1:</span><br /> <input
									type="text" class="form-control" name="eval_1_ans" id="eval_1_ans" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor Answer 2:</span><br /> <input
									type="text" class="form-control" name="eval_2_ans" id="eval_2_ans" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor Answer 3:</span><br /> <input
									type="text" class="form-control" name="eval_3_ans" id="eval_3_ans" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Addition Attribute:</span><br /> <input
									type="text" class="form-control" name="addition_attribute" id="addition_attribute" />
							</div>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="addCourseInSemester();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>
		
		<!--  END OF ADD MODAL -->

			<!-- Modal -->
		<div class="modal fade" id="updateCourseInSemesterModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Update Course in Semester</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="updateCourseInSemesterForm" class="form-horizonatal">
							<div class="input-group">
								<input type="hidden" class="form-control" name="cisId" id="cisId" />
							</div>
							<c:if test="${ empty courseId }">
								<div class="input-group">
									<span class="input-group-addon">Course:</span> <br /> 
										<select class="form-control" id="up_courseId">
											<c:forEach items="${allCourses }" var="course">
												<option value="${course.getCourseId()}">
													${course.getCourseCode()}
												</option>
											</c:forEach>
									</select>
								</div>
							</c:if>
							<div class="input-group">
								<span class="input-group-addon">Section Number:</span><br /> <input
									type="text" class="form-control" name="up_sectionNumber" id="up_sectionNumber"
									placeholder="Subject Name" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Semester:</span> <br /> 
									<select class="form-control" id="up_semester_id">
										<c:forEach items="${allSemesters }" var="semester">
										<option value="${semester.getSemesterId() }">
											${semester.getSemesterName() }
										</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Year</span><br /> <input
									type="text" class="form-control" name="up_year" id="up_year" placeholder="2014" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor 1:</span> <br /> 
									<select class="form-control" id="up_eval_1">
										<c:forEach items="${allEvalFactors }" var="evalFactor">
										<option value="${evalFactor.getEvalId() }">
											${evalFactor.getEvalName() } - ${evalFactor.getEvalFactor() }
										</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor 2:</span> <br /> 
									<select class="form-control" id="up_eval_2">
										<c:forEach items="${allEvalFactors }" var="evalFactor">
										<option value="${evalFactor.getEvalId() }">
											${evalFactor.getEvalName() } - ${evalFactor.getEvalFactor() }
										</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor 3:</span> <br /> 
									<select class="form-control" id="up_eval_3">
										<c:forEach items="${allEvalFactors }" var="evalFactor">
										<option value="${evalFactor.getEvalId() }">
											${evalFactor.getEvalName() } - ${evalFactor.getEvalFactor() }
										</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor Answer 1:</span><br /> <input
									type="text" class="form-control" name="up_eval_1_ans" id="up_eval_1_ans" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor Answer 2:</span><br /> <input
									type="text" class="form-control" name="up_eval_2_ans" id="up_eval_2_ans" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Evaluation Factor Answer 3:</span><br /> <input
									type="text" class="form-control" name="up_eval_3_ans" id="up_eval_3_ans" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Addition Attribute:</span><br /> <input
									type="text" class="form-control" name="up_addition_attribute" id="up_addition_attribute" />
							</div>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="updateCourseInSemester();"
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