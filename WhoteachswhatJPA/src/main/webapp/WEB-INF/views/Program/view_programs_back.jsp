<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> View Program </title>
	    <jsp:include page="../includes/static_includes.jsp" />
    </head>

    <body class="body-inner">
            
    <div class="btn-toolbar btn-mobile-menus">
        <button class="btn btn-main-menu"></button>
        <button class="btn btn-user-menu"><i class="icon-logo"></i></button>
    </div>
<!-- Navigation starts -->
<jsp:include page="../includes/navigation-template.jsp" />
<!-- Navigation end -->
        <div class="panel">
            <div class="panel-content filler">
             
                <div class="panel-header">
                    <h1><small>Programs</small></h1>
                    <form method="get" action="add_program.html">
                        <button type="submit" class="btn btn-mini"><i class="icon-photon move_alt2"></i> Add New</button>
                    </form>
                </div>
                <div class="panel-search container-fluid">
                    <form class="form-horizontal" action="javascript:;">
                        <input id="panelSearch" placeholder="Search" type="text" name="panelSearch">
                        <button class="btn btn-search"></button>
                        <script>
                            $().ready(function(){
                                var searchTags = [
                                    "CPD",
                                    "CPA",
                                    "CNS",
                                    "CTY",
                                    "BSD",
                                    "IFS",
                                    "DAD"
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
                                            "title" : "Programs", 
                                            "attr" : { "href" : "#" }
                                        },

                                        "attr" : { "id" : "node1" },

                                        "children" : [
                                            {
                                                "data" : {
                                                    "title" : "CPD - Computer Programmer Diploma",
                                                    "attr" : { "href" : "#" }
                                                }
                                            },
                                            {
                                                "data" : {
                                                    "title" : "CPA - Computer Programming & Analysis",
                                                    "attr" : { "href" : "#" }
                                                }
                                            },
                                            {
                                                "data" : {
                                                    "title" : "CNS - Computer Networking & Technical Support",
                                                    "attr" : { "href" : "#" }
                                                }
                                            },
                                            {
                                                "data" : {
                                                    "title" : "CTY - Computer Systems Technology",
                                                    "attr" : { "href" : "#" }
                                                }
                                            },
                                            {
                                                "data" : {
                                                    "title" : "BSD - Bachelor of Technology (Software Development)",
                                                    "attr" : { "href" : "#" }
                                                }
                                            },
                                            {
                                                "data" : {
                                                    "title" : "IFS - Bachelor of Technology (Informatics & Security)",
                                                    "attr" : { "href" : "#" }
                                                }
                                            },
                                            {
                                                "data" : {
                                                    "title" : "DAD - Database Application Developer",
                                                    "attr" : { "href" : "#" }
                                                }
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
            <div class="breadcrumb-container" style="width: 100%">
                <ul class="xbreadcrumbs">
                    <li>
                        <a href="dashboard.html">
                            <i class="icon-photon home"></i>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">Programs</a>
                    </li>
                    <li class="current">
                        <a href="javascript:;">Add</a>
                    </li>
                </ul>
            </div>   
            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>View Programs</small></h2>
                <h3><small>You can view all programs offered by ICT.</small></h3>
            </header>
            <div class="row-fluid">
            <form class="form-horizontal">
                <div class="span12">
                    <div class="container-fluid">
                        <div class="form-legend" id="Headings">CPA
                            <span class="pull-right"><a href="update_course.html"><i class="icon-photon pen_alt_stroke"></i></a>&nbsp;
                                <a href="#"><i class="icon-photon x_alt"></i></a>&nbsp;&nbsp;<span>
                        </div>
                        <div class="control-group row-fluid">
                            <div class="span4">
                                <label class="control-label">
                                    Program Name :
                                </label>
                            </div>
                            <div class="span8">
                                <div class="control-label">
                                    Computer Programming &amp; Analysis
                                </div>
                            </div>
                        </div>
                        <div class="control-group row-fluid">
                            <div class="span4">
                                <label class="control-label">
                                    Number of Semesters for Completion :
                                </label>
                            </div>
                            <div class="span8">
                                <div class="control-label">
                                    6
                                </div>
                            </div>
                        </div>
                        <div class="control-group row-fluid">
                            <div class="span4">
                                <label class="control-label">
                                    Semester Titles :
                                </label>
                            </div>
                            <div class="span8">
                                <div class="control-label">
                                    Semester 1, Semester 2, Semester 3, Semester 4, Semester 5, Semester 6
                                </div>
                            </div>
                        </div>
                        <div class="control-group row-fluid">
                            <div class="span4">
                                <label class="control-label">
                                    Available Courses (Grouped By Semesters) :
                                </label>
                            </div>
                            <div class="span8">
                                <div class="row-fluid">
                                    <div class="span4">
                                        <label class="control-label">
                                            <strong>Semester 1</strong>
                                        </label>
                                    </div>
                                    <div class="span8">
                                        <div class="control-label">
                                            ULIA1010, IOSA1100, IPCA1440
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span4">
                                        <label class="control-label">
                                            <strong>Semester 2</strong>
                                        </label>
                                    </div>
                                    <div class="span8">
                                        <div class="control-label">
                                            IBCA2330, OOPA2440, INTA2220, DBSA2010
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span4">
                                        <label class="control-label">
                                            <strong>Semester 3</strong>
                                        </label>
                                    </div>
                                    <div class="span8">
                                        <div class="control-label">
                                            DBSA3010, INTA3220, SYSA3660, OOPA3440
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span4">
                                        <label class="control-label">
                                            <strong>Semester 4</strong>
                                        </label>
                                    </div>
                                    <div class="span8">
                                        <div class="control-label">
                                            DCNA4550, INTA4220, SYSA4660, JACA4440
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span4">
                                        <label class="control-label">
                                            <strong>Semester 5</strong>
                                        </label>
                                    </div>
                                    <div class="span8">
                                        <div class="control-label">
                                            PRJA5660
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span4">
                                        <label class="control-label">
                                            <strong>Semester 6</strong>
                                        </label>
                                    </div>
                                    <div class="span8">
                                        <div class="control-label">
                                            PRJA6660
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="span4">
                                        <label class="control-label">
                                            <strong>Professional Options</strong>
                                        </label>
                                    </div>
                                    <div class="span8">
                                        <div class="control-label">
                                            BACA3440, DBAA6250, DBDA5250, DBJA5650, DBLA6260, DBSA5010, DBTA5440, DBWA6240, DOMA5450, DSAA5550, EJBA6050, GAMA5310, GAMA5320, GAMA5360, GAMA5370, GPUA6100, GPUA6210, GUIA5460, ISPA6060, MAPA5230, MAPA5240, MCLA5440, NETA6050, OSDA6000, OSDA7000, PROA6080, RPGA5440, SPOA6000, UNXA5100, UNXA5110, VBAA5440, WINA2100, WSAA5000
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- end container -->
                </div>
            </form>
        </div>
        </div>
    </body>
</html>
