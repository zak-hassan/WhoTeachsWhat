<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
   <head>
       <meta charset="utf-8">
       <title>Tables - Photon Admin Panel Theme</title>
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
    </div>       <div class="nav-fixed-topright" style="visibility: hidden">
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
            <h1><small>Tables</small></h1>
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
                                "title" : "Basic Non-responsive Table", 
                                "attr" : { "href" : "#Basic_Non-responsive_Table" } 
                            }
                        },
                                                {
                            "data" : { 
                                "title" : "Basic Non-responsive Bordered Table", 
                                "attr" : { "href" : "#Basic_Non-responsive_Bordered_Table" } 
                            }
                        },
                                                {
                            "data" : { 
                                "title" : "Sortable Non-responsive Table", 
                                "attr" : { "href" : "#Sortable_Non-responsive_Table" } 
                            }
                        },
                                                {
                            "data" : { 
                                "title" : "Basic Responsive Table", 
                                "attr" : { "href" : "#Basic_Responsive_Table" } 
                            }
                        },
                                                {
                            "data" : { 
                                "title" : "Sortable Responsive Table", 
                                "attr" : { "href" : "#Sortable_Responsive_Table" } 
                            }
                        },
                                                {
                            "data" : { 
                                "title" : "Sortable Responsive Media Table", 
                                "attr" : { "href" : "#Sortable_Responsive_Media_Table" } 
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
           <div class="breadcrumb-container">
    <ul class="xbreadcrumbs">
        <li>
            <a href="dashboard.html">
                <i class="icon-photon home"></i>
            </a>
        </li>
                <li class="current">
            <a href="javascript:;">Tables</a>
        </li>
    </ul>
</div>           <header>
               <i class="icon-big-notepad"></i>
               <h2><small>Tables</small></h2>
               <h3><small>Includes basic tables and datatables, with optional responsiveness</small></h3>
           </header>
           <form class="form-horizontal">
               <div id="Basic_Non-responsive_Table" class="row-fluid">
                   <div class="span12 span-table-title">
                       <div class="alert alert-info alert-block">
                           <i class="icon-alert icon-alert-info"></i>
                           <strong>Basic Non-responsive Table</strong>
                       </div>
                   </div>
               </div>


               <div class="container-fluid">

                       <!--Basic Non-responsive Table begin-->
                       <div class="row-fluid">
                           <div class="span12">
                               <table class="table table-striped">
                                   <thead class="">
                                       <tr>
                                           <th>#</th>
                                           <th>First Name</th>
                                           <th>Last Name</th>
                                           <th>Location</th>
                                           <th>Username</th>
                                       </tr>
                                   </thead>
                                   <tbody>
                                       <tr>
                                           <td>1</td>
                                           <td>Mark</td>
                                           <td>Otto</td>
                                           <td>North Charleston, USA</td>
                                           <td>@mdo</td>
                                       </tr>
                                       <tr>
                                           <td>2</td>
                                           <td>Angelica</td>
                                           <td>Otto</td>
                                           <td>North Charleston, USA</td>
                                           <td>@ango</td>
                                       </tr>
                                       <tr>
                                           <td>3</td>
                                           <td>Magdelena</td>
                                           <td>von Thornton</td>
                                           <td>Hamburg, Germany</td>
                                           <td>@fat</td>
                                       </tr>
                                       <tr>
                                           <td>4</td>
                                           <td>Larry</td>
                                           <td>the Bird</td>
                                           <td>Toronto, Canada</td>
                                           <td>@twitter</td>
                                       </tr>
                                   </tbody>
                               </table>
                           </div>
                       </div>
                       <!--Basic Non-responsive Table end-->

               </div><!-- end container -->


               <div id="Basic_Non-responsive_Bordered_Table" class="row-fluid">
                   <div class="span12 span-table-title">
                       <div class="alert alert-info alert-block">
                           <i class="icon-alert icon-alert-info"></i>
                           <strong>Basic Non-responsive Bordered Table</strong>
                       </div>
                   </div>
               </div>


               <div class="container-fluid">

                       <!--Basic Non-responsive Bordered Table begin-->
                       <div class="row-fluid">
                           <div class="span12">
                               <table class="table table-bordered table-striped">
                                   <thead class="">
                                       <tr>
                                           <th>#</th>
                                           <th>First Name</th>
                                           <th>Last Name</th>
                                           <th>Location</th>
                                           <th>Username</th>
                                       </tr>
                                   </thead>
                                   <tbody>
                                       <tr>
                                           <td>1</td>
                                           <td>Mark</td>
                                           <td>Otto</td>
                                           <td>North Charleston, USA</td>
                                           <td>@mdo</td>
                                       </tr>
                                       <tr>
                                           <td>2</td>
                                           <td>Angelica</td>
                                           <td>Otto</td>
                                           <td>North Charleston, USA</td>
                                           <td>@ango</td>
                                       </tr>
                                       <tr>
                                           <td>3</td>
                                           <td>Magdelena</td>
                                           <td>von Thornton</td>
                                           <td>Hamburg, Germany</td>
                                           <td>@fat</td>
                                       </tr>
                                       <tr>
                                           <td>4</td>
                                           <td>Larry</td>
                                           <td>the Bird</td>
                                           <td>Toronto, Canada</td>
                                           <td>@twitter</td>
                                       </tr>
                                   </tbody>
                               </table>
                           </div>
                       </div>
                       <!--Basic Non-responsive Bordered Table end-->

               </div><!-- end container -->


               <div id="Sortable_Non-responsive_Table" class="row-fluid">
                   <div class="span12 span-table-title">
                       <div class="alert alert-info alert-block">
                           <i class="icon-alert icon-alert-info"></i>
                           <strong>Sortable Non-responsive Table</strong>
                       </div>
                   </div>
               </div>


               <div class="container-fluid">

                       <!--Sortable Non-responsive Table begin-->
                       <div class="row-fluid">
                           <div class="span12">
                               <table class="table table-striped" id="tableSortable">
                                   <thead>
                                       <tr>
                                           <th>Rendering engine</th>
                                           <th>Browser</th>
                                           <th>Platform(s)</th>
                                           <th>Engine version</th>
                                           <th>CSS grade</th>
                                       </tr>
                                   </thead>
                                   <tbody>
                                       <tr class="gradeX">
                                           <td>Trident</td>
                                           <td>
                                               Internet
                                               Explorer 
                                               4.0
                                           </td>
                                           <td>Win 95+</td>
                                           <td class="center">4</td>
                                           <td class="center">X</td>
                                       </tr>
                                       <tr class="gradeC">
                                           <td>Trident</td>
                                           <td>Internet
                                               Explorer 5.0</td>
                                           <td>Win 95+</td>
                                           <td class="center">5</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Trident</td>
                                           <td>Internet
                                               Explorer 5.5</td>
                                           <td>Win 95+</td>
                                           <td class="center">5.5</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Trident</td>
                                           <td>Internet
                                               Explorer 6</td>
                                           <td>Win 98+</td>
                                           <td class="center">6</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Trident</td>
                                           <td>Internet Explorer 7</td>
                                           <td>Win XP SP2+</td>
                                           <td class="center">7</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Trident</td>
                                           <td>AOL browser (AOL desktop)</td>
                                           <td>Win XP</td>
                                           <td class="center">6</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Firefox 1.0</td>
                                           <td>Win 98+ / OSX.2+</td>
                                           <td class="center">1.7</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Firefox 1.5</td>
                                           <td>Win 98+ / OSX.2+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Firefox 2.0</td>
                                           <td>Win 98+ / OSX.2+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Firefox 3.0</td>
                                           <td>Win 2k+ / OSX.3+</td>
                                           <td class="center">1.9</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Camino 1.0</td>
                                           <td>OSX.2+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Camino 1.5</td>
                                           <td>OSX.3+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Netscape 7.2</td>
                                           <td>Win 95+ / Mac OS 8.6-9.2</td>
                                           <td class="center">1.7</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Netscape Browser 8</td>
                                           <td>Win 98SE+</td>
                                           <td class="center">1.7</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Netscape Navigator 9</td>
                                           <td>Win 98+ / OSX.2+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.0</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.1</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1.1</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.2</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1.2</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.3</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1.3</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.4</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1.4</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.5</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1.5</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.6</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1.6</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.7</td>
                                           <td>Win 98+ / OSX.1+</td>
                                           <td class="center">1.7</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.8</td>
                                           <td>Win 98+ / OSX.1+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Seamonkey 1.1</td>
                                           <td>Win 98+ / OSX.2+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Epiphany 2.20</td>
                                           <td>Gnome</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>Safari 1.2</td>
                                           <td>OSX.3</td>
                                           <td class="center">125.5</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>Safari 1.3</td>
                                           <td>OSX.3</td>
                                           <td class="center">312.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>Safari 2.0</td>
                                           <td>OSX.4+</td>
                                           <td class="center">419.3</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>Safari 3.0</td>
                                           <td>OSX.4+</td>
                                           <td class="center">522.1</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>OmniWeb 5.5</td>
                                           <td>OSX.4+</td>
                                           <td class="center">420</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>iPod Touch / iPhone</td>
                                           <td>iPod</td>
                                           <td class="center">420.1</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>S60</td>
                                           <td>S60</td>
                                           <td class="center">413</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 7.0</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 7.5</td>
                                           <td>Win 95+ / OSX.2+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 8.0</td>
                                           <td>Win 95+ / OSX.2+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 8.5</td>
                                           <td>Win 95+ / OSX.2+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 9.0</td>
                                           <td>Win 95+ / OSX.3+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 9.2</td>
                                           <td>Win 88+ / OSX.3+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 9.5</td>
                                           <td>Win 88+ / OSX.3+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera for Wii</td>
                                           <td>Wii</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Nokia N800</td>
                                           <td>N800</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Nintendo DS browser</td>
                                           <td>Nintendo DS</td>
                                           <td class="center">8.5</td>
                                           <td class="center">C/A<sup>1</sup></td>
                                       </tr>
                                       <tr class="gradeC">
                                           <td>KHTML</td>
                                           <td>Konqureror 3.1</td>
                                           <td>KDE 3.1</td>
                                           <td class="center">3.1</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>KHTML</td>
                                           <td>Konqureror 3.3</td>
                                           <td>KDE 3.3</td>
                                           <td class="center">3.3</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>KHTML</td>
                                           <td>Konqureror 3.5</td>
                                           <td>KDE 3.5</td>
                                           <td class="center">3.5</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeX">
                                           <td>Tasman</td>
                                           <td>Internet Explorer 4.5</td>
                                           <td>Mac OS 8-9</td>
                                           <td class="center">-</td>
                                           <td class="center">X</td>
                                       </tr>
                                       <tr class="gradeC">
                                           <td>Tasman</td>
                                           <td>Internet Explorer 5.1</td>
                                           <td>Mac OS 7.6-9</td>
                                           <td class="center">1</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeC">
                                           <td>Tasman</td>
                                           <td>Internet Explorer 5.2</td>
                                           <td>Mac OS 8-X</td>
                                           <td class="center">1</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Misc</td>
                                           <td>NetFront 3.1</td>
                                           <td>Embedded devices</td>
                                           <td class="center">-</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Misc</td>
                                           <td>NetFront 3.4</td>
                                           <td>Embedded devices</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeX">
                                           <td>Misc</td>
                                           <td>Dillo 0.8</td>
                                           <td>Embedded devices</td>
                                           <td class="center">-</td>
                                           <td class="center">X</td>
                                       </tr>
                                       <tr class="gradeX">
                                           <td>Misc</td>
                                           <td>Links</td>
                                           <td>Text only</td>
                                           <td class="center">-</td>
                                           <td class="center">X</td>
                                       </tr>
                                       <tr class="gradeX">
                                           <td>Misc</td>
                                           <td>Lynx</td>
                                           <td>Text only</td>
                                           <td class="center">-</td>
                                           <td class="center">X</td>
                                       </tr>
                                       <tr class="gradeC">
                                           <td>Misc</td>
                                           <td>IE Mobile</td>
                                           <td>Windows Mobile 6</td>
                                           <td class="center">-</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeC">
                                           <td>Misc</td>
                                           <td>PSP browser</td>
                                           <td>PSP</td>
                                           <td class="center">-</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeU">
                                           <td>Other browsers</td>
                                           <td>All others</td>
                                           <td>-</td>
                                           <td class="center">-</td>
                                           <td class="center">U</td>
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
               </div><!-- end container -->


               <div id="Basic_Responsive_Table" class="row-fluid">
                   <div class="span12 span-table-title">
                       <div class="alert alert-info alert-block">
                           <i class="icon-alert icon-alert-info"></i>
                           <strong>Basic Responsive Table</strong>
                       </div>
                   </div>
               </div>


               <div class="container-fluid">

                       <!--Basic Responsive Table begin-->
                       <div class="row-fluid">
                           <div class="span12">
                               <table class="table table-striped table-responsive">
                                   <thead class="">
                                       <tr>
                                           <th>#</th>
                                           <th>First Name</th>
                                           <th>Last Name</th>
                                           <th>Location</th>
                                           <th>Username</th>
                                       </tr>
                                   </thead>
                                   <tbody>
                                       <tr>
                                           <td>1</td>
                                           <td>Mark</td>
                                           <td>Otto</td>
                                           <td>North Charleston, USA</td>
                                           <td>@mdo</td>
                                       </tr>
                                       <tr>
                                           <td>2</td>
                                           <td>Angelica</td>
                                           <td>Otto</td>
                                           <td>North Charleston, USA</td>
                                           <td>@ango</td>
                                       </tr>
                                       <tr>
                                           <td>3</td>
                                           <td>Magdelena</td>
                                           <td>von Thornton</td>
                                           <td>Hamburg, Germany</td>
                                           <td>@fat</td>
                                       </tr>
                                       <tr>
                                           <td>4</td>
                                           <td>Larry</td>
                                           <td>the Bird</td>
                                           <td>Toronto, Canada</td>
                                           <td>@twitter</td>
                                       </tr>
                                   </tbody>
                               </table>
                           </div>
                       </div>
                       <!--Basic Responsive Table end-->

               </div><!-- end container -->


               <div id="Sortable_Responsive_Table" class="row-fluid">
                   <div class="span12 span-table-title">
                       <div class="alert alert-info alert-block">
                           <i class="icon-alert icon-alert-info"></i>
                           <strong>Sortable Responsive Table</strong>
                       </div>
                   </div>
               </div>


               <div class="container-fluid">


                       <!--Sortable Responsive Table begin-->
                       <div class="row-fluid">
                           <div class="span12">
                               <table class="table table-striped table-responsive" id="tableSortableRes">
                                   <thead>
                                       <tr>
                                           <th>Rendering engine</th>
                                           <th>Browser</th>
                                           <th>Platform(s)</th>
                                           <th>Engine version</th>
                                           <th>CSS grade</th>
                                       </tr>
                                   </thead>
                                   <tbody>
                                       <tr class="gradeX">
                                           <td>Trident</td>
                                           <td>
                                               Internet
                                               Explorer 
                                               4.0
                                           </td>
                                           <td>Win 95+</td>
                                           <td class="center">4</td>
                                           <td class="center">X</td>
                                       </tr>
                                       <tr class="gradeC">
                                           <td>Trident</td>
                                           <td>Internet
                                               Explorer 5.0</td>
                                           <td>Win 95+</td>
                                           <td class="center">5</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Trident</td>
                                           <td>Internet
                                               Explorer 5.5</td>
                                           <td>Win 95+</td>
                                           <td class="center">5.5</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Trident</td>
                                           <td>Internet
                                               Explorer 6</td>
                                           <td>Win 98+</td>
                                           <td class="center">6</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Trident</td>
                                           <td>Internet Explorer 7</td>
                                           <td>Win XP SP2+</td>
                                           <td class="center">7</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Trident</td>
                                           <td>AOL browser (AOL desktop)</td>
                                           <td>Win XP</td>
                                           <td class="center">6</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Firefox 1.0</td>
                                           <td>Win 98+ / OSX.2+</td>
                                           <td class="center">1.7</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Firefox 1.5</td>
                                           <td>Win 98+ / OSX.2+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Firefox 2.0</td>
                                           <td>Win 98+ / OSX.2+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Firefox 3.0</td>
                                           <td>Win 2k+ / OSX.3+</td>
                                           <td class="center">1.9</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Camino 1.0</td>
                                           <td>OSX.2+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Camino 1.5</td>
                                           <td>OSX.3+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Netscape 7.2</td>
                                           <td>Win 95+ / Mac OS 8.6-9.2</td>
                                           <td class="center">1.7</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Netscape Browser 8</td>
                                           <td>Win 98SE+</td>
                                           <td class="center">1.7</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Netscape Navigator 9</td>
                                           <td>Win 98+ / OSX.2+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.0</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.1</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1.1</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.2</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1.2</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.3</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1.3</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.4</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1.4</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.5</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1.5</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.6</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">1.6</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.7</td>
                                           <td>Win 98+ / OSX.1+</td>
                                           <td class="center">1.7</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Mozilla 1.8</td>
                                           <td>Win 98+ / OSX.1+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Seamonkey 1.1</td>
                                           <td>Win 98+ / OSX.2+</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Gecko</td>
                                           <td>Epiphany 2.20</td>
                                           <td>Gnome</td>
                                           <td class="center">1.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>Safari 1.2</td>
                                           <td>OSX.3</td>
                                           <td class="center">125.5</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>Safari 1.3</td>
                                           <td>OSX.3</td>
                                           <td class="center">312.8</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>Safari 2.0</td>
                                           <td>OSX.4+</td>
                                           <td class="center">419.3</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>Safari 3.0</td>
                                           <td>OSX.4+</td>
                                           <td class="center">522.1</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>OmniWeb 5.5</td>
                                           <td>OSX.4+</td>
                                           <td class="center">420</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>iPod Touch / iPhone</td>
                                           <td>iPod</td>
                                           <td class="center">420.1</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Webkit</td>
                                           <td>S60</td>
                                           <td>S60</td>
                                           <td class="center">413</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 7.0</td>
                                           <td>Win 95+ / OSX.1+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 7.5</td>
                                           <td>Win 95+ / OSX.2+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 8.0</td>
                                           <td>Win 95+ / OSX.2+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 8.5</td>
                                           <td>Win 95+ / OSX.2+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 9.0</td>
                                           <td>Win 95+ / OSX.3+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 9.2</td>
                                           <td>Win 88+ / OSX.3+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera 9.5</td>
                                           <td>Win 88+ / OSX.3+</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Opera for Wii</td>
                                           <td>Wii</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Nokia N800</td>
                                           <td>N800</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Presto</td>
                                           <td>Nintendo DS browser</td>
                                           <td>Nintendo DS</td>
                                           <td class="center">8.5</td>
                                           <td class="center">C/A<sup>1</sup></td>
                                       </tr>
                                       <tr class="gradeC">
                                           <td>KHTML</td>
                                           <td>Konqureror 3.1</td>
                                           <td>KDE 3.1</td>
                                           <td class="center">3.1</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>KHTML</td>
                                           <td>Konqureror 3.3</td>
                                           <td>KDE 3.3</td>
                                           <td class="center">3.3</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>KHTML</td>
                                           <td>Konqureror 3.5</td>
                                           <td>KDE 3.5</td>
                                           <td class="center">3.5</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeX">
                                           <td>Tasman</td>
                                           <td>Internet Explorer 4.5</td>
                                           <td>Mac OS 8-9</td>
                                           <td class="center">-</td>
                                           <td class="center">X</td>
                                       </tr>
                                       <tr class="gradeC">
                                           <td>Tasman</td>
                                           <td>Internet Explorer 5.1</td>
                                           <td>Mac OS 7.6-9</td>
                                           <td class="center">1</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeC">
                                           <td>Tasman</td>
                                           <td>Internet Explorer 5.2</td>
                                           <td>Mac OS 8-X</td>
                                           <td class="center">1</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Misc</td>
                                           <td>NetFront 3.1</td>
                                           <td>Embedded devices</td>
                                           <td class="center">-</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeA">
                                           <td>Misc</td>
                                           <td>NetFront 3.4</td>
                                           <td>Embedded devices</td>
                                           <td class="center">-</td>
                                           <td class="center">A</td>
                                       </tr>
                                       <tr class="gradeX">
                                           <td>Misc</td>
                                           <td>Dillo 0.8</td>
                                           <td>Embedded devices</td>
                                           <td class="center">-</td>
                                           <td class="center">X</td>
                                       </tr>
                                       <tr class="gradeX">
                                           <td>Misc</td>
                                           <td>Links</td>
                                           <td>Text only</td>
                                           <td class="center">-</td>
                                           <td class="center">X</td>
                                       </tr>
                                       <tr class="gradeX">
                                           <td>Misc</td>
                                           <td>Lynx</td>
                                           <td>Text only</td>
                                           <td class="center">-</td>
                                           <td class="center">X</td>
                                       </tr>
                                       <tr class="gradeC">
                                           <td>Misc</td>
                                           <td>IE Mobile</td>
                                           <td>Windows Mobile 6</td>
                                           <td class="center">-</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeC">
                                           <td>Misc</td>
                                           <td>PSP browser</td>
                                           <td>PSP</td>
                                           <td class="center">-</td>
                                           <td class="center">C</td>
                                       </tr>
                                       <tr class="gradeU">
                                           <td>Other browsers</td>
                                           <td>All others</td>
                                           <td>-</td>
                                           <td class="center">-</td>
                                           <td class="center">U</td>
                                       </tr>
                                   </tbody>
                               </table>
                           </div>
                       </div>
                       <!--Sortable Responsive Table end-->

               </div><!-- end container -->


               <div id="Sortable_Responsive_Media_Table" class="row-fluid">
                   <div class="span12 span-table-title">
                       <div class="alert alert-info alert-block">
                           <i class="icon-alert icon-alert-info"></i>
                           <strong>Sortable Responsive Media Table</strong>
                       </div>
                   </div>
               </div>


               <div class="container-fluid">


                       <!--Sortable Responsive Media Table begin-->
                       <div class="row-fluid">
                           <div class="span12">
                               <table class="table table-striped table-responsive" id="tableSortableResMed">
                                   <thead class="cf sorthead">
                                       <tr>
                                           <th>Image</th>
                                           <th>Date Modified</th>
                                           <th>size</th>
                                           <th>Kind</th>
                                           <th>Comments</th>
                                       </tr>
                                   </thead>
                                   <tbody>
                                       <tr class="gradeX">
                                           <td>
                                               <img src="images/photon/user1.jpg" alt="user" />
                                           </td>
                                           <td>Today, 11:17 PM</td>
                                           <td>212kb</td>
                                           <td class="center">JPEG image</td>
                                           <td class="center">Consectetur adipisicing elit</td>
                                       </tr>
                                       <tr class="gradeX">
                                           <td>
                                               <img src="images/photon/user2.jpg" alt="user" />
                                           </td>
                                           <td>Oct 14, 2012 11:17 PM</td>
                                           <td>167kb</td>
                                           <td class="center">JPEG image</td>
                                           <td class="center">Do eiusmod tempor incididunt</td>
                                       </tr>
                                       <tr class="gradeX">
                                           <td>
                                               <img src="images/photon/user3.jpg" alt="user" />
                                           </td>
                                           <td>Oct 14, 2012 10:11 PM</td>
                                           <td>202kb</td>
                                           <td class="center">JPEG image</td>
                                           <td class="center">Labore et dolore magna</td>
                                       </tr>
                                       <tr class="gradeX">
                                           <td>
                                               <img src="images/photon/user4.jpg" alt="user" />
                                           </td>
                                           <td>Oct 14, 2012 09:27 PM</td>
                                           <td>194kb</td>
                                           <td class="center">JPEG image</td>
                                           <td class="center">Ut enim ad minim veniam</td>
                                       </tr>
                                       <tr class="gradeX">
                                           <td>
                                               <img src="images/photon/user5.jpg" alt="user" />
                                           </td>
                                           <td>Oct 14, 2012 08:53 PM</td>
                                           <td>167kb</td>
                                           <td class="center">JPEG image</td>
                                           <td class="center">Aliquip ex ea commodo</td>
                                       </tr>
                                   </tbody>
                               </table>

                           </div>
                       </div>
                       <!--Sortable Responsive Media Table end-->

           </div><!-- end container -->
       </form>
   </div>
        </body>
</html>