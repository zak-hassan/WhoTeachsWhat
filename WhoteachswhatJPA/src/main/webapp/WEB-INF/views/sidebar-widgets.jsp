<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Sidebar Widgets - Photon Admin Panel Theme</title>
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
            <h1><small>Sidebar Widgets</small></h1>
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
                                "title" : "Lorem ipsum dolor", 
                                "attr" : { "href" : "#Lorem_ipsum_dolor" } 
                            }
                        },
                                                {
                            "data" : { 
                                "title" : "Excepteur sint", 
                                "attr" : { "href" : "#Excepteur_sint" } 
                            }
                        },
                                                {
                            "data" : { 
                                "title" : "Duis aute irure dolor", 
                                "attr" : { "href" : "#Duis_aute_irure_dolor" } 
                            }
                        },
                                                {
                            "data" : { 
                                "title" : "Ut enim ad minim veniam", 
                                "attr" : { "href" : "#Ut_enim_ad_minim_veniam" } 
                            }
                        },
                                                {
                            "data" : { 
                                "title" : "Labore et dolore", 
                                "attr" : { "href" : "#Labore_et_dolore" } 
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
            <!-- General Stats Widget begin -->
<script>
    $().ready(function() {
        $(".widget-general-stats select").select2();
    });
</script>
<div class="widget-holder">
    <div class="widget-flipper">
        <div class="widget-area widget-general-stats widget-front">
            <div class="widget-head">
                General Stats
                <div>
                    <a href="javascript:;" onclick="flipit(this)"><i class='icon-photon cog'></i></a>
                    <img src="images/photon/w_arrows@2x.png" alt="Arrows"/>
                </div>
            </div>
            <ul>
                <li>
                    <span>1,432</span>&nbsp;Registered Users
                    <div>
                        <span>+0.6%</span>
                        <img src="images/photon/w_arrow_green@2x.png" alt="Arrow up"/>
                    </div>
                </li>
                <li>
                    <span>$1,132</span>&nbsp;Revenue
                    <div>
                        <span>+1.4%</span>
                        <img src="images/photon/w_arrow_green@2x.png" alt="Arrow up"/>
                    </div>
                </li>
                <li>
                    <span>253</span>&nbsp;Viking Users
                    <div>
                        <span>-0.9%</span>
                        <img src="images/photon/w_arrow_red@2x.png" alt="Arrow up"/>
                    </div>
                </li>
                <li>
                    <span>586</span>&nbsp;Lorem ipsum
                    <div>
                        <span>+2.8%</span>
                        <img src="images/photon/w_arrow_green@2x.png" alt="Arrow up"/>
                    </div>
                </li>
                <li>
                    <span>1,245</span> 
                    &nbsp;Dolorem Sit
                    <div>
                        <span>-0.6%</span>
                        <img src="images/photon/w_arrow_red@2x.png" alt="Arrow up"/>
                    </div>
                </li>
            </ul>
        </div>

        <div class="widget-area widget-general-stats widget-back">
            <div class="widget-savehead">
                <a href="javascript:;" class="btn btn-mini btn-inverse" onclick="flipit(this)"><i class='icon-photon cog'></i>Done</a>
            </div>
            <form>
                <div class="container-fluid widget-settings">
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <label class="control-label">Filter by Location:</label>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <div class="controls">
                                <select>
                                    <option selected="" value="Any">Any</option>
                                    <option value="Europe">Europe</option>
                                    <option value="Asia">Asia</option>
                                    <option value="North America">America</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <label class="control-label">Filter by Period</label>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <div class="controls">
                                <select>
                                    <option selected="" value="Last Year">Last Year</option>
                                    <option value="Last Quarter">Last Quarter</option>
                                    <option value="Last Month">Last Month</option>
                                    <option value="Last Week">Last Week</option>
                                    <option value="Yesterday">Yesterday</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <label class="control-label">Show Hidden</label>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <div class="controls">
                                <select>
                                    <option selected="" value="Yes">Yes</option>
                                    <option value="No">No</option>
                                    <option value="Only if Viking">Only if Viking</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- General Stats Widget end -->
	        <!-- Latest Users Widget begins -->
<script>
    $().ready(function() {
        if (widgetsLoaded['widget-latest-users']) return;
        widgetsLoaded['widget-latest-users'] = true;
        
        $('.widget-latest-users li').each(function () {
            var thisUserName = $('span', this).text();
            var thisImgSrc = $('img', this).attr('src');
            var tooltipTemp = $('.widget-tip-template').clone(true, true);
            
            $('.user-name', tooltipTemp).text(thisUserName);
            $('.avatar-big', tooltipTemp).attr('src', thisImgSrc);

            $('img', this).tooltip({
                placement: 'top',
                html: true,
                trigger: 'manual',
                title: tooltipTemp.html()
            });
        });

        var hoverUsersTimeout;
        $('.widget-latest-users li').hover(function () {
            if (!$(this).find('.tooltip').length){
                $activeQL = $(this);
                clearTimeout(hoverUsersTimeout);
                hoverUsersTimeout = setTimeout(function() {
                    $activeQL.find('img').tooltip('show');
                }, 500);
            }
        }, function () {
            $('.widget-latest-users li').find('img').tooltip('hide');
            clearTimeout(hoverUsersTimeout);
        });

        $(".widget-latest-users select").select2();
    });
</script>
<div class="widget-holder">
    <div class="widget-flipper">
        <div class="widget-area widget-latest-users widget-front">
            <!-- USER TIP TEMPLATE -->
            <div class='widget-tip-template'>
                <div class='avatar-section'>
                    <img class='avatar-big' src='images/photon/user2.jpg' alt='profile' />
                </div>
                <div class='text-section'>
                    <span class='user-name'>Prasent Neque</span>
                    <span class='user-location'>Paris, France</span>
                    <span class='user-info'>nunc.cenenetis@gmail.com<br/>Registred: 9/26/2012 (8:56PM)</span>
                </div>
            </div>

            <div class="widget-head">
                Latest Users
                <div>
                    <a href="javascript:;" onclick="flipit(this)"><i class='icon-photon cog'></i></a>
                    <img src="images/photon/w_latest@2x.png" alt="latest users"/>
                </div>
            </div>
            <ul>
                <li>
                    <div class="avatar-image">
                        <img src="images/photon/user1.jpg" alt="profile"/>
                    </div>
                    <span>Vestibulum Odio</span> 
                    <div>5 mins</div>
                </li>
                <li>
                    <div class="avatar-image">
                        <img src="images/photon/user2.jpg" alt="profile"/>
                    </div>
                    <span>Prasent Neque</span> 
                    <div>17 mins</div>
                </li>
                <li>
                    <div class="avatar-image">
                        <img src="images/photon/user3.jpg" alt="profile"/>
                    </div>
                    <span>Nunc Cenenatis</span> 
                    <div>25 mins</div>
                </li>
                <li>
                    <div class="avatar-image">
                        <img src="images/photon/user4.jpg" alt="profile"/>
                    </div>
                    <span>Etiam Libero</span> 
                    <div>2 hrs</div>
                </li>
                <li>
                    <div class="avatar-image">
                        <img src="images/photon/user5.jpg" alt="profile"/>
                    </div>
                    <span>Morbi Consequat</span> 
                    <div>4 hrs</div>
                </li>
            </ul>
        </div>

        <div class="widget-area widget-latest-users widget-back">
            <div class="widget-savehead">
                <a href="javascript:;" class="btn btn-mini btn-inverse" onclick="flipit(this)"><i class='icon-photon cog'></i>Done</a>
            </div>
            <form>
                <div class="container-fluid widget-settings">
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <label class="control-label">Filter by Location:</label>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <div class="controls">
                                <select>
                                    <option selected="" value="Any">Any</option>
                                    <option value="Europe">Europe</option>
                                    <option value="Asia">Asia</option>
                                    <option value="North America">America</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <label class="control-label">Show Hidden</label>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <div class="controls">
                                <select>
                                    <option selected="" value="Yes">Yes</option>
                                    <option value="No">No</option>
                                    <option value="Only if Viking">Only if Viking</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Latest Users Widget ends -->
	        <!-- Task Completion Widget begins -->
<script>
    $().ready(function() {
        if (widgetsLoaded['task-completion']) return;
        widgetsLoaded['task-completion'] = true;
        setTimeout(function() {
            var target = parseInt($('.processed-pct .bar').attr('data-target'));
            $('.processed-pct .bar').attr('style', 'width: ' + target + '%');
        }, 1000);

        $(".task-completion select").select2();
    });
</script>
<div class="widget-holder">
    <div class="widget-flipper">
        <div class="widget-area task-completion widget-front">
            <div class="widget-head">
                Task Completion
                <div>
                    <a href="javascript:;" onclick="flipit(this)"><i class='icon-photon cog'></i></a>
                    <img src="images/photon/w_task@2x.png" alt="arrows"/>
                </div>
            </div>
            <ul>
                <li>
                    Processed orders
                    <span>56</span>
                </li>
                <li>Pending orders
                    <span>14</span>
                </li>
                <li>Unproc. orders
                    <span>12</span>
                </li>
                <li class="processed-pct">
                    Processed orders:&nbsp;&nbsp;<span>63</span>
                    <div class="progress progress-info">
                        <div class="bar" data-target="63" style="width: 0;"></div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="widget-area task-completion widget-back">
            <div class="widget-savehead">
                <a href="javascript:;" class="btn btn-mini btn-inverse" onclick="flipit(this)"><i class='icon-photon cog'></i>Done</a>
            </div>
            <form>
                <div class="container-fluid widget-settings">
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <label class="control-label">Filter by Task:</label>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <div class="controls">
                                <select>
                                    <option selected="" value="Any">Any</option>
                                    <option value="Strategic">Strategic</option>
                                    <option value="Operational">Operational</option>
                                    <option value="Tactical">Tactical</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <label class="control-label">Filter by Period</label>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <div class="controls">
                                <select>
                                    <option selected="" value="Last Year">Last Year</option>
                                    <option value="Last Quarter">Last Quarter</option>
                                    <option value="Last Month">Last Month</option>
                                    <option value="Last Week">Last Week</option>
                                    <option value="Yesterday">Yesterday</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <label class="control-label">Show Hidden</label>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <div class="controls">
                                <select>
                                    <option selected="" value="Yes">Yes</option>
                                    <option value="No">No</option>
                                    <option value="Only if Viking">Only if Viking</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Task Completion Widget ends -->
	        <!-- Twitter Widget begins -->
<script>
    $().ready(function() {
        if (widgetsLoaded['tweet-widget']) return;
        widgetsLoaded['tweet-widget'] = true;

        jqtweet.loadTweets({
            user: 'envato',
            numTweets: 1
        });

        $(".tweet-widget select").select2();
    });
</script>
<div class="widget-holder">
    <div class="widget-flipper">
        <div class="widget-area tweet-widget widget-front">
            <div class="widget-head">
                Twitter
                <div>
                    <a href="javascript:;" onclick="flipit(this)"><i class='icon-photon cog'></i></a>
                    <img src="images/photon/w_twitter@2x.png" alt="twitter"/>
                </div>
            </div>
            <p class="widget-description"><a href="https://twitter.com/envato" target="_blank">@envato</a>'s latest tweet:</p>    
            <div id="jqtwitter"></div>
        </div>

        <div class="widget-area tweet-widget widget-back">
            <div class="widget-savehead">
                <a href="javascript:;" class="btn btn-mini btn-inverse" onclick="flipit(this)"><i class='icon-photon cog'></i>Done</a>
            </div>
            <form>
                <div class="container-fluid widget-settings">
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <label class="control-label">Show Users:</label>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span12">
                            <div class="controls">
                                <select>
                                    <option selected="" value="All">All</option>
                                    <option value="Only Following">Only Following</option>
                                    <option value="Only Followers">Only Followers</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Twitter Widget ends -->
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
            <a href="javascript:;">Sidebar Widgets</a>
        </li>
    </ul>
</div>            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Sidebar Widgets</small></h2>
                <h3><small>Flexible dashboard widgets.</small></h3>
            </header>
            <form class="form-horizontal">
                <div class="container-fluid">

                        <div class="form-legend" id="Sidebar_Widgets">Sidebar Widgets</div>

                        <!--Sidebar Widget Text begin-->
                        <div class="control-group row-fluid">
                            <div class="span12 span-inset">
                                <p>
                                    <a href="/dashboard.html">Dashboard widgets</a> are extremly flexible, and could be placed in sidebar menu as well. Widgets play nice alongside jsTree menu, and look beautiful in tablets, where they dynamically re-arrange in two column layout if sidebar menu width provides enough room.
                                </p>
                                <p>
                                    Widget inclusion has been made easy, as we have each widget placed in a separate html template file, ready for inclusion wherever you need it.
                                </p>
                            </div>
                        </div>
                        <!--Sidebar Widget Text end-->

                </div><!-- end container -->
            </form>
        </div>
        </body>
</html>