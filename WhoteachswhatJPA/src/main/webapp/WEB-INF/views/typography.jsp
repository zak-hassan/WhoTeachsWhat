<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Typography - Photon Admin Panel Theme</title>
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

    <body class="body-inner" onload="prettyPrint()">
            
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
            <h1><small>Typography</small></h1>
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
                                    "title" : "Headings", 
                                    "attr" : { "href" : "#Headings" } 
                                }
                            },
                                                        {
                                "data" : { 
                                    "title" : "Simple Text with Links", 
                                    "attr" : { "href" : "#Simple_Text_with_Links" } 
                                }
                            },
                                                        {
                                "data" : { 
                                    "title" : "Labels", 
                                    "attr" : { "href" : "#Labels" } 
                                }
                            },
                                                        {
                                "data" : { 
                                    "title" : "Badges", 
                                    "attr" : { "href" : "#Badges" } 
                                }
                            },
                                                        {
                                "data" : { 
                                    "title" : "Emphasis", 
                                    "attr" : { "href" : "#Emphasis" } 
                                }
                            },
                                                        {
                                "data" : { 
                                    "title" : "Lists", 
                                    "attr" : { "href" : "#Lists" } 
                                }
                            },
                                                        {
                                "data" : { 
                                    "title" : "Syntax Highlighter", 
                                    "attr" : { "href" : "#Syntax_Highlighter" } 
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
        </div>
    </div>
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
            <a href="javascript:;">Typography</a>
        </li>
    </ul>
</div>            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Typography</small></h2>
                <h3><small>Extends default Twitter Bootstrap typography</small></h3>
            </header>
            <form class="form-horizontal">
                <div class="container-fluid">

                        <div class="form-legend" id="Headings">Headings</div>

                        <!--Headings begin-->
                        <div class="control-group row-fluid">
                            <div class="span12 span-inset">
                                <h1>This is Heading 1</h1>
                                <h2>This is Heading 2</h2>
                                <h3>This is Heading 3 </h3>
                                <h4>This is Heading 4</h4>
                                <h5>This is Heading 5</h5>
                                <h6>This is Heading 6</h6>
                            </div>
                        </div>
                        <!--Headings end-->

                </div><!-- end container -->


                <div class="container-fluid">

                        <div class="form-legend" id="Simple_Text_with_Links">Simple Text with Links</div>

                        <!--Simple Text with Links begin-->
                        <div class="control-group row-fluid">
                            <div class="span12 span-inset">
                                <h4>Example of Simple Text With Links</h4>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc <a href="#">commodo elementum</a> dapibus. 
                                    Pellentesque sed lacus dui, sit amet viverra velit. Vivamus ut nunc in ante convallis rhoncus. 
                                    Phasellus scelerisque pretium tellus, et tincidunt tellus scelerisque at. Nam in lacus velit. 
                                    Nam mattis convallis ligula, in ultricies nibh pretium porttitor. Nunc in ligula dolor.
                                </p>
                                <p class="lead">
                                    Praesent id nibh sapien. Ut laoreet sem non orci consequat in scelerisque lacus fermentum. 
                                    Etiam odio enim, consequat in adipiscing non, pulvinar eu orci. Suspendisse nec nulla pretium turpis pellentesque eleifend.
                                </p>
                                <p>
                                    Nulla <a href="#">pellentesque</a> metus id purus tincidunt luctus id et magna. Praesent tortor lorem, lobortis nec sodales 
                                    lacinia, interdum in leo. Sed enim quam, egestas vitae pellentesque eget, condimentum ut lectus. Aenean id orci orci, 
                                    ut fringilla quam. Donec at suscipit nisl. Sed nibh tortor, fringilla at mattis vitae, gravida non nisi. Nunc quam urna, 
                                    interdum a bibendum eu, <a href="#">sollicitudin sit amet massa</a>. Vivamus egestas ullamcorper quam vitae adipiscing. 
                                    Vestibulum non ultricies elit. Aliquam pretium gravida ipsum, gravida facilisis nulla feugiat et.
                                </p>
                            </div>
                        </div>
                        <!--Simple Text with Links end-->

                </div><!-- end container -->


                <div class="container-fluid">

                        <div class="form-legend" id="Labels">Labels</div>

                        <!--Labels begin-->
                        <div class="control-group row-fluid">
                            <div class="span12 span-inset">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                                    Nunc <span class="label label-important">commodo elementum</span> dapibus.
                                    Pellentesque sed lacus dui, sit amet viverra velit. 
                                    Vivamus ut nunc in ante convallis rhoncus. 
                                    Phasellus <span class="label label-success">scelerisque</span> pretium tellus, et tincidunt tellus scelerisque at. 
                                    Nam in lacus velit. Nam mattis convallis ligula, in ultricies nibh pretium porttitor. 
                                    Nunc in ligula dolor.
                                </p>
                                <p>
                                    Praesent id nibh sapien.
                                    Ut laoreet sem non orci consequat in scelerisque lacus fermentum. 
                                    Etiam <span class="label label-info">odio</span> enim, consequat in adipiscing non, pulvinar eu orci. 
                                    Suspendisse nec nulla pretium turpis pellentesque eleifend. 
                                    <span class="label label-inverse">Nulla</span> pellentesque metus id purus tincidunt luctus id et magna. 
                                    Praesent tortor lorem, lobortis nec sodales lacinia, interdum in leo. 
                                    Sed enim quam, egestas vitae pellentesque eget, condimentum ut lectus. 
                                    Aenean id orci orci, ut <span class="label label-warning">fringilla</span> quam. Donec at suscipit nisl. 
                                    Sed nibh tortor, fringilla at mattis vitae, gravida non nisi.
                                    Nunc quam urna, <span class="label">interdum a bibendum</span> eu, sollicitudin sit amet massa.
                                    Vivamus egestas ullamcorper quam vitae adipiscing. Vestibulum non ultricies elit. 
                                    Aliquam pretium gravida ipsum, gravida facilisis nulla feugiat et.
                                </p>

                            </div>
                        </div>
                        <!--Labels end-->

                </div><!-- end container -->


                <div class="container-fluid">

                        <div class="form-legend" id="Badges">Badges</div>

                        <!--Badges begin-->
                        <div class="control-group row-fluid">
                            <div class="span12 span-inset">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                                    Nunc <span class="badge badge-important">commodo elementum</span> dapibus.
                                    Pellentesque sed lacus dui, sit amet viverra velit. 
                                    Vivamus ut nunc in ante convallis rhoncus. 
                                    Phasellus <span class="badge badge-success">scelerisque</span> pretium tellus, et tincidunt tellus scelerisque at. 
                                    Nam in lacus velit. Nam mattis convallis ligula, in ultricies nibh pretium porttitor. 
                                    Nunc in ligula dolor.
                                </p>
                                <p>
                                    Praesent id nibh sapien.
                                    Ut laoreet sem non orci consequat in scelerisque lacus fermentum. 
                                    Etiam <span class="badge badge-info">odio</span> enim, consequat in adipiscing non, pulvinar eu orci. 
                                    Suspendisse nec nulla pretium turpis pellentesque eleifend. 
                                    <span class="badge badge-inverse">Nulla</span> pellentesque metus id purus tincidunt luctus id et magna. 
                                    Praesent tortor lorem, lobortis nec sodales lacinia, interdum in leo. 
                                    Sed enim quam, egestas vitae pellentesque eget, condimentum ut lectus. 
                                    Aenean id orci orci, ut <span class="badge badge-warning">fringilla</span> quam. Donec at suscipit nisl. 
                                    Sed nibh tortor, fringilla at mattis vitae, gravida non nisi.
                                    Nunc quam urna, <span class="badge">interdum a bibendum</span> eu, sollicitudin sit amet massa.
                                    Vivamus egestas ullamcorper quam vitae adipiscing. Vestibulum non ultricies elit. 
                                    Aliquam pretium gravida ipsum, gravida facilisis nulla feugiat et.
                                </p>

                            </div>
                        </div>
                        <!--Badges end-->

                </div><!-- end container -->


                <div class="container-fluid">

                        <div class="form-legend" id="Emphasis">Emphasis</div>

                        <!--Emphasis begin-->
                        <div class="control-group row-fluid">
                            <div class="span12 span-inset">
                                <p>
                                    <strong>Some bold text example.</strong>
                                </p>
                                <p>
                                    <em>Some italic text example.</em>
                                </p>
                                <p>
                                    <small>Some fine print text example.</small>
                                </p>
                                <p class="muted">
                                    Some dimmed text example.
                                </p>
                                <p class="text-info">
                                    Some informative text example.
                                </p>
                                <p class="text-success">
                                    Some success text notification example.
                                </p>
                                <p class="text-warning">
                                    Some warning text example.
                                </p>
                                <p class="text-error">
                                    Some error text example.
                                </p>

                            </div>
                        </div>
                        <!--Emphasis end-->

                </div><!-- end container -->


                <div class="container-fluid">

                        <div class="form-legend" id="Lists">Lists</div>

                        <!--Lists begin-->
                        <div class="row-fluid row-lists">
                            <div class="span4 span-inset">
                                <h4>Unordered List</h4>
                                <ul>
                                    <li>Lorem ipsum dolor sit amet</li>
                                    <li>Consectetur adipiscing elit</li>
                                    <li>Nunc commodo elementum dapibus</li>
                                    <li>Vivamus ut nunc in ante</li>
                                    <li>Tellus scelerisque at</li>
                                </ul>
                            </div>
                            <div class="span4 span-inset">
                                <h4>Ordered List</h4>
                                <ol>
                                    <li>Tellus scelerisque at</li>
                                    <li>Consectetur adipiscing elit</li>
                                    <li>Lorem ipsum dolor sit amet</li>
                                    <li>Nunc commodo elementum dapibus</li>
                                    <li>Vivamus ut nunc in ante</li>
                                </ol>
                            </div>
                            <div class="span4 span-inset">
                                <h4>Letter List</h4>
                                <ol class="upper-alpha">
                                    <li>Vivamus ut nunc in ante</li>
                                    <li>Tellus scelerisque at</li>
                                    <li>Consectetur adipiscing elit</li>
                                    <li>Lorem ipsum dolor sit amet</li>
                                    <li>Nunc commodo elementum dapibus</li>
                                </ol>
                            </div>
                        </div>
                        <div class="row-fluid row-lists">
                            <div class="span4 span-inset">
                                <h4>Roman List</h4>
                                <ol class="upper-roman">
                                    <li>Lorem ipsum dolor sit amet</li>
                                    <li>Consectetur adipiscing elit</li>
                                    <li>Nunc commodo elementum dapibus</li>
                                    <li>Vivamus ut nunc in ante</li>
                                    <li>Tellus scelerisque at</li>
                                </ol>
                            </div>
                            <div class="span4 span-inset">
                                <h4>Ordered List w/ Leading Zero</h4>
                                <ol class="decimal-leading-zero">
                                    <li>Tellus scelerisque at</li>
                                    <li>Consectetur adipiscing elit</li>
                                    <li>Lorem ipsum dolor sit amet</li>
                                    <li>Nunc commodo elementum dapibus</li>
                                    <li>Vivamus ut nunc in ante</li>
                                </ol>
                            </div>
                            <div class="span4 span-inset">
                                <h4>Letter Lowercase List</h4>
                                <ol class="lower-alpha">
                                    <li>Vivamus ut nunc in ante</li>
                                    <li>Tellus scelerisque at</li>
                                    <li>Consectetur adipiscing elit</li>
                                    <li>Lorem ipsum dolor sit amet</li>
                                    <li>Nunc commodo elementum dapibus</li>
                                </ol>
                            </div>
                        </div>
                        <div class="row-fluid row-lists">
                            <div class="span4 span-inset">
                                <h4>Background Image Icons List</h4>
                                <ul class="image-icons-list">
                                    <li>Lorem ipsum dolor sit amet</li>
                                    <li>Consectetur adipiscing elit</li>
                                    <li>Nunc commodo elementum dapibus</li>
                                    <li>Vivamus ut nunc in ante</li>
                                    <li>Tellus scelerisque at</li>
                                </ul>
                            </div>
                            <div class="span4 span-inset">
                                <h4>Font Icons List</h4>
                                <ul class="font-icons-list">
                                    <li class='check'>Tellus scelerisque at</li>
                                    <li class='check'>Consectetur adipiscing elit</li>
                                    <li class='check'>Lorem ipsum dolor sit amet</li>
                                    <li class='check'>Nunc commodo elementum dapibus</li>
                                    <li class='check'>Vivamus ut nunc in ante</li>
                                </ul>
                            </div>
                            <div class="span4 span-inset">
                                <h4>Inline Font Icons List</h4>
                                <ul class="inline-font-icons-list">
                                    <li><i class='icon-photon cog'></i>Vivamus ut nunc in ante</li>
                                    <li><i class='icon-photon aperture'></i>Tellus scelerisque at</li>
                                    <li><i class='icon-photon pin'></i>Consectetur adipiscing elit</li>
                                    <li><i class='icon-photon arrow_right'></i>Lorem ipsum dolor sit amet</li>
                                    <li><i class='icon-photon key_stroke'></i>Nunc commodo elementum dapibus</li>
                                </ul>
                            </div>
                        </div>
                        <!--Lists end-->

                </div><!-- end container -->

                <div class="container-fluid">

                        <div class="form-legend" id="Syntax_Highlighter">Syntax Highlighter</div>

                        <!--Syntax Highlighter begin-->
                        <div class="control-group row-fluid">
                            <div class="span12 span-inset">
                                <pre class="prettyprint">
$().ready(function() {

    // Bar Graph Widget

    var d1 = [];
    for (var i = 0; i &lt;= 30; i += 1)
        d1.push([i, parseInt(Math.random() * 30)]);

    var d2 = [];
    for (var i = 0; i &lt;= 30; i += 1)
        d2.push([i, parseInt(Math.random() * 30)]);

    $.plot($("#placeholder"), [ d1, d2 ], {
        grid: { show: true, borderWidth: 0.2 },
        xaxis: { show: true, ticks: 0 },
        yaxis: { show: true, ticks: 8, color: '#bbb'},
        colors: ["#aad5f5", "#008fde"],
        series: {
            stack: 0,
            fill: 1,
            bars: { show: true, barWidth: 0.9, lineWidth: 0, fill: 1 }
        }
    });
});
                                </pre>

                            </div>
                        </div>
                        <!--Syntax Highlighter end-->
                </div><!-- end container -->
            </form>
        </div>
        </body>
</html>