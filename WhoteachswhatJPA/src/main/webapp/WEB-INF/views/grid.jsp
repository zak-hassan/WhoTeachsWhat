<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Grid - Photon Admin Panel Theme</title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
        <link rel="shortcut icon" href="favicon.ico" />
        <link rel="apple-touch-icon" href="iosicon.png" />
<!--    DEVELOPMENT LESS -->
<!--          <link rel="stylesheet/less" href="css/photon.less" media="all" />
        <link rel="stylesheet/less" href="css/photon-responsive.less" media="all" /> -->
<!--    PRODUCTION CSS -->
        <link rel="stylesheet" href="css/css/photon.css" media="all" />
<link rel="stylesheet" href="css/css/photon-pt2.css" media="all" />

        <link rel="stylesheet" href="css/css/photon-responsive.css" media="all" />

<!--[if IE]>
        <link rel="stylesheet" type="text/css" href="css/css_compiled/ie-only-min.css" />
        

<![endif]-->

<!--[if lt IE 9]>
        <link rel="stylesheet" type="text/css" href="css/css_compiled/ie8-only-min.css" />
        <script type="text/javascript" src="js/plugins/excanvas.js"></script>
        <script type="text/javascript" src="js/plugins/html5shiv.js"></script>
        <script type="text/javascript" src="js/plugins/respond.min.js"></script>
        <script type="text/javascript" src="js/plugins/fixFontIcons.js"></script>
<![endif]-->

        
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/jquery-ui.min.js"></script>

<script type="text/javascript" src="js/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="js/plugins/modernizr.custom.js"></script>
<script type="text/javascript" src="js/plugins/jquery.pnotify.min.js"></script>
<script type="text/javascript" src="js/plugins/less-1.3.1.min.js"></script>        
<script type="text/javascript" src="js/plugins/xbreadcrumbs.js"></script>
<script type="text/javascript" src="js/plugins/jquery.maskedinput-1.3.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.autotab-1.1b.js"></script>
<script type="text/javascript" src="js/plugins/charCount.js"></script>
<script type="text/javascript" src="js/plugins/jquery.textareaCounter.js"></script>
<script type="text/javascript" src="js/plugins/elrte.min.js"></script>
<script type="text/javascript" src="js/plugins/elrte.en.js"></script>
<script type="text/javascript" src="js/plugins/select2.js"></script>
<script type="text/javascript" src="js/plugins/jquery-picklist.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/plugins/additional-methods.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.form.js"></script>
<script type="text/javascript" src="js/plugins/jquery.metadata.js"></script>
<script type="text/javascript" src="js/plugins/jquery.mockjax.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.rating.pack.js"></script>
<script type="text/javascript" src="js/plugins/farbtastic.js"></script>
<script type="text/javascript" src="js/plugins/jquery.timeentry.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.jstree.js"></script>
<script type="text/javascript" src="js/plugins/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="js/plugins/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.mCustomScrollbar.js"></script>
<script type="text/javascript" src="js/plugins/jquery.flot.js"></script>
<script type="text/javascript" src="js/plugins/jquery.flot.stack.js"></script>
<script type="text/javascript" src="js/plugins/jquery.flot.pie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.flot.resize.js"></script>
<script type="text/javascript" src="js/plugins/raphael.2.1.0.min.js"></script>
<script type="text/javascript" src="js/plugins/justgage.1.0.1.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.qrcode.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.clock.js"></script>
<script type="text/javascript" src="js/plugins/jquery.countdown.js"></script>
<script type="text/javascript" src="js/plugins/jquery.jqtweet.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/bootstrap-fileupload.min.js"></script>
<script type="text/javascript" src="js/plugins/prettify/prettify.js"></script>
<script type="text/javascript" src="js/plugins/bootstrapSwitch.js"></script>
<script type="text/javascript" src="js/plugins/mfupload.js"></script>

