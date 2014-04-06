<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Manage Responsibilities - View</title>
        <jsp:include page="includes/static_includes.jsp" />
		<script type="text/javascript" src="views_ajax_requests/manageResponsibilitiesAJAX.js"></script>
    </head>

    <body class="body-inner">
            
    <div class="btn-toolbar btn-mobile-menus">
        <button class="btn btn-main-menu"></button>
        <button class="btn btn-user-menu"><i class="icon-logo"></i></button>
    </div>

<!-- Navigation starts -->
<jsp:include page="includes/navigation-template.jsp" />
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
            <a href="#">Admin Panel</a>
        </li>
        <li class="current">
            <a href="viewResponsibility">Responsibilities</a>
        </li>
    </ul>
</div>            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Manage Responsibilities</small></h2>
                <h3><small>Update and remove responsibilities</small></h3>
            </header>
            <form method="post" action="api/responsibility" id="AddResponsibilityTypeForm" 
            	onsubmit="return validateAddResponsibilityType();" class="form-horizontal">
                <div class="container-fluid">
			<!-- START OF NEW CONTENT -->
				<!--Sortable Non-responsive Table begin-->	
				<br/>
								
					<style type="text/css">
						td.align {
							text-align: right;
							vertical-align:middle;
						}
						
						td {
							vertical-align:middle;
						}
					</style>
					
					<div class="row-fluid">
						<div class="span12">
						   <table class="table table-striped" id="tableSortable">
							   <thead>
 									   <tr>
											<th>#</th>
											<th>Code</th>
											<th>Name</th>
											<th width="20%" style="text-align: right">Operation(s)</th>
										</tr>
 							   </thead>
							<tbody>
							  <c:forEach items="${allRespon }" var="respon">
								 <tr>
						  			<td>${respon.getResponsibilityId() }</td>
										<td>${respon.getResponsibilityCode() }</td>
										<td>${respon.getResponsibilityName() }</td>
									<td class="align">
										<a 
											class="bootstrap-tooltip" data-original-title="Update"
											onclick="updateForm('${respon.getResponsibilityId() }', 
												'${respon.getResponsibilityCode() }', 
												'${respon.getResponsibilityName()}')"
											data-toggle="modal" data-target="#updateResponsibilityModal">
											<i class="icon-edit"></i>
										</a> 
										<a 
											class="bootstrap-tooltip" data-original-title="Delete" 
											onclick="deleteForm('${respon.getResponsibilityId() }', 
											'${respon.getResponsibilityName() }')"
											data-toggle="modal" data-target="#deleteModal">
											<i class="icon-trash"></i></a> 
									</td>
								</tr>							
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
                </div><!-- end container -->

            </form>
            
        <!-- Button trigger modal -->
		<button class="btn btn-primary btn-lg" data-toggle="modal"
			data-target="#addResponsibilityModal">Add Responsibility</button>

		<!-- Modal -->
		<div class="modal fade" id="addResponsibilityModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Add Responsibility</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="addResponsibilityForm" class="form-horizonatal">
							<div class="input-group">
								<span class="input-group-addon">Responsibility Code</span><br /> <input
									type="text" class="form-control" name="Responsibility code" id="respon_code"
									placeholder="Code" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Responsibility Type</span><br /> <input
									type="text" class="form-control" name="Responsibility type" id="respon_name"
									placeholder="Type" />
							</div>
							
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="addResponsibility();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF ADD MODAL -->
		
		<!-- Modal -->
		<div class="modal fade" id="updateResponsibilityModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Update Responsibility</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="updateResponsibilityForm" class="form-horizonatal">
							<div class="input-group">
								<input type="hidden" class="form-control" name="Responsibility id"
									id="up_respon_id" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Responsibility Code</span><br /> <input
									type="text" class="form-control" name="Responsibility code" id="up_respon_code" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Responsibility Type</span><br /> <input
									type="text" class="form-control" name="Responsibility type" id="up_respon_name" />
							</div>
							
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="updateResponsibility();"
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
			<input type="hidden" id="del_respon_id" name="Responsibility id" />
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
                	onclick="deleteResponsibility()">Yes</a>
            </div>
        </div>
		
		<!--  END DELETE MODAL -->    
        
        </div>
        </body>
</html>
