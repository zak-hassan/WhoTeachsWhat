<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Update Course</title>
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
            <h1><small>Course</small></h1>
            <form method="get" action="add_course.html">
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
                            "IPC144",
                            "IBC233",
                            "ULI101",
                            "PRJ566",
                            "PRJ666",
                            "IPCA1440",
                            "IBCA2330",
                            "ULIA1010",
                            "PRJA5660",
                            "PRJA6660"
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
                                            "title" : "Courses", 
                                            "attr" : { "href" : "#" }
                                        },

                                        "attr" : { "id" : "node1" },

                                        "children" : [
                                            {
                                                "data" : {
                                                    "title" : "A-M",
                                                    "attr" : { "href" : "#" }
                                                },
                                                "children" : [
                                                    { 
                                                        "data" : { 
                                                            "title" : "ABCD1234 - Sample Course", 
                                                            "attr" : { "href" : "#ABCD1234" } 
                                                        }
                                                    },
                                                    { 
                                                        "data" : { 
                                                            "title" : "IBCA2330 - iSERIES Business Computing", 
                                                            "attr" : { "href" : "#IBCA2330" } 
                                                        }
                                                    },    
                                                    { 
                                                        "data" : { 
                                                            "title" : "IPCA1440 - Introduction to Programming Using C", 
                                                            "attr" : { "href" : "#IPCA1440" } 
                                                        }
                                                    },
                                                    { 
                                                        "data" : { 
                                                            "title" : "MAPA5230 - Mobile App Development - iOS", 
                                                            "attr" : { "href" : "#MAPA5230" } 
                                                        }
                                                    }
                                                ]
                                            },
                                            {
                                                "data" : {
                                                    "title" : "L-Z",
                                                    "attr" : { "href" : "#" }
                                                },
                                                "children" : [
                                                    { 
                                                        "data" : { 
                                                            "title" : "ULIA1010 - Introduction to Unix/Linux and the Internet", 
                                                            "attr" : { "href" : "#ULIA1010" } 
                                                        }
                                                    },
                                                    { 
                                                        "data" : { 
                                                            "title" : "PRJA5660 - Project Planning and Management", 
                                                            "attr" : { "href" : "#PRJ56600" } 
                                                        }
                                                    },
                                                    { 
                                                        "data" : { 
                                                            "title" : "PRJA6660 - Project Implementation", 
                                                            "attr" : { "href" : "#PRJ66600" } 
                                                        }
                                                    }
                                                ]
                                            },
                                            {
                                                "data" : {
                                                    "title" : "Old (6 digit)",
                                                    "attr" : { "href" : "#" }
                                                },
                                                "children" : [
                                                    { 
                                                        "data" : { 
                                                            "title" : "IBC233 - iSERIES Business Computing", 
                                                            "attr" : { "href" : "#IBCA2330" } 
                                                        }
                                                    },
                                                    { 
                                                        "data" : { 
                                                            "title" : "IPC144 - Introduction to Programming Using C", 
                                                            "attr" : { "href" : "#IPCA1440" } 
                                                        }
                                                    },    
                                                    { 
                                                        "data" : { 
                                                            "title" : "PRJ566 - Project Planning and Management", 
                                                            "attr" : { "href" : "#PRJ56600" } 
                                                        }
                                                    },
                                                    { 
                                                        "data" : { 
                                                            "title" : "PRJ666 - Project Implementation", 
                                                            "attr" : { "href" : "#PRJ66600" } 
                                                        }
                                                    },
                                                    { 
                                                        "data" : { 
                                                            "title" : "ULI101 - Introduction to Unix/Linux and the Internet", 
                                                            "attr" : { "href" : "#ULIA1010" } 
                                                        },
                                                    }
                                                ]
                                            },
                                            {
                                                "data" : {
                                                    "title" : "Inactive",
                                                    "attr" : { "href" : "#" }
                                                },
                                                "children" : [
                                                    { 
                                                        "data" : { 
                                                            "title" : "IBC223 - Old iSERIES Business Computing", 
                                                            "attr" : { "href" : "#IBCA2230", 
                                                            "style" : "text-decoration:line-through" } 
                                                        }
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

            /**
            @Author: Anil Santokhi
            @Purpose: AJAX posting and validation for updating a course
             
           */
            
           var validateUpdateCourse= function() {
           	$.post("ajaxUpdateCourse",{ course_code: document.getElementById("course_code").value, 
           		course_name: document.getElementById("course_name").value,
           		crossover_input: document.getElementById("crossover_input").value,
           		reference_input: document.getElementById("reference_input").value })
           		.done(function(data) {
               		console.log("AJAX RETURNED"+JSON.stringify(data));
               		
               		if (data.success === "true") {
               			// Success message
               		}
           		});
           };
            
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
            <a href="javascript:;">Courses</a>
        </li>
        <li class="current">
            <a href="javascript:;">Update</a>
        </li>
    </ul>
</div>   
            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Update Course</small></h2>
                <h3><small>Update already existing course.</small></h3>
            </header>
           <form method="post" action="ajaxUpdateCourse" id="UpdateCourseForm" onsubmit="return validateUpdateCourse();"
           		class="form-horizontal">
                <div class="container-fluid">
                    <div class="form-legend" id="Course Information">Course Information</div>
                    <div class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="inputFieldTooltip">
                                Course Code<a href="#" class="bootstrap-tooltip" data-placement="top" data-original-title="6 or 8 digit"><i class="icon-photon info-circle"></i></a>
                            </label>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <input id="course_code" type="text" name="course_code" value="IBCA2330" />
                            </div>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="inputFieldTooltip">
                                Subject Name<a href="#" class="bootstrap-tooltip" data-placement="top" data-original-title="Subject Name"><i class="icon-photon info-circle"></i></a>
                            </label>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <input id="course_name" type="text" name="course_name" value="iSERIES Business Computing" />
                            </div>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="inputFieldTooltip">
                                Crossover Course<a href="#" class="bootstrap-tooltip" data-placement="top" data-original-title="Can be empty"><i class="icon-photon info-circle"></i></a>
                            </label>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <input id="crossover_input" type="text" name="crossover_input" />
                            </div>
                        </div>
                        <!--Input Field with Auto Complete Script-->
                        <script>
                            $().ready(function(){
                                var availableTags = [
                                    "IPCA1440",
                                    "IBCA2330",
                                    "ULIA1010",
                                    "PRJA5660",
                                    "PRJA6660"
                                ];
                                $( "#crossover_input" ).autocomplete({
                                    source: availableTags
                                });
                            });            
                        </script>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="inputFieldTooltip">
                                Reference To Old Code<a href="#" class="bootstrap-tooltip" data-placement="top" data-original-title="Can be empty"><i class="icon-photon info-circle"></i></a>
                            </label>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <input id="reference_input" type="text" name="reference_input" value="IBC233" />
                            </div>
                        </div>
                        <!--Input Field with Auto Complete Script-->
                        <script>
                            $().ready(function(){
                                var availableReferenceTags = [
                                    "MAP523",
                                    "IPC144",
                                    "IBC233",
                                    "ULI101",
                                    "PRJ566",
                                    "PRJ666"
                                ];
                                $( "#reference_input" ).autocomplete({
                                    source: availableReferenceTags
                                });
                            });            
                        </script>
                    </div>
                </div><!-- end container -->
                <div class="row-fluid">
                    <div class="span2 offset4">
                        <button type="submit" class="btn btn-large btn-block btn-info">Update</button>
                    </div>
                    <div class="span2">
                        <button type="button" class="btn btn-large btn-block">Cancel</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