<script type="text/javascript" src="js/common.js"></script>

    </head>

    <body class="body-inner">
            
    <div class="btn-toolbar btn-mobile-menus">
        <button class="btn btn-main-menu"></button>
        <button class="btn btn-user-menu"><i class="icon-logo"></i></button>
    </div>

    <div class="nav-fixed-left" style="visibility: hidden">
        <ul class="nav nav-side-menu">
            <li class="shadow-layer"></li>
            <li>
                <a href="dashboard.html" >
                    <i class="icon-photon home"></i>
                    <span class="nav-selection">Dashboard</span>
                                    </a>
            </li>
            <li>
                <a href="javascript:;" class="sub-nav-container">
                    <i class="icon-photon list_nested"></i>
                    <span class="nav-selection">Form Elements</span>
                    <i class="icon-menu-arrow"></i>                </a>
                <div class="sub-nav">
                    <ul class="nav">
                        <li>
                            <a href="form-elements-input-fields.html">Input Fields</a>
                        </li>
                        <li>
                            <a href="form-elements-masked-input-fields.html">Masked Input Fields</a>
                        </li>
                        <li>
                            <a href="form-elements-autotabs.html">Autotabs</a>
                        </li>
                        <li>
                            <a href="form-elements-text-areas.html">Text Areas</a>
                        </li>
                        <li>
                            <a href="form-elements-select-menus.html">Select Menus</a>
                        </li>
                        <li>
                            <a href="form-elements-other-form-elements.html">Other Form Elements</a>
                        </li>
                        <li>
                            <a href="form-elements-form-validation.html">Form Validation</a>
                        </li>
                        <li>
                            <a href="form-elements-ui-elements.html">UI Elements</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li>
                <a href="javascript:;" class="sub-nav-container">
                    <i class="icon-photon chart_alt"></i>
                    <span class="nav-selection">Graphs and Statistics</span>
                    <i class="icon-menu-arrow"></i>                </a>
                <div class="sub-nav">
                    <ul class="nav">
                        <li>
                            <a href="graphs-and-statistics-graphs.html">Graphs</a>
                        </li>
                        <li>
                            <a href="graphs-and-statistics-statistical-elements.html">Statistical Elements</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li>
                <a href="typography.html" >
                    <i class="icon-photon book_alt2"></i>
                    <span class="nav-selection">Typography</span>
                                    </a>
            </li>
            <li>
                <a href="grid.html" >
                    <i class="icon-photon hash"></i>
                    <span class="nav-selection">Grid</span>
                                    </a>
            </li>
            <li>
                <a href="tables.html" >
                    <i class="icon-photon new_window"></i>
                    <span class="nav-selection">Tables</span>
                                    </a>
            </li>
            <li>
                <a href="maps.html" >
                    <i class="icon-photon map_pin_stroke"></i>
                    <span class="nav-selection">Maps</span>
                                    </a>
            </li>
            <li>
                <a href="sidebar-widgets.html" >
                    <i class="icon-photon book_alt"></i>
                    <span class="nav-selection">Sidebar Widgets</span>
                                    </a>
            </li>
            <li>
                <a href="javascript:;" class="sub-nav-container">
                    <i class="icon-photon bolt"></i>
                    <span class="nav-selection">Error Pages</span>
                    <i class="icon-menu-arrow"></i>                </a>
                <div class="sub-nav">
                    <ul class="nav">
                        <li>
                            <a href="error-pages-400-bad-request.html">400 Bad Request</a>
                        </li>
                        <li>
                            <a href="error-pages-401-unauthorized.html">401 Unauthorized</a>
                        </li>
                        <li>
                            <a href="error-pages-403-forbidden.html">403 Forbidden</a>
                        </li>
                        <li>
                            <a href="error-pages-404-page-not-found.html">404 Page Not Found</a>
                        </li>
                        <li>
                            <a href="error-pages-500-internal-server-error.html">500 Internal Server Error</a>
                        </li>
                        <li>
                            <a href="error-pages-503-service-unavailable.html">503 Service Unavailable</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li>
                <a href="help.html" >
                    <i class="icon-photon info"></i>
                    <span class="nav-selection">Help</span>
                                    </a>
            </li>
            <li class="nav-logout">
                <a href="index.html">
                    <i class="icon-photon key_stroke"></i><span class="nav-selection">Logout</span>
                </a>
            </li>
        </ul>
    </div>        <div class="nav-fixed-topright" style="visibility: hidden">
    <ul class="nav nav-user-menu">
        <li class="user-sub-menu-container">
            <a href="javascript:;">
                <i class="user-icon"></i><span class="nav-user-selection">Theme Options</span><i class="icon-menu-arrow"></i>
            </a>
            <ul class="nav user-sub-menu">
                <li class="light">
                    <a href="javascript:;">
                        <i class='icon-photon stop'></i>Light Version
                    </a>
                </li>
                <li class="dark">
                    <a href="javascript:;">
                        <i class='icon-photon stop'></i>Dark Version
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:;">
                <i class="icon-photon mail"></i>
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <i class="icon-photon comment_alt2_stroke"></i>
                <div class="notification-count">12</div>
            </a>
        </li>
    </ul>
