<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Manage Faculty Complimentary Hours</title>
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
<jsp:include page="navigation-template.jsp" />
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
            <a href="Anil_ManageFacultyCompHours.html">Complimentary Hours</a>
        </li>
    </ul>
</div>            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Manage Faculty Complimentary Hours</small></h2>
                <h3><small>Update a faculty member's complimentary hours</small></h3>
            </header>
            <form class="form-horizontal">
                <div class="container-fluid">
			<!-- START OF NEW CONTENT -->
					<div id="Input_Field_with_Placeholder" class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="compHours">Faculty Member</label>
						</div>
                        <div class="span9">
							<div class="controls">
								<input id="facultyName" type="text" 
								placeholder="This field auto-load a faculty member's name if this page is visited from the view faculty page. Empty otherwise. Textbox will autocomplete."
								name="compHours" />
                            </div>
                        </div>
                    </div>
					
					<!--Simple Select Box begin-->

					<div id="Simple_Select_Box" class="control-group row-fluid">
						<div class="span3">
							<label class="control-label" for="simpleSelectBox">Complimentary Hour Type</label>
						</div>

						<div class="span9">
							<div class="controls">
								<select name="simpleSelectBox" id="simpleSelectBox">
									<option selected="" value="">Previously selected comp hour type, if any. If type is blank, the hours are set to null.</option>
									<option value="Beige">Beige</option>
									<option value="Black">Black</option>
									<option value="Blue">Blue</option>
								</select>
							</div>
						</div>

						<script>

							$().ready(function(){

								$("#simpleSelectBox").select2({

									dropdownCssClass: 'noSearch'

								});

							});

						</script>
					</div>
					<!--Simple Select Box end-->
					
					<div id="Input_Field_with_Placeholder" class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="compHours">Complimentary Hour(s)</label>
						</div>
                        <div class="span9">
							<div class="controls">
								<input id="facultyName" type="text" 
								placeholder="This field will load the previous complimentary hours for this employee, if any."
								name="compHours" />
                            </div>
                        </div>
                    </div>

                    <!--Text Area With Character Counter counter-->
                        <div id="Text_Area_With_Character_Counter" class="control-group row-fluid">
                            <div class="span3">
                                <label class="control-label">Complimentary Hour Notes</label>
                            </div>
                            <div class="span9">
                                <div class="controls">
                                    <textarea id="character_counter"  rows="2" class="auto-resize"></textarea>
                                    <script>
                                        $("#character_counter").charCount({
                                            counterText: 'Characters left: '
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>
                        <!--Text Area With Character Counter end-->
					
					<br/>
					<div class="row-fluid">
                    <div class="span2 offset4">
                        <button type="button" class="btn btn-large btn-block btn-info">Update</button>
                    </div>
                    <div class="span2">
                        <button type="button" class="btn btn-large btn-block">Cancel</button>
                    </div>
                </div>

				
			<!-- END OF NEW CONTENT-->
                </div><!-- end container -->

            </form>
        </div>
        </body>
</html>
