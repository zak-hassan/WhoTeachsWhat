<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Manage Course - View</title>
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
    @Purpose: AJAX posting and validation for adding, updating and deleting a course
   */
    
   var addCourse=function() {
		$.ajax({
			type: "POST",
			url: "api/course",
			data: { 
				course_code: document.getElementById("course_code").value,
	  	   		course_name: document.getElementById("course_name").value,
	  	   		crossover_input: document.getElementById("crossover_input").value,
	  	   		reference_input: document.getElementById("reference_input").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Course added',
						type : 'info',
						text : 'Course ' + document.getElementById('course_code').value + ' has been added'
					});
		    		
		    		document.getElementById("addCourseForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addCourseModal').modal('hide');
			   	}
			}
		});
	};
	
	var updateCourse=function() {
		$.ajax({
			type: "POST",
			url: "api/course/"+document.getElementById("up_course_id").value,
			data: { 
				course_code: document.getElementById("up_course_code").value,
	  	   		course_name: document.getElementById("up_course_name").value,
	  	   		crossover_input: document.getElementById("up_crossover_input").value,
	  	   		reference_input: document.getElementById("up_reference_input").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'Course Updated',
						type : 'info',
						text : 'Course ' + document.getElementById('up_course_code').value + ' has been updated'
					});
		    		
		    		document.getElementById("updateCourseForm").reset(); // Form needs resetting due to never being submitted
		    		$('#updateCourseModal').modal('hide');
			   	}
			}
		});
	};
   
  	var deleteCourse= function(id, course_code) {
 		$.ajax({type:"DELETE", 
  			url : "api/course/"+id,
  			data : null,
  			cache : false,
  			success : function(data){
     			if (data.success === "true") {
    				$.pnotify({
						title : 'Course :' + course_code,
						type : 'info',
						text : 'Course has been deleted'
					});
    			location.reload();
  				}
  	 		 }
 		});
	};	  	   

	var updateForm=function(up_course_id, up_course_code, up_course_name, up_crossover_input, up_reference_input){
		$("#up_course_id").val(up_course_id);
		$("#up_course_code").val(up_course_code);
		$("#up_course_name").val(up_course_name);
		$("#up_crossover_input").val(up_crossover_input);
		$("#up_reference_input").val(up_reference_input);
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
				<small>Manage Cousre</small>
			</h2>
			<h3>
				<small>Add, Update and Delete a course</small>
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
									<th width="25%" style="text-align: right">Operation(s)</th>
								</tr>
							</thead>
							<tbody>
							<!--  
								<c:forEach items="${allCourses }" var="course">
									<tr>

										<td>${course.getCourseCode() }</td>
										
										<td>${course.getCourseName() }</td>

										<td class="align">
											<a
												onclick="updateForm('${course.getCourseId() }', '${course.getCourseCode() }', 
													'${course.getCourseName() }','${course.getCrossover_course() }', 
													'${course.getOld_course() }')"
												data-toggle="modal" data-target="#updateCourseModal">Update |
											</a>
											
											 <a
												onclick="deleteCourse('${course.getCourseId() }', ' ${course.getCourseCode() } ')">
												Delete
											</a>
										</td>
									</tr>
								</c:forEach>
								-->
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
									type="text" class="form-control" name="course_code" id="course_code"
									placeholder="Course Code" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Subject Name</span><br /> <input
									type="text" class="form-control" name="course_name" id="course_name"
									placeholder="Subject Name" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Crossover Course</span><br /> <input
									type="text" class="form-control" name="crossover_input" id="crossover_input"
									placeholder="Course" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Reference to old course</span><br /> <input
									type="text" class="form-control" name="reference_input" id="reference_input"
									placeholder="Reference" />
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
								<input type="hidden" class="form-control" name="up_course_id" id="up_course_id" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Course Code</span><br /> <input
									type="text" class="form-control" name="up_course_code" id="up_course_code"
									placeholder="Course Code" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Subject Name</span><br /> <input
									type="text" class="form-control" name="up_course_name" id="up_course_name"
									placeholder="Subject Name" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Crossover Course</span><br /> <input
									type="text" class="form-control" name="up_crossover_input" id="up_crossover_input"
									placeholder="Course" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Reference to old course</span><br /> <input
									type="text" class="form-control" name="up_reference_input" id="up_reference_input"
									placeholder="Reference" />
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

	</div>
</body>
</html>