</div>

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

        
<div class="panel">
    <div class="panel-content filler">
        <div class="panel-logo"></div>
        <div class="panel-header">
            <h1><small>Grid</small></h1>
            <button type="submit" class="btn btn-mini"><i class="icon-photon move_alt2"></i> Add New</button>
        </div>
        <div class="panel-search container-fluid">
            <form class="form-horizontal" action="javascript:;">
                <input id="panelSearch" placeholder="Search" type="text" name="panelSearch">
                <button class="btn btn-search"></button>
                <script>
                    $().ready(function(){
                        var searchTags = [
                            "Dashboard",
                            "Form Elements",
                            "Graphs and Statistics",
                            "Typography",
                            "Grid",
                            "Tables",
                            "Maps",
                            "Sidebar Widgets",
                            "Error Pages",
                            "Help",
                            "Input Fields",
                            "Masked Input Fields",
                            "Autotabs",
                            "Text Areas",
                            "Select Menus",
                            "Other Form Elements",
                            "Form Validation",
                            "UI Elements",
                            "Graphs",
                            "Statistical Elements",
                            "400 Bad Request",
                            "401 Unauthorized",
                            "403 Forbidden",
                            "404 Page Not Found",
                            "500 Internal Server Error",
                            "503 Service Unavailable"
                        ];
                        $( "#panelSearch" ).autocomplete({
                            source: searchTags
                        });
                    });            
                </script>
            </form>
        </div>
                    <script type="text/javascript">
        $(function () {
            $("#jstree").jstree({ 
                "json_data" : {
                    "data" : [
                                                {
                            "data" : { 
                                "title" : "Grid System", 
                                "attr" : { "href" : "#Grid_System" } 
                            }
                        },
                                                {
                            "data" : { 
                                "title" : "Internal Grid System", 
                                "attr" : { "href" : "#Internal_Grid_System" } 
                            }
                        },
                                            ]
                },
                "plugins" : [ "themes", "json_data", "ui" ]
            })
            .bind("click.jstree", function (event) {
                var node = $(event.target).closest("li");
                document.location.href = node.find('a').attr("href");
                return false;
            })
            .delegate("a", "click", function (event, data) { event.preventDefault(); });
        });
    </script>
        <div class="sidebarMenuHolder">
        <div class="JStree">
            <div class="Jstree_shadow_top"></div>
            <div id="jstree"></div>
            <div class="Jstree_shadow_bottom"></div>
        </div>
    </div>    </div>
    <div class="panel-slider">
        <div class="panel-slider-center">
            <div class="panel-slider-arrow"></div>
        </div>
    </div>
</div>
        <div class="main-content">
            <div class="breadcrumb-container" style="width: 100%">
    <ul class="xbreadcrumbs">
        <li>
            <a href="dashboard.html">
                <i class="icon-photon home"></i>
            </a>
        </li>
                <li class="current">
            <a href="javascript:;">Grid</a>
        </li>
    </ul>
