<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Reports - Faculty Swift Report</title>
<jsp:include page="../includes/static_includes.jsp" />
<script type="text/javascript" src="views_ajax_requests/swiftreportAJAX.js"></script>

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
                    <li>
                        <a href="dashboard.html">
                            <i class="icon-photon home"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#">Reports</a>
                    </li>
                    <li class="current">
                        <a href="facultyswiftreport">Swift Report</a>
                    </li>
                </ul>
            </div>   
		<header>
			<i class="icon-big-notepad"></i>
			<h2><small>Faculty Swift Report</small></h2>
            <h3><small>
            	This report displays the number of courses, preparation, evaluation and complimentary hours assigned to
            	a faculty member in a given semester year
            </small></h3>
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
						<!-- SWIFT REPORT STARTS -->
						<table border="1" class="table table-striped" id="swiftTable">
    						<caption class="text-left"><h3>Faculty Swift Report</h3></caption>
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
		<!-- Modal -->
		
		<!-- Button trigger modal -->
		<button class="btn btn-primary btn-lg" data-toggle="modal"
			data-target="#viewSwiftModal">Generate Report</button>
		
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

		<!--  END OF VIEW MODAL -->

	</div>
</body>
</html>
