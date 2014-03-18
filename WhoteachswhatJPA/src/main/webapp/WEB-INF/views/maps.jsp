<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Maps - Photon Admin Panel Theme</title>
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
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <script>
            var poly, map, plainMap;
            var markers = [];
            var path = new google.maps.MVCArray;
            function initialize() {
                var plainMap = new google.maps.Map(document.getElementById("plainMap"), {
                    zoom: 7,
                    center: new google.maps.LatLng(40.771166,-73.974209),
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                });
                var hybridMap = new google.maps.Map(document.getElementById("hybridMap"), {
                    zoom: 7,
                    center: new google.maps.LatLng(51.507335,-0.127683),
                    mapTypeId: google.maps.MapTypeId.HYBRID
                });
                //                $.pnotify.defaults.styling = "jqueryui";
                //                $.pnotify.defaults.history = false;
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(
                    function (position) {
                        printGeoMap(position.coords.latitude, position.coords.longitude);
                    }, 
                    function() {
                        // Gelocation fallback: Defaults to Stockholm, Sweden
                        printGeoMap(59.3325215, 18.0643818)
                        $.pnotify({
                            title: 'Geolocation Error',
                            addclass: 'loginNote',
                            text: 'Please accept geolocation for me to be able to find you. I\'ve put you in Stockholm for now.'
                        });
                    }
                );
                } else {
                    // No geolocation fallback: Defaults to Eeaster Island, Chile
                    printGeoMap(-27.121192, -109.366424)
                    $.pnotify({
                        title: 'Geolocation Error',
                        addclass: 'loginNote',
                        text: 'No location support. Try Easter Island for now. :)'
                    });
                }
                var uluru = new google.maps.LatLng(48.857939, 2.346611);
                var map = new google.maps.Map(document.getElementById("map"), {
                    zoom: 7,
                    center: uluru,
                    mapTypeId: google.maps.MapTypeId.HYBRID
                });
                var poly = new google.maps.Polygon({
                    strokeWeight: 3,
                    clickable: false,
                    fillColor: '#aad5f5'
                });
                poly.setMap(map);
                poly.setPaths(new google.maps.MVCArray([path]));
                google.maps.event.addListener(map, 'click', addPoint);
            }
            function printGeoMap(lat, lng) {
                myLatlng = new google.maps.LatLng(lat, lng);
                var geolocation = new google.maps.Map(document.getElementById('geolocation'), {
                    zoom: 8,
                    center: myLatlng,
                    mapTypeId: google.maps.MapTypeId.HYBRID
                });
                var newMarker = new google.maps.Marker({
                    position: myLatlng,
                    map: geolocation,
                    title: "My Location"
                });
            }
            function addPoint(event, latLng) {
                if(!latLng) latLng = event.latLng;
                path.insertAt(path.length, latLng);
                var marker = new google.maps.Marker({
                    position: latLng,
                    map: map,
                    draggable: true
                });
                markers.push(marker);
                marker.setTitle("#" + path.length);
                google.maps.event.addListener(marker, 'click', function() {
                    marker.setMap(null);
                    for (var i = 0, I = markers.length; i < I && markers[i] != marker; ++i);
                    markers.splice(i, 1);
                    path.removeAt(i);
                    updateCoordinates(markers);
                });
                google.maps.event.addListener(marker, 'dragend', function() {
                    for (var i = 0, I = markers.length; i < I && markers[i] != marker; ++i);
                    path.setAt(i, marker.getPosition());
                    updateCoordinates(markers);
                });
                updateCoordinates(markers);
            }
            function updateCoordinates(markers) {
                var coor = '';
                $.each(markers, function(){
                    coor += ' ' + this.position.Qa;
                    coor += ',' + this.position.Ra;
                });
                $('#coordinates').val(coor);
            }
            $().ready(function() {
                initialize();
            });
        </script>

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
            <h1><small>Maps</small></h1>
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
                            "title" : "Road Map", 
                            "attr" : { "href" : "#Road_Map" } 
                        }
                    },
                                        {
                        "data" : { 
                            "title" : "Hybrid Map", 
                            "attr" : { "href" : "#Hybrid_Map" } 
                        }
                    },
                                        {
                        "data" : { 
                            "title" : "Geolocation Detection", 
                            "attr" : { "href" : "#Geolocation_Detection" } 
                        }
                    },
                                        {
                        "data" : { 
                            "title" : "Polygon Creator Tool", 
                            "attr" : { "href" : "#Polygon_Creator_Tool" } 
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
            <a href="javascript:;">Maps</a>
        </li>
    </ul>
</div>            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Maps</small></h2>
                <h3><small>Google Maps API v3</small></h3>
            </header>
            <div class="container-fluid">
                <form class="form-horizontal">
                    <div class="row-fluid">
                        <div class="span6">
                            <div id="Road_Map" class="container-fluid">

                                    <div class="form-legend">Road Map</div>
                                    <!--Map1 begin-->
                                    <div class="control-group row-fluid">
                                        <div class="span12">
                                            <div class="controls controls-map">
                                                <div id="plainMap" style="height:400px; width:100%"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Map1 end-->

                            </div><!-- end container -->
                        </div>

                        <div class="span6">
                            <div id="Hybrid_Map" class="container-fluid">

                                    <div class="form-legend">Hybrid Map</div>
                                    <!--Map2 begin-->
                                    <div class="control-group row-fluid">
                                        <div class="span12">
                                            <div class="controls controls-map">
                                                <div id="hybridMap" style="height:400px; width:100%"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Map2 end-->

                            </div><!-- end container -->
                        </div>
                    </div>

                    <div id="Geolocation_Detection" class="container-fluid">

                            <div class="form-legend">Geolocation Detection</div>
                            <!--Map3 begin-->
                            <div class="control-group row-fluid">
                                <div class="span12">
                                    <div class="controls controls-map">
                                        <div id="geolocation" style="height:400px; width:100%"></div>
                                    </div>
                                </div>
                            </div>
                            <!--Map3 end-->

                    </div><!-- end container -->

                    <div id="Polygon_Creator_Tool" class="container-fluid">

                            <div class="form-legend">Polygon Creator Tool</div>
                            <!--Map3 begin-->
                            <div class="control-group row-fluid">
                                <div class="span12">
                                    <label class="control-label">Instructions: Create a polygon by clicking on a map.</label>
                                    <div class="controls controls-map">
                                        <div id="map" style="height:400px; width:100%"></div>
                                        <input type="hidden" name="coordinates" id="coordinates" value="">
                                    </div>
                                </div>
                            </div>
                            <!--Map3 end-->

                    </div><!-- end container -->
                </form>
            </div><!-- end container -->
        </div>
        </body>
</html>