</div>            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Grid</small></h2>
                <h3><small>The default Bootstrap grid system that utilizes 12 columns.</small></h3>
            </header>
            <form class="form-horizontal">
                <div id="Grid_System" class="container-fluid no-outter-border">

                        <!--Grid System begin-->
                        <div class="row-fluid">
                            <div class="span-filler span12">
                                <label class="grid-label">Grid 12 (100%)</label>
                            </div>
                        </div>
                        
                        <div class="row-fluid">
                            <div class="span-filler span6">
                                <label class="grid-label">Grid 6 (50%)</label>
                            </div>
                            <div class="span-filler span6">
                                <label class="grid-label">Grid 6 (50%)</label>
                            </div>
                        </div>
                        
                        <div class="row-fluid">
                            <div class="span-filler span4">
                                <label class="grid-label">Grid 4 (33%)</label>
                            </div>
                            <div class="span-filler span4">
                                <label class="grid-label">Grid 4 (33%)</label>
                            </div>
                            <div class="span-filler span4">
                                <label class="grid-label">Grid 4 (33%)</label>
                            </div>
                        </div>
                        
                        <div class="row-fluid">
                            <div class="span-filler span3">
                                <label class="grid-label">Grid 3 (25%)</label>
                            </div>
                            <div class="span-filler span3">
                                <label class="grid-label">Grid 3 (25%)</label>
                            </div>
                            <div class="span-filler span3">
                                <label class="grid-label">Grid 3 (25%)</label>
                            </div>
                            <div class="span-filler span3">
                                <label class="grid-label">Grid 3 (25%)</label>
                            </div>
                        </div>
                        
                        <div class="row-fluid">
                            <div class="span-filler span2">
                                <label class="grid-label">Grid 2 (16%)</label>
                            </div>
                            <div class="span-filler span2">
                                <label class="grid-label">Grid 2 (16%)</label>
                            </div>
                            <div class="span-filler span2">
                                <label class="grid-label">Grid 2 (16%)</label>
                            </div>
                            <div class="span-filler span2">
                                <label class="grid-label">Grid 2 (16%)</label>
                            </div>
                            <div class="span-filler span2">
                                <label class="grid-label">Grid 2 (16%)</label>
                            </div>
                            <div class="span-filler span2">
                                <label class="grid-label">Grid 2 (16%)</label>
                            </div>
                        </div>
                        
                         <div class="row-fluid">
                            <div class="span-filler span4">
                                <label class="grid-label">Grid 4 (33%)</label>
                            </div>
                            <div class="span-filler span8">
                                <label class="grid-label">Grid 8 (66%)</label>
                            </div>
                        </div>
                        
                         <div class="row-fluid">
                            <div class="span-filler span2">
                                <label class="grid-label">Grid 2 (16%)</label>
                            </div>
                            <div class="span-filler span2">
                                <label class="grid-label">Grid 2 (16%)</label>
                            </div>
                            <div class="span-filler span6">
                                <label class="grid-label">Grid 6 (50%)</label>
                            </div>
                             <div class="span-filler span2">
                                <label class="grid-label">Grid 2 (16%)</label>
                            </div>
                        </div>
                         <div class="row-fluid">
                            <div class="span-filler span2">
                                <label class="grid-label">Grid 2 (16%)</label>
                            </div>
                            <div class="span-filler span4 offset6">
                                <label class="grid-label">Grid 4 (33%) Offset By 6 (50%)</label>
                            </div>
                        </div>
                        
                        <!--Grid System end-->

                </div><!-- end container -->
                
                <div class="container-fluid">

                        <div class="form-legend" id="Internal_Grid_System">Internal Grid System</div>
                        <!--Internal Grid System begin-->
                        <div class="control-group row-fluid">
                            <div class="span3">
                                <label class="control-label" for="inputSpan9">Grid 3 + 9 </label>
                            </div>
                            <div class="span9">
                                <div class="controls">
                                    <input id="inputSpan9" type="text" name="inputSpan9" />
                                </div>
                            </div>
                        </div>
                        <div class="control-group row-fluid">
                            <div class="span3">
                                <label class="control-label" for="inputSpan8">Grid 3 + 8 </label>
                            </div>
                            <div class="span8">
                                <div class="controls">
                                    <input id="inputSpan8" type="text" name="inputSpan8" />
                                </div>
                            </div>
                        </div>
                        <div class="control-group row-fluid">
                            <div class="span3">
                                <label class="control-label" for="inputSpan7">Grid 3 + 7 </label>
                            </div>
                            <div class="span7">
                                <div class="controls">
                                    <input id="inputSpan7" type="text" name="inputSpan7" />
                                </div>
                            </div>
                        </div>
                        <div class="control-group row-fluid">
                            <div class="span3">
                                <label class="control-label" for="inputSpan6">Grid 3 + 6 </label>
                            </div>
                            <div class="span6">
                                <div class="controls">
                                    <input id="inputSpan6" type="text" name="inputSpan6" />
                                </div>
                            </div>
                        </div>
                        <div class="control-group row-fluid">
                            <div class="span3">
                                <label class="control-label" for="inputSpan5">Grid 3 + 5 </label>
                            </div>
                            <div class="span5">
                                <div class="controls">
                                    <input id="inputSpan5" type="text" name="inputSpan5" />
                                </div>
                            </div>
                        </div>
                        <div class="control-group row-fluid">
                            <div class="span3">
                                <label class="control-label" for="inputSpan4">Grid 3 + 4 </label>
                            </div>
                            <div class="span4">
                                <div class="controls">
                                    <input id="inputSpan4" type="text" name="inputSpan4" />
                                </div>
                            </div>
                        </div>
                        <div class="control-group row-fluid">
                            <div class="span3">
                                <label class="control-label" for="inputSpan3">Grid 3 + 3 </label>
                            </div>
                            <div class="span3">
                                <div class="controls">
                                    <input id="inputSpan3" type="text" name="inputSpan3" />
                                </div>
                            </div>
                        </div>
                        <div class="control-group row-fluid">
                            <div class="span3">
                                <label class="control-label" for="inputSpan2">Grid 3 + 2 </label>
                            </div>
                            <div class="span2">
                                <div class="controls">
                                    <input id="inputSpan2" type="text" name="inputSpan2" />
                                </div>
                            </div>
                        </div>
                        <div class="control-group row-fluid">
                            <div class="span3">
                                <label class="control-label" for="inputSpan1">Grid 3 + 1 </label>
                            </div>
                            <div class="span1">
                                <div class="controls">
                                    <input id="inputSpan1" type="text" name="inputSpan1" />
                                </div>
                            </div>
                        </div>
                        <!--Internal Grid System end-->

                </div><!-- end container -->
            </form>
        </div>
        </body>
</html>