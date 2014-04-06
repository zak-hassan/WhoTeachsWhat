<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Teaching History Report</title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
        <link rel="shortcut icon" href="favicon.ico" />
        <link rel="apple-touch-icon" href="iosicon.png" />
<!--    DEVELOPMENT LESS -->
<!--          <link rel="stylesheet/less" href="static/css/photon.less" media="all" />
        <link rel="stylesheet/less" href="static/css/photon-responsive.less" media="all" /> -->
<!--    PRODUCTION CSS -->
        <link rel="stylesheet" href="static/css/css/photon.css" media="all" />
        <link rel="stylesheet" href="static/css/css/photon-pt2.css" media="all" />

        <link rel="stylesheet" href="static/css/css/photon-responsive.css" media="all" />

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

        
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/jquery-ui.min.js"></script>
<script type="text/javascript" src="static/js/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="static/js/plugins/modernizr.custom.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.pnotify.min.js"></script>
<script type="text/javascript" src="static/js/plugins/less-1.3.1.min.js"></script>        
<script type="text/javascript" src="static/js/plugins/xbreadcrumbs.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.maskedinput-1.3.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.autotab-1.1b.js"></script>
<script type="text/javascript" src="static/js/plugins/charCount.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.textareaCounter.js"></script>
<script type="text/javascript" src="static/js/plugins/elrte.min.js"></script>
<script type="text/javascript" src="static/js/plugins/elrte.en.js"></script>
<script type="text/javascript" src="static/js/plugins/select2.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery-picklist.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript" src="static/js/plugins/additional-methods.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.form.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.metadata.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.mockjax.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.rating.pack.js"></script>
<script type="text/javascript" src="static/js/plugins/farbtastic.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.timeentry.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.jstree.js"></script>
<script type="text/javascript" src="static/js/plugins/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.mCustomScrollbar.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.flot.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.flot.stack.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.flot.pie.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.flot.resize.js"></script>
<script type="text/javascript" src="static/js/plugins/raphael.2.1.0.min.js"></script>
<script type="text/javascript" src="static/js/plugins/justgage.1.0.1.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.qrcode.min.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.clock.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.countdown.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.jqtweet.js"></script>
<script type="text/javascript" src="static/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="static/js/plugins/bootstrap-fileupload.min.js"></script>
<script type="text/javascript" src="static/js/plugins/prettify/prettify.js"></script>
<script type="text/javascript" src="static/js/plugins/bootstrapSwitch.js"></script>
<script type="text/javascript" src="static/js/plugins/mfupload.js"></script>
<script type="text/javascript" src="static/js/common.js"></script>
<script type="text/javascript" src="static/js/bootrestful.js"></script>
    </head>

    <body class="body-inner">
            
        <div class="btn-toolbar btn-mobile-menus">
            <button class="btn btn-main-menu"></button>
            <button class="btn btn-user-menu"><i class="icon-logo"></i></button>
        </div>
<!-- Navigation starts -->

