<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>View Courses</title>
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

        <script type="text/javascript">
           var validateAddCourse= function() {
       	   	$.post("api/course",{ courseCode: document.getElementById("courseCode").value,
       	   		courseName: document.getElementById("courseName").value,
       	   		crossoverCourse: document.getElementById("crossoverCourse").value,
       	   		referenceCourse: document.getElementById("referenceCourse").value
       	   	   	})
       	   		.done(function(data) {
       	       		console.log("AJAX RETURNED"+JSON.stringify(data));
       	       		
       	       		if (data.success === "true") {
       	       			// Success message
       	       			$("#addCourse").modal('hide');
       	       			$.pnotify({
       						title : 'New course added!',
       						type : 'info',
       						text : 'Added new course!'
       					});
       	       		}
       	   		});
       		return	false;
       	   };
           	   
           	var validateUpdateCourse= function() {
           	   	$.put("api/course",{ courseId: document.getElementById("courseId").value,
           	   		courseCode: document.getElementById("courseCode").value,
           	   		courseName: document.getElementById("courseName").value,
           	   		crossoverCourse: document.getElementById("crossoverCourse").value,
           	   		referenceCourse: document.getElementById("referenceCourse").value
           	   	   	})
           	   		.done(function(data) {
           	       		console.log("AJAX RETURNED"+JSON.stringify(data));
           	       		
           	       		if (data.success === "true") {
           	       			// Success message
           	       			$("#updateCourse").modal('hide');
           	       			$.pnotify({
           						title : 'New course added!',
           						type : 'info',
           						text : 'Added new course!'
           					});
           	       		}
           	   		});
           		return	false;
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
        </script>
          
        <div class="main-content">
            <div class="breadcrumb-container">
                <ul class="xbreadcrumbs">
                    <li>
                        <a href="dashboard.html">
                            <i class="icon-photon home"></i>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">Courses</a>
                    </li>
                    <li class="current">
                        <a href="javascript:;">View</a>
                    </li>
                </ul>
            </div>   
            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>View Courses</small></h2>
                <h3><small>You can view all courses offered by ICT.</small></h3>
            </header>
            
        <!-- Button trigger modal -->
		<button class="btn btn-primary btn-lg" data-toggle="modal"
			data-target="#addCourse">Add Course</button>

		<!-- Modal -->
		<div class="modal fade" id="addCourse" tabindex="-1" role="dialog"
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
									type="text" class="form-control" name="courseCode" id="courseCode"
									placeholder="Course Code" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Subject Name</span><br /> <input
									type="text" class="form-control" name="courseName" id="courseName"
									placeholder="Subject Name" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Crossover Course</span><br /> <input
									type="text" class="form-control" name="crossoverCourse" id="crossoverCourse"
									placeholder="Course" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Reference to old course</span><br /> <input
									type="text" class="form-control" name="referenceCourse" id="referenceCourse"
									placeholder="Reference" />
							</div>
							
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="submit" onclick="validateAddCourse();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF ADD MODAL -->
            
       	<!-- Modal -->
		<div class="modal fade" id="updateCourse" tabindex="-1" role="dialog"
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
						<form role="form" id="addCourseForm" class="form-horizonatal">
							<div class="input-group">
								<input type="hidden" class="form-control" name="courseId" id="courseId" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Course Code</span><br /> <input
									type="text" class="form-control" name="courseCode" id="courseCode"
									placeholder="Course Code" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Subject Name</span><br /> <input
									type="text" class="form-control" name="courseName" id="courseName"
									placeholder="Subject Name" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Crossover Course</span><br /> <input
									type="text" class="form-control" name="crossoverCourse" id="crossoverCourse"
									placeholder="Course" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Reference to old course</span><br /> <input
									type="text" class="form-control" name="referenceCourse" id="referenceCourse"
									placeholder="Reference" />
							</div>
							
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="submit" onclick="validateAddCourse();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF UPDATE MODAL -->    
            
            <form class="form-horizontal">
                <div class="row-fluid">
                    <div class="span6">
                        <div class="container-fluid">
                            <div class="form-legend" id="Headings">ABCD1234
                                <span class="pull-right">
                                    <a href="update_course.html"><i class="icon-photon pen_alt_stroke"></i></a>&nbsp;
                                    <a href="#"><i class="icon-photon x_alt"></i></a>&nbsp;&nbsp;
                                </span>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Subject Name:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        Sample Course
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Crossover Course:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        No Crossover Course
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Offered In:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        CPA, CPD
                                    </div>
                                </div>
                            </div>
                        </div><!-- end container -->
                    </div>
                    <div class="span6">
                        <div class="container-fluid">
                            <div class="form-legend" id="Headings">MAPA5230 <small>(formerly known as MAP523)</small>
                                <span class="pull-right">
                                    <a href="update_course.html"><i class="icon-photon pen_alt_stroke"></i></a>&nbsp;
                                    <a href="#"><i class="icon-photon x_alt"></i></a>&nbsp;&nbsp;
                                </span>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Subject Name:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        Mobile App Development - iOS
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Crossover Course:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        DPSA9230 <small>(formerly known as DPS923)</small>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Offered In:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        CPA, CPD
                                    </div>
                                </div>
                            </div>
                        </div><!-- end container -->
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span6">
                        <div class="container-fluid">
                            <div class="form-legend" id="Headings">IBCA2330 <small>(formerly known as IBC233)</small>
                                <span class="pull-right">
                                    <a href="update_course.html"><i class="icon-photon pen_alt_stroke"></i></a>&nbsp;
                                    <a href="#"><i class="icon-photon x_alt"></i></a>&nbsp;&nbsp;
                                </span>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Subject Name:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        iSERIES Business Computing
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Crossover Course:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        No Crossover Course
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Offered In:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        CPA, CPD
                                    </div>
                                </div>
                            </div>
                        </div><!-- end container -->
                    </div>
                    <div class="span6">
                        <div class="container-fluid">
                            <div class="form-legend" id="Headings">IPCA1440 <small>(formerly known as IPC144)</small>
                                <span class="pull-right">
                                    <a href="update_course.html"><i class="icon-photon pen_alt_stroke"></i></a>&nbsp;
                                    <a href="#"><i class="icon-photon x_alt"></i></a>&nbsp;&nbsp;
                                </span>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Subject Name:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        Introduction to Programming Using C
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Crossover Course:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        No Crossover Course
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Offered In:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        CPA, CPD
                                    </div>
                                </div>
                            </div>
                        </div><!-- end container -->
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span6">
                        <div class="container-fluid">
                            <div class="form-legend" id="Headings">PRJA5660 <small>(formerly known as PRJ566)</small>
                                <span class="pull-right">
                                    <a href="update_course.html"><i class="icon-photon pen_alt_stroke"></i></a>&nbsp;
                                    <a href="#"><i class="icon-photon x_alt"></i></a>&nbsp;&nbsp;
                                </span>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Subject Name:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        Project Planning and Management
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Crossover Course:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        No Crossover Course
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Offered In:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        CPA, CPD
                                    </div>
                                </div>
                            </div>
                        </div><!-- end container -->
                    </div>
                    <div class="span6">
                        <div class="container-fluid">
                            <div class="form-legend" id="Headings">PRJA6660 <small>(formerly known as PRJ666)</small>
                                <span class="pull-right">
                                    <a href="update_course.html"><i class="icon-photon pen_alt_stroke"></i></a>&nbsp;
                                    <a href="#"><i class="icon-photon x_alt"></i></a>&nbsp;&nbsp;
                                </span>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Subject Name:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        Project Implementation
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Crossover Course:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        No Crossover Course
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Offered In:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        CPA, CPD
                                    </div>
                                </div>
                            </div>
                        </div><!-- end container -->
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span6">
                        <div class="container-fluid">
                            <div class="form-legend" id="Headings">ULIA1010 <small>(formerly known as ULI101)</small>
                                <span class="pull-right">
                                    <a href="update_course.html"><i class="icon-photon pen_alt_stroke"></i></a>&nbsp;
                                    <a href="#"><i class="icon-photon x_alt"></i></a>&nbsp;&nbsp;
                                </span>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Subject Name:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        Introduction to Unix/Linux and the Internet
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Crossover Course:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        No Crossover Course
                                    </div>
                                </div>
                            </div>
                            <div class="control-group row-fluid">
                                <div class="span4">
                                    <label class="control-label">
                                        Offered In:
                                    </label>
                                </div>
                                <div class="span8">
                                    <div class="control-label">
                                        CNS, CPA, CPD, CTY
                                    </div>
                                </div>
                            </div>
                        </div><!-- end container -->
                    </div>
                </div>
            </form>
            
            
            
            
        </div>
    </body>
</html>
