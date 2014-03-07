<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Manage Faculty Courses</title>
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

    </head>

    <body class="body-inner">
            
    <div class="btn-toolbar btn-mobile-menus">
        <button class="btn btn-main-menu"></button>
        <button class="btn btn-user-menu"><i class="icon-logo"></i></button>
    </div>

<!-- Navigation starts -->
<script> 
    $(function(){
      $("#includedContent").load("navigation-template.html"); 
    });
    </script>
<div id="includedContent"></div>
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
            <div class="breadcrumb-container">
    <ul class="xbreadcrumbs">
        <li>
            <a href="dashboard.html">
                <i class="icon-photon home"></i>
            </a>
        </li>
       <li>
            <a href="#">Admin Panel</a>
        </li>
		<li>
			<a href="Anil_ManageFacultyOperations.html">Manage Faculty</a>
		</li>
        <li class="current">
            <a href="Anil_ManageFacultyCourses.html">Courses</a>
        </li>
    </ul>
</div>            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Manage Faculty Courses</small></h2>
                <h3><small>Add or remove courses from a faculty member</small></h3>
            </header>
            <form class="form-horizontal">
                <div class="container-fluid">
			<!-- START OF NEW CONTENT -->
					<!--Sortable Non-responsive Table begin-->
					<!-- Display courses they can teach and add new ones -->
					
					<div id="Input_Field_with_Placeholder" class="control-group row-fluid">
                        <div class="span2">
                            <label class="control-label" for="facultyName">Faculty Member</label>
						</div>
                        <div class="span3">
							<div class="controls">
								<input id="courseCode" type="text" 
									placeholder="Please enter course code. This textbox will autocomplete in a future implementation."
									name="courseCode" />
                            </div>
                        </div>
                    </div>
					
					<div id="Input_Field_with_Placeholder" class="control-group row-fluid">
                        <div class="span2">
                            <label class="control-label" for="courseCode">Course Code</label>
						</div>
                        <div class="span1">
							<div class="controls">
								<input id="courseCode" type="text" 
									placeholder="Please enter course code. This textbox will autocomplete in a future implementation."
									name="courseCode" />
                            </div>
                        </div>
                    </div>
					
					<br/>
					<div class="row-fluid">
						<div class="span2 offset4">
							<button type="button" class="btn btn-large btn-block btn-info">Add</button>
						</div>
						<div class="span2">
							<button type="button" class="btn btn-large btn-block">Cancel</button>
						</div>
					</div>

					<br/><br/>
					
					<!--Sortable Non-responsive Table begin-->

					<style type="text/css">
						td.align {
							vertical-align:middle;
						}
					</style>
					
					<p> This table will only show up if a faculty member's name has been entered in the faculty member text box above</p>
					
					<div class="row-fluid">
						<div class="span12">
						   <table class="table table-striped" id="tableSortable">
							   <thead>
								   <tr>
									   <tr>
											<th>Course Code</th>
											<th>Course Name</th>
											<th>Times taught</th>
											<th>Operation(s)</th>
										</tr>
								   </tr>
							   </thead>
							   <tbody>
								   <tr>
										<td class="align"><a href="#">PRJ566</a></td>
										<td><label>Project Planning and Management</label></td>
										<td class="align">4</td>
										<td class="align"><a href="#">Remove</a></td>
								   </tr>
								   <tr>
										<td class="align"><a href="#">SYS466</a></td>
										<td><label>Analysis and Design using OO Models</label></td>
										<td class="align">3</td>
										<td class="align"><a href="#">Remove</a></td>
								   </tr>
								   <tr>
										<td class="align"><a href="#">PRJ505</a></td>
										<td><label>Systems Analysis and Project Management</label></td>
										<td class="align">1</td>
										<td class="align"><a href="#">Remove</a></td>
								   </tr>
								   <tr>
										<td class="align"><a href="#">SRT611</a></td>
										<td><label>Security Arts: Privacy Issues</label></td>
										<td class="align">1</td>
										<td class="align"><a href="#">Remove</a></td>
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
				
			<!-- END OF NEW CONTENT-->
                </div><!-- end container -->

            </form>
        </div>
        </body>
</html>
