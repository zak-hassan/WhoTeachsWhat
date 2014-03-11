<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Update Complimentary Hour Type</title>
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
    @Purpose: AJAX posting and validation for updating a comp hour type
     
   */
    
    var validateUpdatePermission= function() {
       	$.post("ajaxUpdatePermission",{ faculty_first_name: document.getElementById("permissionId").value })
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
            <a href="#">Permissions</a>
        </li>
		<li>
			<a href="Anil_ManageCompHours.html">Manage Permissons</a>
		</li>
        <li class="current">
            <a href="Anil_UpdateCompHourType.html">Update</a>
        </li>
    </ul>
</div>            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Update Permission Name</small></h2>
                <h3><small>Modify Permission Name</small></h3>
            </header>
            <form method="post" action="ajaxUpdatePermission" id="UpdatePermissioneForm" 
            	onsubmit="return validateUpdatePermission();" class="form-horizontal">
                <div class="container-fluid">
			<!-- START OF NEW CONTENT -->
				
				
				<div id="Input_Field_with_Placeholder" class="control-group row-fluid">
						<div class="span2">
							<label class="control-label" for="comp_hour_type">Permission Name</label>
						</div>
						<div class="span3">
							<div class="controls">
								<input id="permissionId" type="text" 
									placeholder="This field will be preloaded."
									name="permissionId" />
							</div>
						</div>
						
						<div class="span3" style="height: 25px; margin-top: 15px;">
							<button type="submit" class="btn btn-info">Update</button>
						</div>
					</div>

			<!-- END OF NEW CONTENT-->
                </div><!-- end container -->

            </form>
        </div>
        </body>
</html>
