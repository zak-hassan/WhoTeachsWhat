<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Who Teaches What Report </title>
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
        <div class="panel">
            <div class="panel-content filler">
                <div class="panel-logo"></div>
                <div class="panel-header">
                    <h1><small>Reports</small></h1>
                </div>
                <div class="panel-search container-fluid">
                    <form class="form-horizontal" action="javascript:;">
                        <input id="panelSearch" placeholder="Search" type="text" name="panelSearch">
                        <button class="btn btn-search"></button>
                        <script>
                            $().ready(function(){
                                var searchTags = [
                                    "133",
                                    "132",
                                    "131",
                                    "123",
                                    "122",
                                    "121",
                                    "113",
                                    "112",
                                    "111",
                                    "103",
                                    "102",
                                    "101",
                                    "093",
                                    "092",
                                    "091"
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
                                            "title" : "Reports", 
                                            "attr" : { "href" : "#" }
                                        },

                                        "attr" : { "id" : "node1" },

                                        "children" : [
                                            {
                                                "data" : {
                                                    "title" : "Who Teaches What",
                                                    "attr" : { "href" : "#" }
                                                },
                                                "children" : [
                                                    { 
                                                        "data" : { 
                                                            "title" : "2013", 
                                                            "attr" : { "href" : "#" } 
                                                        },
                                                        "children" : [
                                                            {
                                                                "data" : { 
                                                                    "title" : "2013-3 - Fall", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            }, 
                                                            {
                                                                "data" : { 
                                                                    "title" : "2013-2 - Summer", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            },
                                                            {
                                                                "data" : { 
                                                                    "title" : "2013-1 - Winter", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    { 
                                                        "data" : { 
                                                            "title" : "2012", 
                                                            "attr" : { "href" : "#" } 
                                                        },
                                                        "children" : [
                                                            {
                                                                "data" : { 
                                                                    "title" : "2012-3 - Fall", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            }, 
                                                            {
                                                                "data" : { 
                                                                    "title" : "2012-2 - Summer", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            },
                                                            {
                                                                "data" : { 
                                                                    "title" : "2012-1 - Winter", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            }
                                                        ]
                                                    },    
                                                    { 
                                                        "data" : { 
                                                            "title" : "2011", 
                                                            "attr" : { "href" : "#" } 
                                                        },
                                                        "children" : [
                                                            {
                                                                "data" : { 
                                                                    "title" : "2011-3 - Fall", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            }, 
                                                            {
                                                                "data" : { 
                                                                    "title" : "2011-2 - Summer", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            },
                                                            {
                                                                "data" : { 
                                                                    "title" : "2011-1 - Winter", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    { 
                                                        "data" : { 
                                                            "title" : "2010", 
                                                            "attr" : { "href" : "#" } 
                                                        },
                                                        "children" : [
                                                            {
                                                                "data" : { 
                                                                    "title" : "2010-3 - Fall", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            }, 
                                                            {
                                                                "data" : { 
                                                                    "title" : "2010-2 - Summer", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            },
                                                            {
                                                                "data" : { 
                                                                    "title" : "2010-1 - Winter", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            }
                                                        ]
                                                    },
                                                    { 
                                                        "data" : { 
                                                            "title" : "2009", 
                                                            "attr" : { "href" : "#" } 
                                                        },
                                                        "children" : [
                                                            {
                                                                "data" : { 
                                                                    "title" : "2009-3 - Fall", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            }, 
                                                            {
                                                                "data" : { 
                                                                    "title" : "2009-2 - Summer", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            },
                                                            {
                                                                "data" : { 
                                                                    "title" : "2009-1 - Winter", 
                                                                    "attr" : { "href" : "#" } 
                                                                }
                                                            }
                                                        ]
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            },
                            "plugins" : [ "themes", "json_data", "ui" ],

                            "core" : {

                                "initially_open" : [ "node1" ]

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
                    <li>
                        <a href="javascript:;">Reports</a>
                    </li>
                    <li class="current">
                        <a href="javascript:;">Who Teaches What</a>
                    </li>
                </ul>
            </div>   
            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Who Teaches What Report (Fall 2013)</small></h2>
                <h3><small>This report displays the summary who is teaching what at given semester, grouped by courses/semester of program/program.</small></h3>
            </header>
            <form class="form-horizontal">
                <div class="container-fluid">
            <!-- START OF NEW CONTENT -->
                <!--Sortable Non-responsive Table begin-->
                    <div class="row-fluid">
                        <div class="span12" style="vertical-align: middle">
                            <label class="control-label" for="programName"><h2>&nbsp;&nbsp;&nbsp;CPA</h2></label><span class="pull-right"><a class="bootstrap-tooltip" data-original-title="Print All" data-placement="top" href="#"><i class="icon-print"></i>Print</a>&nbsp;&nbsp;</span>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <table class="table table-striped">
                                <caption class="text-left"><h3>&nbsp;Semester 1</h3></caption>
                                <thead>
                                    <tr>
                                        <tr>
                                            <th class="span1">#</th>
                                            <th class="span2">Course Code</th>
                                            <th class="span2"># of Sections</th>
                                            <th class="span7">Faculty Members</th>
                                        </tr>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="align">1</td>
                                        <td><a href="view_courses.html">IPC144</a></td>
                                        <td>3</td>
                                        <td class="align">
                                            Faculty #1 x 2, Faculty #2 x 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">2</td>
                                        <td><a href="view_courses.html">ULI101</a></td>
                                        <td>3</td>
                                        <td class="align">
                                            Faculty #1 x 1, Faculty #2 x 2
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">3</td>
                                        <td><a href="view_courses.html">IOS110</a></td>
                                        <td>4</td>
                                        <td class="align">
                                            Faculty #1 x 4
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <table class="table table-striped">
                                <caption class="text-left"><h3>&nbsp;Semester 2</h3></caption>
                                <thead>
                                    <tr>
                                        <tr>
                                            <th class="span1">#</th>
                                            <th class="span2">Course Code</th>
                                            <th class="span2"># of Sections</th>
                                            <th class="span7">Faculty Members</th>
                                        </tr>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="align">1</td>
                                        <td><a href="view_courses.html">IBC233</a></td>
                                        <td>3</td>
                                        <td class="align">
                                            Faculty #1 x 1, Faculty #2 x 1, Faculty #3 x 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">2</td>
                                        <td><a href="view_courses.html">OOP244</a></td>
                                        <td>3</td>
                                        <td class="align">
                                            Faculty #1 x 1, Faculty #2 x 2
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">3</td>
                                        <td><a href="view_courses.html">INT222</a></td>
                                        <td>4</td>
                                        <td class="align">
                                            Faculty #1 x 2, Faculty #2 x 2
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">4</td>
                                        <td><a href="view_courses.html">DBS201</a></td>
                                        <td>2</td>
                                        <td class="align">
                                            Faculty #1 x 2
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <table class="table table-striped">
                                <caption class="text-left"><h3>&nbsp;Semester 3</h3></caption>
                                <thead>
                                    <tr>
                                        <tr>
                                            <th class="span1">#</th>
                                            <th class="span2">Course Code</th>
                                            <th class="span2"># of Sections</th>
                                            <th class="span7">Faculty Members</th>
                                        </tr>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="align">1</td>
                                        <td><a href="view_courses.html">DBS301</a></td>
                                        <td>3</td>
                                        <td class="align">
                                            Faculty #1 x 2, Faculty #2 x 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">2</td>
                                        <td><a href="view_courses.html">INT322</a></td>
                                        <td>3</td>
                                        <td class="align">
                                            Faculty #1 x 1, Faculty #2 x 2
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">3</td>
                                        <td><a href="view_courses.html">SYS366</a></td>
                                        <td>2</td>
                                        <td class="align">
                                            Faculty #1 x 1, Faculty #2 x 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">4</td>
                                        <td><a href="view_courses.html">OOP344</a></td>
                                        <td>1</td>
                                        <td class="align">
                                            Faculty #1 x 1
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <table class="table table-striped">
                                <caption class="text-left"><h3>&nbsp;Semester 4</h3></caption>
                                <thead>
                                    <tr>
                                        <tr>
                                            <th class="span1">#</th>
                                            <th class="span2">Course Code</th>
                                            <th class="span2"># of Sections</th>
                                            <th class="span7">Faculty Members</th>
                                        </tr>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="align">1</td>
                                        <td><a href="view_courses.html">DCN455</a></td>
                                        <td>3</td>
                                        <td class="align">
                                            Faculty #1 x 2, Faculty #2 x 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">2</td>
                                        <td><a href="view_courses.html">INT422</a></td>
                                        <td>3</td>
                                        <td class="align">
                                            Faculty #1 x 1, Faculty #2 x 2
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">3</td>
                                        <td><a href="view_courses.html">SYS466</a></td>
                                        <td>2</td>
                                        <td class="align">
                                            Faculty #1 x 2
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">4</td>
                                        <td><a href="view_courses.html">JAC444</a></td>
                                        <td>1</td>
                                        <td class="align">
                                            Faculty #1 x 1
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <table class="table table-striped">
                                <caption class="text-left"><h3>&nbsp;Semester 5</h3></caption>
                                <thead>
                                    <tr>
                                        <tr>
                                            <th class="span1">#</th>
                                            <th class="span2">Course Code</th>
                                            <th class="span2"># of Sections</th>
                                            <th class="span7">Faculty Members</th>
                                        </tr>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="align">1</td>
                                        <td><a href="view_courses.html">PRJ566</a></td>
                                        <td>1</td>
                                        <td class="align">
                                            Faculty #1 x 1
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <table class="table table-striped">
                                <caption class="text-left"><h3>&nbsp;Semester 6</h3></caption>
                                <thead>
                                    <tr>
                                        <tr>
                                            <th class="span1">#</th>
                                            <th class="span2">Course Code</th>
                                            <th class="span2"># of Sections</th>
                                            <th class="span7">Faculty Members</th>
                                        </tr>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="align">1</td>
                                        <td><a href="view_courses.html">PRJ666</a></td>
                                        <td>1</td>
                                        <td class="align">
                                            Faculty #1 x 1
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <table class="table table-striped">
                                <caption class="text-left"><h3>&nbsp;Professional Options</h3></caption>
                                <thead>
                                    <tr>
                                        <tr>
                                            <th class="span1">#</th>
                                            <th class="span2">Course Code</th>
                                            <th class="span2"># of Sections</th>
                                            <th class="span7">Faculty Members</th>  
                                        </tr>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="align">1</td>
                                        <td><a href="view_courses.html">BAC344</a></td>
                                        <td>1</td>
                                        <td class="align">
                                            Faculty #1 x 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">2</td>
                                        <td><a href="view_courses.html">DBA625</a></td>
                                        <td>1</td>
                                        <td class="align">
                                            Faculty #1 x 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">3</td>
                                        <td><a href="view_courses.html">DBD525</a></td>
                                        <td>1</td>
                                        <td class="align">
                                            Faculty #1 x 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">4</td>
                                        <td><a href="view_courses.html">DBJ565</a></td>
                                        <td>1</td>
                                        <td class="align">
                                            Faculty #1 x 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">5</td>
                                        <td><a href="view_courses.html">DBL626</a></td>
                                        <td>1</td>
                                        <td class="align">
                                            Faculty #1 x 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">6</td>
                                        <td><a href="view_courses.html">DBT544</a></td>
                                        <td>1</td>
                                        <td class="align">
                                            Faculty #1 x 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="align">7</td>
                                        <td><a href="view_courses.html">DBW624</a></td>
                                        <td>1</td>
                                        <td class="align">
                                            Faculty #1 x 1
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div><!-- end container -->
            </form>
        </div>
    </body>
</html>
