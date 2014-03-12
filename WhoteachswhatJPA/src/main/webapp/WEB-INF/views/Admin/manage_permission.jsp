<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Manage Users - Admin Panel</title>
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
    @Purpose: AJAX posting and validation for adding a user
     
   */
    
   var validateAddPermission= function() {
   	$.post("ajaxAddPermission",{ userId: document.getElementById("permissionId").value })
   		.done(function(data) {
       		console.log("AJAX RETURNED"+JSON.stringify(data));
       		
       		if (data.success === "true") {
       			// Success message
       		}
   		});
   };
    
    
</script>
        <div class="wrapper">
            <div class="breadcrumb-container">
    <ul class="xbreadcrumbs">
        <li>
            <a href="dashboard.html">
                <i class="icon-photon home"></i>
            </a>
        </li>
        <li>
            <a href="#">Manage Permissions</a>
        </li>
		<li class="current">
			<a href="Anil_ManageUsers.html">Manage Users</a>
		</li>
    </ul>
</div>            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Manage Permissions</small></h2>
                <h3><small>Add, Update and Delete Permissions</small></h3>
            </header>
            <form method="post" action="ajaxAddPermission" id="AddPermissionForm" onsubmit="return validateAddPermission();"
             class="form-horizontal">
                <div class="container-fluid">
			<!-- START OF NEW CONTENT -->
			
				<!-- http://getbootstrap.com/components/ -->

					<!--Sortable Non-responsive Table begin-->

					<style type="text/css">
						td.align {
							text-align: right;
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
									   <tr>
											<th>#</th>
											<th>User(s)</th>
											<th width="25%" style="text-align: right">Operation(s)</th>
										</tr>
								   </tr>
							   </thead>
							   <tbody>
								   <tr>
										<td>1</td>
										<td><label><a href="#">Administrator</a></label></td>
										<td class="align">
											<a href="#">Update</a> |
											<a href="#">Delete</a>
										</td>
								   </tr>
								   <tr>
										<td>2</td>
										<td><label><a href="#">Level 2 Coordinator</a></label></td>
										<td class="align">
											<a href="#">Update</a> |
											<a href="#">Delete</a>
										</td>
								   </tr>
								   <tr>
										<td>3</td>
										<td><label><a href="#">Level 1 Coordinator</a></label></td>
										<td class="align">
											<a href="#">Update</a> |
											<a href="">Delete</a>
								   </tr>
								   <tr>
										<td>4</td>
										<td><label><a href="#">Scheduler</a></label></td>
										<td class="align">
											<a href="#">Update</a> |
											<a href="#">Delete</a>
										</td>
								   </tr>
								   <tr>
										<td>5</td>
										<td><label><a href="#">Cooridinator</a></label></td>
										<td class="align">
											<a href="#">Update</a> |
											<a href="#">Delete</a>
										</td>
								   </tr>
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
					
					<div id="Input_Field_with_Placeholder" class="control-group row-fluid">
                        <div class="span1">
                            <label class="control-label" for="permissionId">New Permission</label>
						</div>
                        <div class="span3">
							<div class="controls">
								<input id="permissionId" type="text" 
									placeholder="Enter new permission to add to system"
									name="permissionId" />
                            </div>
                        </div>
						<div class="span3" style="height: 25px; margin-top: 15px;">
							<button type="submit" class="btn btn-info">Add</button>
						</div>
                    </div>
					<br/>
				
			<!-- END OF NEW CONTENT-->
                </div><!-- end container -->

            </form>
        </div>
        </body>
</html>
