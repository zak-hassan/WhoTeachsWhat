<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Teaching History Report</title>
        <jsp:include page="../includes/static_includes.jsp" />
        <script type="text/javascript" src="views_ajax_requests/swiftreportAJAX.js"></script>
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
