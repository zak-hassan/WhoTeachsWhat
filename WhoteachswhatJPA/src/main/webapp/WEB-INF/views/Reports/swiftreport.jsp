<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
<jsp:include page="../includes/navigation-template.jsp" />
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
<table border="1" class="table table-striped" id="swiftTable">
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
</table>

<!--  SWIFT REPORT ENDS -->


                    </div><!-- end container -->
                </div>
   			 </div>
         </form>
            
		<!-- Modal -->
		<div class="modal fade" id="viewSwiftModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Generate Swift</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="viewSwiftForm" class="form-horizonatal">
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
							<div class="input-group">
								<span class="input-group-addon">Semester:</span> <br /> <select
									class="form-control" id="semesterId" name="Semester id">
									<c:forEach items="${allSemesters }" var="semester">
									<option value="${semester.getSemesterId() }">${semester.getSemesterName() }</option>
									</c:forEach>
								</select>
							</div>
							<div class="input-group">
								<span class="input-group-addon">Year: </span><br /> <input
									type="text" class="form-control" name="Year" id="year" />
							</div>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="getSwift();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF ADD MODAL -->
        </div>
        <!-- Button trigger modal -->
		<button class="btn btn-primary btn-lg" data-toggle="modal"
			data-target="#viewSwiftModal">Generate Report</button>
    </body>
</html>