<!-- Navigation Starts -->
<div class="nav-fixed-left">
	<ul class="nav nav-side-menu">
		<li class="shadow-layer"></li>
		<li>
			<a href="welcome.html" >
				<i class="icon-photon home"></i>
				<span class="nav-selection">Dashboard</span>
			</a>
		</li>
		<li>
			<a href="#" >
				<i class="icon-photon layers_alt"></i>
				<span class="nav-selection">Admin Panel</span>
				<i class="icon-menu-arrow"></i>
			</a>
			<div class="sub-nav">
				<ul class="nav">
					<li>
						<a href="manageUsers">Manage Users</a>
					</li>
					<li>
						<a href="manageAccessLevel">Manage Access Level</a>
					</li>
					<li>
						<a href="viewCourseInSemester">Manage Course Sections</a>
					</li>
					<li>
						<a href="viewPrepTime">Manage Prep Time</a>
					</li>
					<li>
						<a href="viewEvalFactor">Manage Evaluation Factor</a>
					</li>
					<li>
						<a href="manageTeachingType">Manage Teaching Type</a>
					</li>
					<li>
						<a href="viewSemester">Manage Semester</a>
					</li>
					<li>
						<a href="viewResponsibilityToFaculty">Manage Faculty Responsibilities</a>
					</li>
					<li>
						<a href="viewFacultyToCourseInSemesterYear">Manage Faculty To Course In Semester Year</a>
					</li>
				</ul>
			</div>
		</li>
		<li>
			<a href="viewFaculty" >
				<i class="icon-photon new_window"></i>
				<span class="nav-selection">Manage Faculty</span>
				<i class="icon-menu-arrow"></i>
			</a>
		</li>
		<li>
			<a href="viewCourse">
				<i class="icon-photon book_alt2"></i>
				<span class="nav-selection">Manage Course</span>
				<i class="icon-menu-arrow"></i>   
			</a>
		</li>
		<li>
			<a href="manageCompHours">
				<i class="icon-photon clock"></i>
				<span class="nav-selection">Manage Comp Hours</span>
				<i class="icon-menu-arrow"></i>   
			</a>
		</li>
		
		<li>
			<a href="viewResponsibility">
				<i class="icon-photon layers"></i>
				<span class="nav-selection">Manage Responsibilities</span>
				<i class="icon-menu-arrow"></i>   
			</a>
		</li>
		
		<li>
			<a href="#">
				<i class="icon-photon chart_alt"></i>
				<span class="nav-selection">Reports</span>
				<i class="icon-menu-arrow"></i>   
			</a>
			<div class="sub-nav">
				<ul class="nav">
					<li>
						<a href="whoTeachesWhat">Who Teaches What</a>
					</li>
					<li>
						<a href="coursesOfferingNextSemester">Courses Offered Next Semester</a>
					</li>
					<li>
						<a href="teachingHistory">Teaching History</a>
					</li>
				</ul>
			</div>
		</li>
		<li>
			<a href="help" >
				<i class="icon-photon info"></i>
				<span class="nav-selection">Help</span>
				<!--TODO: Create documentation page -->
		
			</a>
		</li>
		<li class="nav-logout">
			<a href="logout">
				<!--TODO: Create logout webservice -->
				<i class="icon-photon key_stroke"></i><span class="nav-selection">Logout</span>
			</a>
		</li>
	</ul>
</div>   
<!-- Navigation ends -->     

<!-- Navigation end -->
        <div class="wrapper">
            <div class="breadcrumb-container" style="width: 100%">
                <ul class="xbreadcrumbs">
                    <li>
                        <a href="dashboard.html">
                            <i class="icon-photon home"></i>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">Reports</a>
                    </li>
                    <li class="current">
                        <a href="javascript:;">Teaching History</a>
                    </li>
                </ul>
            </div>   
            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Generate Who Teaching History Report</small></h2>
                <h3><small>This report displays the summary who is teaching what at given semester and grouped by courses/semester since the beginning of time.</small></h3>
            </header>
            <form class="form-horizontal">
                <div class="span12">
                    <div class="container-fluid">


<!-- SWIFT REPORT STARTS -->
<table border="1" class="table table-striped">
    <caption class="text-left"><h3>&nbsp;Faculty Swift Report</h3></caption>
    <tr>
        <th>COURSE/ SUBJECT IDENTIFIER</th>
        <th>ASSN' TEACH HOURS</th>
        <th>LANG OF INST.</th>
        <th>TYPE</th>
        <th>FACTOR</th>
        <th>ATTB'D HRS</th>
        <th>ADDT'L ATTB'D</th>
        <th>CLASS SIZE</th>
        <th>
            <u>E</u><br />
            .03
        </th>
         <th>
            <u>R</u><br />
            .015
        </th>
         <th>
            <u>P</u><br />
            .0092
        </th>
<th> FACTOR </th>
        <th> ATTB'D HRS</th>
        <th> ADDT'L ATTB'D</th>
        <th> COMP HOURS ALLOW </th>
        <th> COMP HOURS ASSN'D</th>
        <th> REF</th>
        <th> TOTAL</th>
    </tr>
    <tr>
        <td>REFER. TO COLL. AGRMT</td>
        <td> 11.01 <br /> B & C</td>
        <td>11.01 <br /> D</td>        
        <td>11.01 <br /> D</td>        
        <td>11.01 <br /> D</td>
        <td>11.01 <br /> D</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> E</td>
        <td>11.01 <br /> F</td>
        <td>11.01 <br /> D, F, G</td>
        <td> </td>
        <td></td>
    </tr>
    <c:forEach items="${swift }" var="bi" >
    <tr>
        <td></td>
        <td></td>
        <td></td>        
        <td></td>        
        <td></td>        
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
        </c:forEach>

    
</table>

<!--  SWIFT REPORT ENDS -->


                    </div><!-- end container -->
                </div>
    </div>
            </form>
        </div>
    </body>
</html>
