<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Help - Photon Admin Panel Theme</title>
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
            <h1><small>Help</small></h1>
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
                                    "title" : "Get Started", 
                                    "attr" : { "href" : "#" } 
                                },
                                "children" : [ 
                                    {
                                        "data" : { 
                                            "title" : "Signing Up", 
                                            "attr" : { "href" : "#" } 
                                        }
                                    },
                                    {
                                        "data" : { 
                                            "title" : "Logging In", 
                                            "attr" : { "href" : "#" } 
                                        }
                                    }
                                ]
                            },
                            {
                                "data" : { 
                                    "title" : "Manage Your Account", 
                                    "attr" : { "href" : "#" } 
                                },
                                "attr" : { "id" : "node1" },
                                "children" : [ 
                                    {
                                        "data" : { 
                                            "title" : "Account Settings", 
                                            "attr" : { "href" : "#" } 
                                        }
                                    },
                                    {
                                        "data" : { 
                                            "title" : "Warnings and Blocks", 
                                            "attr" : { "href" : "#" } 
                                        }
                                    },
                                    {
                                        "data" : { 
                                            "title" : "Reseting Your Password", 
                                            "attr" : { "href" : "#" }
                                        },
                                        "attr" : { "id" : "node2" },
                                        "children" : [ 
                                            {
                                                "data" : { 
                                                    "title" : "How Do I Reset My Password?", 
                                                    "attr" : { "href" : "#" } 
                                                },
                                                "attr" : { "id" : "node3" },
                                            },
                                            {
                                                "data" : { 
                                                    "title" : "I Forgot My Password", 
                                                    "attr" : { "href" : "#" } 
                                                }
                                            },
                                            {
                                                "data" : { 
                                                    "title" : "Can You Send Me a Copy of Password Without Reseting It?", 
                                                    "attr" : { "href" : "#" } 
                                                }
                                            },
                                            {
                                                "data" : { 
                                                    "title" : "How Can I Recover My Secret Question?",
                                                    "attr" : { "href" : "#" } 
                                                }
                                            }
                                        ]
                                    },
                                    {
                                        "data" : { 
                                            "title" : "Deactivating, Deleting, Saving", 
                                            "attr" : { "href" : "#" } 
                                        }
                                    },
                                    {
                                        "data" : { 
                                            "title" : "Downloading Your Info", 
                                            "attr" : { "href" : "#" } 
                                        }
                                    }
                                ]
                            },
                            {
                                "data" : { 
                                    "title" : "Security", 
                                    "attr" : { "href" : "#" } 
                                }
                            },
                            {
                                "data" : { 
                                    "title" : "Privacy", 
                                    "attr" : { "href" : "#" } 
                                }
                            }
                        ]
                    },
                    "plugins" : [ "themes", "json_data", "ui" ],
                    "ui" : {
                        "initially_select" : [ "node3" ]
                    },
                    "core" : {
                        "initially_open" : [ "node1" , "node2" ]
                    }
                });
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
            <div class="breadcrumb-container">
    <ul class="xbreadcrumbs">
        <li>
            <a href="dashboard.html">
                <i class="icon-photon home"></i>
            </a>
        </li>
                <li class="current">
            <a href="javascript:;">Help</a>
        </li>
    </ul>
</div>            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Help</small></h2>
                <h3><small>Easily organizable user instructions.</small></h3>
            </header>
            <form class="form-horizontal">

                <div class="container-fluid no-outter-border">

                    <div class="accordion" id="accordion2">
                        <div class="accordion-group">
                            <div class="accordion-heading">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                                    How Do I Reset My Password?
                                </a>
                            </div>
                            <div id="collapseOne" class="accordion-body collapse in">
                                <div class="accordion-inner">
                                    <h4>Mauris mauris ante</h4>
                                    <p>
                                        Blandit et, ultrices a, suscipit eget, quam. Integer
                                        ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
                                        amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
                                        odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
                                    </p>
                                    <h4>Etiam tempor</h4>
                                    <p>
                                        Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, 
                                        turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis 
                                        sollicitudin mauris. Integer in mauris eu nibh euismod gravida. 
                                        Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit.
                                    </p>                           
                                    <h4>Mauris mauris ante</h4>
                                    <p>
                                        Proin nonummy, lacus eget pulvinar lacinia, pede felis dignissim leo, 
                                        vitae tristique magna lacus sit amet eros. Nullam ornare. Praesent odio 
                                        ligula, dapibus sed, tincidunt eget, dictum ac, nibh. Nam quis lacus. 
                                        Nunc eleifend molestie velit. Morbi lobortis quam eu velit. 
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-group">
                            <div class="accordion-heading">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                                    I Forgot My Password
                                </a>
                            </div>
                            <div id="collapseTwo" class="accordion-body collapse">
                                <div class="accordion-inner">
                                    <p>
                                        Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
                                        purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
                                        velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
                                        suscipit faucibus urna.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-group">
                            <div class="accordion-heading">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
                                    Can You Send Me a Copy of Password Without Reseting It?
                                </a>
                            </div>
                            <div id="collapseThree" class="accordion-body collapse">
                                <div class="accordion-inner">
                                    <p>
                                        Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
                                        Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
                                        ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
                                        lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-group">
                            <div class="accordion-heading">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseFour">
                                    How Can I Recover My Secret Question?
                                </a>
                            </div>
                            <div id="collapseFour" class="accordion-body collapse">
                                <div class="accordion-inner">
                                    <p>
                                        Cras dictum. Pellentesque habitant morbi tristique senectus et netus
                                        et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
                                        faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
                                        mauris vel est.
                                    </p>
                                    <p>
                                        Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
                                        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
                                        inceptos himenaeos.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div><!-- end container -->
            </form>
        </div>
        </body>
</html>