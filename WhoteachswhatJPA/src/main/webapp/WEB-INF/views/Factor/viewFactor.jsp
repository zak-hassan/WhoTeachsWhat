<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Factor - View</title>
<jsp:include page="../includes/static_includes.jsp" />
<script type="text/javascript" src="views_ajax_requests/viewFactorAJAX.js"></script>
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
				<li><a href="viewFactor">Manage Factor</a></li>
			</ul>
		</div>
		<header>
			<i class="icon-big-notepad"></i>
			<h2>
				<small>Factor - View</small>
			</h2>
			<h3>
				<small>Add, Update and Delete teaching factors</small>
			</h3>
		</header>
		<form method="post" action="api/semester" id="manageSemesterForm" class="form-horizontal">
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
									<th>Factor(s)</th>
									<th>Factor Values</th>
									<th width="25%" style="text-align: right">Operation(s)</th>
								</tr>
							</thead>
							<tbody>
								<%-- 
								<c:forEach items="${allSemesters }" var="semester">
									<tr>

										<td>${semester.getSemesterId() }</td>

										<td>${semester.getSemesterName() }</td>
										<td class="align">
											<a
												class="bootstrap-tooltip" data-original-title="Update"
												onclick="updateForm('${semester.getSemesterId() }', '${semester.getSemesterName() }')"
												data-toggle="modal" data-target="#updateSemesterModal">
												<i class="icon-edit"></i>
											</a>
											<a 
												class="bootstrap-tooltip" data-original-title="Delete" 
												onclick="deleteForm('${semester.getSemesterId() }', ' ${semester.getSemesterName() } ')"
												data-toggle="modal" data-target="#deleteModal">
												<i class="icon-trash"></i>
											</a>
										</td>
									</tr>
								</c:forEach>
								--%>
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
			data-target="#addFactorModal">Add factor</button>

		<!-- Modal -->
		<div class="modal fade" id="addFactorModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Add Factor</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="addFactorForm" class="form-horizonatal">
							<div class="input-group">
								<span class="input-group-addon">Factor Name:</span> <br /> <input
									type="text" class="form-control" name="Factor name" id="factorName"
									placeholder="Factor name" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Factor Value:</span> <br /> <input
									type="text" class="form-control" name="Factor value" id="factorValue" />
							</div>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="addFactor();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF ADD MODAL -->

		<!-- Modal -->
		<div class="modal fade" id="updateFactorModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Update Factor</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="updateFactorForm" class="form-horizonatal">
							<div class="input-group">
								<input type="hidden" class="form-control" name="Factor id"
									id="up_factorId" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Factor Name: </span><br /> <input
									type="text" class="form-control" name="Factor name"
									id="up_factorName" placeholder="Factor Name" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Factor Value: </span><br /> <input
									type="text" class="form-control" name="Factor value" id="up_factorValue" />
							</div>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="updateFactor();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer">
					</div>
				</div>
			</div>
		</div>

		<!--  END OF UPDATE MODAL -->
		
		<!--  BEGIN DELETE MODAL -->
		
		<div id="deleteModal" class="modal hide fade">
			<input type="hidden" id="del_factorId" name="Factor id" />
			<input type="hidden" id="del_factorName" />
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
                	onclick="deleteFactor()">Yes</a>
            </div>
        </div>
		
		<!--  END DELETE MODAL -->

	</div>
</body>
</html>
