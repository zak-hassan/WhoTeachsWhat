<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Faculty - Update</title>
	    <jsp:include page="../includes/static_includes.jsp" />
    </head>

    <body class="body-inner">
            
    <div class="btn-toolbar btn-mobile-menus">
        <button class="btn btn-main-menu"></button>
        <button class="btn btn-user-menu"><i class="icon-logo"></i></button>
    </div>
<!-- Navigation starts -->
<jsp:include page="../includes/menu.jsp" />
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
// Setting up select2 dropdown
$("#simpleSelectBox").select2();
    });

    
    /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding a faculty member
     
   */
    
    var validateUpdateFaculty= function() {
       	$.post("ajaxUpdateFaculty",{ faculty_first_name: document.getElementById("faculty_first_name").value, 
       		faculty_last_name: document.getElementById("faculty_last_name").value,
       		faculty_status: document.getElementById("faculty_status").value })
       		.done(function(data) {
           		console.log("AJAX RETURNED"+JSON.stringify(data));
           		
           		if (data.success === "true") {
           			// Success message
           		}
       		});
       };


</script>
        <div class="wrapper">
<div style="width:100;" class="breadcrumb-container">
				<ul class="xbreadcrumbs">
					<li>
						<a href="dashboard.html">
							<i class="icon-photon home"></i>
						</a>
					</li>
						<li>
							<a href="#" class="span1">Faculty</a>
						</li>
						<li class="current">
							<a href="javascript:;" class="span1">View</a>
						</li>
						
					</ul>
					</div>
				</div>
            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Update Faculty</small></h2>
                <h3><small>You can update faculty members information here</small></h3>
            </header>
            <form method="post" action="ajaxUpdateFaculty" id="UpdateFacultyForm" onsubmit="return validateUpdateFaculty();"
            	class="form-horizontal">
                <div class="container-fluid">

                        <div class="form-legend" id="Input_Field">Create new faculty</div>

                        <!--Input Field begin-->
                        <div class="control-group row-fluid">
                            <div class="span3">
                                <label class="control-label" for="faculty_first_name">First Name</label>
                            </div>
                            <div class="span9">
                                <div class="controls">
                                    <input id="faculty_first_name" type="text" placeholder="First Name ... " name="faculty_first_name" value="Fred" />
                                </div>
                            </div>
                        </div>
                        <!--Input Field end-->
                        <!--Input Field with Placeholder begin-->
                        <div id="Input_Field_with_Placeholder" class="control-group row-fluid">
                            <div class="span3">
                                <label class="control-label" for="faculty_last_name">Last Name</label>
                            </div>
                            <div class="span9">
                                <div class="controls">
                                    <input id="faculty_last_name" value="Flinstone" type="text" placeholder="Last Name ... " name="faculty_last_name" />
                                </div>
                            </div>
                        </div>
                        <!--Input Field with Placeholder end-->


                        
						
						
                        <!--Input Field with Auto Complete begin-->
                        <div id="Input_Field_with_Auto_Complete" class="control-group row-fluid">
                            <div class="span3">
                                <label class="control-label" for="faculty_status">Status
<a href="#" class="bootstrap-tooltip" data-placement="top" data-original-title="Full-time , Part-time or Unactivated"><i class="icon-photon info-circle"></i></a>
 </label>
                            </div>
                            <div class="span2">
                            
                <div class="controls">
                <select name="faculty_status" id="faculty_status">
                        <option selected="" value=""> - Choose - </option>
                        <option value="Winter" selected="selected">Full-Time</option>
                        <option value="Summer">Part-Time</option>
                        <option value="Fall">Unavailable</option>
                </select>
                </div>

			</div>
                            <!--Input Field with Auto Complete Script-->
                            <script>
                                $().ready(function(){
                                    var availableTags = ["Full-Time","Part-Time","Deactivated"];
 ;
                                    $( "#inputFieldAC" ).autocomplete({
                                        source: availableTags
                                    });
                                });            
                            </script>
                        </div>
                        <!--Input Field with Auto Complete end-->
                        <div id="Input_Field_with_Auto_Complete" class="control-group row-fluid">
						
<div class="span2 offset4">
<!-- <button class="btn btn-large btn-block btn-info" onclick="$.pnotify({ title: 'Updated Faculty', type: 'info', text: 'Updated faculty member in system'}); return false;" type="button">Save</button> -->
<button class="btn btn-large btn-block btn-info" type="submit">Save</button>
</div>
<div class="span2">
<button class="btn btn-large btn-block" type="button">Clear</button>
</div>

</div>
                </div><!-- end container -->



            </form>
        </div>
        </body>
</html>
