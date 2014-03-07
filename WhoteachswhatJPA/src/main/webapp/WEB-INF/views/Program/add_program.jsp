<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">

    <head>

        <meta charset="utf-8">

        <title>Program - Add </title>
	    <jsp:include page="../includes/static_includes.jsp" />
    </head>

    <body class="body-inner">
            
    <div class="btn-toolbar btn-mobile-menus">
        <button class="btn btn-main-menu"></button>
        <button class="btn btn-user-menu"><i class="icon-logo"></i></button>
    </div>
<!-- Navigation starts -->
<jsp:include page="../includes/menu.jsp" />
<!-- Navigation end -->
        <div class="panel">
            <div class="panel-content filler">
                 <div class="panel-header">
                    <h1><small>Programs</small></h1>
                    <form method="get" action="add_program.html">
                        <button type="submit" class="btn btn-mini"><i class="icon-photon move_alt2"></i> Add New</button>
                    </form>
                </div>
        <!--        <div class="panel-search container-fluid">
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
            -->    <script type="text/javascript">

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

            <div class="breadcrumb-container">
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
                <h2><small>Add Program</small></h2>
                <h3><small>Register a new program.</small></h3>
            </header>
            <form class="form-horizontal">
                <div class="container-fluid">
                    <div class="form-legend" id="Course Information">Program Information</div>
                    <div class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="inputFieldTooltip">
                                Program Code<a href="#" class="bootstrap-tooltip" data-placement="top" data-original-title="6 or 8 digit"><i class="icon-photon info-circle"></i></a>
                            </label>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <input id="course_code" type="text" name="course_code" />
                            </div>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="inputFieldTooltip">
                                Program Name<a href="#" class="bootstrap-tooltip" data-placement="top" data-original-title="Subject Name"><i class="icon-photon info-circle"></i></a>
                            </label>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <input id="course_name" type="text" name="course_name" />
                            </div>
                        </div>
                    </div>
                    <div class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="inputFieldTooltip">
                                Number of Semesters for Completion
                            </label>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <select name="simpleSelectBox" id="simpleSelectBox">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
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
                    <!--Dual Multi Select begin-->
                    <div id="Dual_Multi_Select_with_Filter_Search" class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="dualMultiSem1">Select Courses for Semester</label>
                            <br />
                            <div class="controls">
                                <input id="course_name" type="text" name="course_name" placeholder="Semester Name" />
                            </div>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <select multiple name="dualMultiSem1" id="dualMultiSem1">
                                    <option value="ULIA1010">ULIA1010</option>
                                    <option value="IOSA1100">IOSA1100</option>
                                    <option value="IPCA1440">IPCA1440</option>
                                    <option value="IBCA2330">IBCA2330</option>
                                    <option value="OOPA2440">OOPA2440</option>
                                    <option value="INTA2220">INTA2220</option>
                                    <option value="DBSA2010">DBSA2010</option>
                                    <option value="DBSA3010">DBSA3010</option>
                                    <option value="INTA3220">INTA3220</option>
                                    <option value="SYSA3660">SYSA3660</option>
                                    <option value="OOPA3440">OOPA3440</option>
                                    <option value="DCNA4550">DCNA4550</option>
                                    <option value="INTA4220">INTA4220</option>
                                    <option value="SYSA4660">SYSA4660</option>
                                    <option value="JACA4440">JACA4440</option>
                                    <option value="PRJA5660">PRJA5660</option>
                                    <option value="PRJA6660">PRJA6660</option>
                                    <option value="BACA3440">BACA3440</option>
                                    <option value="DBAA6250">DBAA6250</option>
                                    <option value="DBDA5250">DBDA5250</option>
                                    <option value="DBJA5650">DBJA5650</option>
                                    <option value="DBLA6260">DBLA6260</option>
                                    <option value="DBSA5010">DBSA5010</option>
                                    <option value="DBTA5440">DBTA5440</option>
                                    <option value="DBWA6240">DBWA6240</option>
                                    <option value="DOMA5450">DOMA5450</option>
                                    <option value="DSAA5550">DSAA5550</option>
                                    <option value="EJBA6050">EJBA6050</option>
                                    <option value="GAMA5310">GAMA5310</option>
                                    <option value="GAMA5320">GAMA5320</option>
                                    <option value="GAMA5360">GAMA5360</option>
                                    <option value="GAMA5370">GAMA5370</option>
                                    <option value="GPUA6100">GPUA6100</option>
                                    <option value="GPUA6210">GPUA6210</option>
                                    <option value="GUIA5460">GUIA5460</option>
                                    <option value="ISPA6060">ISPA6060</option>
                                    <option value="MAPA5230">MAPA5230</option>
                                    <option value="MAPA5240">MAPA5240</option>
                                    <option value="MCLA5440">MCLA5440</option>
                                    <option value="NETA6050">NETA6050</option>
                                    <option value="OSDA6000">OSDA6000</option>
                                    <option value="OSDA7000">OSDA7000</option>
                                    <option value="OOPA3440">DSAA5550</option>
                                    <option value="PROA6080">PROA6080</option>
                                    <option value="RPGA5440">RPGA5440</option>
                                    <option value="SPOA6000">SPOA6000</option>
                                    <option value="UNXA5100">UNXA5100</option>
                                    <option value="UNXA5110">UNXA5110</option>
                                    <option value="VBAA5440">VBAA5440</option>
                                    <option value="WINA2100">WINA2100</option>
                                    <option value="WSAA5000">WSAA5000</option>

                                </select>
                            </div>
                        </div>
                        <script>
                            $().ready(function(){
                                $("#dualMultiSem1").pickList();
                            });
                        </script>
                    </div>
                    <div id="Dual_Multi_Select_with_Filter_Search" class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="dualMultiSem2">Select Courses for Semester</label>
                            <br />
                            <div class="controls">
                                <input id="course_name" type="text" name="course_name" placeholder="Semester Name" />
                            </div>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <select multiple name="dualMultiSem2" id="dualMultiSem2">
                                    <option value="ULIA1010">ULIA1010</option>
                                    <option value="IOSA1100">IOSA1100</option>
                                    <option value="IPCA1440">IPCA1440</option>
                                    <option value="IBCA2330">IBCA2330</option>
                                    <option value="OOPA2440">OOPA2440</option>
                                    <option value="INTA2220">INTA2220</option>
                                    <option value="DBSA2010">DBSA2010</option>
                                    <option value="DBSA3010">DBSA3010</option>
                                    <option value="INTA3220">INTA3220</option>
                                    <option value="SYSA3660">SYSA3660</option>
                                    <option value="OOPA3440">OOPA3440</option>
                                    <option value="DCNA4550">DCNA4550</option>
                                    <option value="INTA4220">INTA4220</option>
                                    <option value="SYSA4660">SYSA4660</option>
                                    <option value="JACA4440">JACA4440</option>
                                    <option value="PRJA5660">PRJA5660</option>
                                    <option value="PRJA6660">PRJA6660</option>
                                    <option value="BACA3440">BACA3440</option>
                                    <option value="DBAA6250">DBAA6250</option>
                                    <option value="DBDA5250">DBDA5250</option>
                                    <option value="DBJA5650">DBJA5650</option>
                                    <option value="DBLA6260">DBLA6260</option>
                                    <option value="DBSA5010">DBSA5010</option>
                                    <option value="DBTA5440">DBTA5440</option>
                                    <option value="DBWA6240">DBWA6240</option>
                                    <option value="DOMA5450">DOMA5450</option>
                                    <option value="DSAA5550">DSAA5550</option>
                                    <option value="EJBA6050">EJBA6050</option>
                                    <option value="GAMA5310">GAMA5310</option>
                                    <option value="GAMA5320">GAMA5320</option>
                                    <option value="GAMA5360">GAMA5360</option>
                                    <option value="GAMA5370">GAMA5370</option>
                                    <option value="GPUA6100">GPUA6100</option>
                                    <option value="GPUA6210">GPUA6210</option>
                                    <option value="GUIA5460">GUIA5460</option>
                                    <option value="ISPA6060">ISPA6060</option>
                                    <option value="MAPA5230">MAPA5230</option>
                                    <option value="MAPA5240">MAPA5240</option>
                                    <option value="MCLA5440">MCLA5440</option>
                                    <option value="NETA6050">NETA6050</option>
                                    <option value="OSDA6000">OSDA6000</option>
                                    <option value="OSDA7000">OSDA7000</option>
                                    <option value="OOPA3440">DSAA5550</option>
                                    <option value="PROA6080">PROA6080</option>
                                    <option value="RPGA5440">RPGA5440</option>
                                    <option value="SPOA6000">SPOA6000</option>
                                    <option value="UNXA5100">UNXA5100</option>
                                    <option value="UNXA5110">UNXA5110</option>
                                    <option value="VBAA5440">VBAA5440</option>
                                    <option value="WINA2100">WINA2100</option>
                                    <option value="WSAA5000">WSAA5000</option>

                                </select>
                            </div>
                        </div>
                        <script>
                            $().ready(function(){
                                $("#dualMultiSem2").pickList();
                            });
                        </script>
                    </div>
                    <div id="Dual_Multi_Select_with_Filter_Search" class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="dualMultiSem3">Select Courses for Semester</label>
                            <br />
                            <div class="controls">
                                <input id="course_name" type="text" name="course_name" placeholder="Semester Name" />
                            </div>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <select multiple name="dualMultiSem3" id="dualMultiSem3">
                                    <option value="ULIA1010">ULIA1010</option>
                                    <option value="IOSA1100">IOSA1100</option>
                                    <option value="IPCA1440">IPCA1440</option>
                                    <option value="IBCA2330">IBCA2330</option>
                                    <option value="OOPA2440">OOPA2440</option>
                                    <option value="INTA2220">INTA2220</option>
                                    <option value="DBSA2010">DBSA2010</option>
                                    <option value="DBSA3010">DBSA3010</option>
                                    <option value="INTA3220">INTA3220</option>
                                    <option value="SYSA3660">SYSA3660</option>
                                    <option value="OOPA3440">OOPA3440</option>
                                    <option value="DCNA4550">DCNA4550</option>
                                    <option value="INTA4220">INTA4220</option>
                                    <option value="SYSA4660">SYSA4660</option>
                                    <option value="JACA4440">JACA4440</option>
                                    <option value="PRJA5660">PRJA5660</option>
                                    <option value="PRJA6660">PRJA6660</option>
                                    <option value="BACA3440">BACA3440</option>
                                    <option value="DBAA6250">DBAA6250</option>
                                    <option value="DBDA5250">DBDA5250</option>
                                    <option value="DBJA5650">DBJA5650</option>
                                    <option value="DBLA6260">DBLA6260</option>
                                    <option value="DBSA5010">DBSA5010</option>
                                    <option value="DBTA5440">DBTA5440</option>
                                    <option value="DBWA6240">DBWA6240</option>
                                    <option value="DOMA5450">DOMA5450</option>
                                    <option value="DSAA5550">DSAA5550</option>
                                    <option value="EJBA6050">EJBA6050</option>
                                    <option value="GAMA5310">GAMA5310</option>
                                    <option value="GAMA5320">GAMA5320</option>
                                    <option value="GAMA5360">GAMA5360</option>
                                    <option value="GAMA5370">GAMA5370</option>
                                    <option value="GPUA6100">GPUA6100</option>
                                    <option value="GPUA6210">GPUA6210</option>
                                    <option value="GUIA5460">GUIA5460</option>
                                    <option value="ISPA6060">ISPA6060</option>
                                    <option value="MAPA5230">MAPA5230</option>
                                    <option value="MAPA5240">MAPA5240</option>
                                    <option value="MCLA5440">MCLA5440</option>
                                    <option value="NETA6050">NETA6050</option>
                                    <option value="OSDA6000">OSDA6000</option>
                                    <option value="OSDA7000">OSDA7000</option>
                                    <option value="OOPA3440">DSAA5550</option>
                                    <option value="PROA6080">PROA6080</option>
                                    <option value="RPGA5440">RPGA5440</option>
                                    <option value="SPOA6000">SPOA6000</option>
                                    <option value="UNXA5100">UNXA5100</option>
                                    <option value="UNXA5110">UNXA5110</option>
                                    <option value="VBAA5440">VBAA5440</option>
                                    <option value="WINA2100">WINA2100</option>
                                    <option value="WSAA5000">WSAA5000</option>

                                </select>
                            </div>
                        </div>
                        <script>
                            $().ready(function(){
                                $("#dualMultiSem3").pickList();
                            });
                        </script>
                    </div>
                    <div id="Dual_Multi_Select_with_Filter_Search" class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="dualMultiSem4">Select Courses for Semester</label>
                            <br />
                            <div class="controls">
                                <input id="course_name" type="text" name="course_name" placeholder="Semester Name" />
                            </div>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <select multiple name="dualMultiSem4" id="dualMultiSem4">
                                    <option value="ULIA1010">ULIA1010</option>
                                    <option value="IOSA1100">IOSA1100</option>
                                    <option value="IPCA1440">IPCA1440</option>
                                    <option value="IBCA2330">IBCA2330</option>
                                    <option value="OOPA2440">OOPA2440</option>
                                    <option value="INTA2220">INTA2220</option>
                                    <option value="DBSA2010">DBSA2010</option>
                                    <option value="DBSA3010">DBSA3010</option>
                                    <option value="INTA3220">INTA3220</option>
                                    <option value="SYSA3660">SYSA3660</option>
                                    <option value="OOPA3440">OOPA3440</option>
                                    <option value="DCNA4550">DCNA4550</option>
                                    <option value="INTA4220">INTA4220</option>
                                    <option value="SYSA4660">SYSA4660</option>
                                    <option value="JACA4440">JACA4440</option>
                                    <option value="PRJA5660">PRJA5660</option>
                                    <option value="PRJA6660">PRJA6660</option>
                                    <option value="BACA3440">BACA3440</option>
                                    <option value="DBAA6250">DBAA6250</option>
                                    <option value="DBDA5250">DBDA5250</option>
                                    <option value="DBJA5650">DBJA5650</option>
                                    <option value="DBLA6260">DBLA6260</option>
                                    <option value="DBSA5010">DBSA5010</option>
                                    <option value="DBTA5440">DBTA5440</option>
                                    <option value="DBWA6240">DBWA6240</option>
                                    <option value="DOMA5450">DOMA5450</option>
                                    <option value="DSAA5550">DSAA5550</option>
                                    <option value="EJBA6050">EJBA6050</option>
                                    <option value="GAMA5310">GAMA5310</option>
                                    <option value="GAMA5320">GAMA5320</option>
                                    <option value="GAMA5360">GAMA5360</option>
                                    <option value="GAMA5370">GAMA5370</option>
                                    <option value="GPUA6100">GPUA6100</option>
                                    <option value="GPUA6210">GPUA6210</option>
                                    <option value="GUIA5460">GUIA5460</option>
                                    <option value="ISPA6060">ISPA6060</option>
                                    <option value="MAPA5230">MAPA5230</option>
                                    <option value="MAPA5240">MAPA5240</option>
                                    <option value="MCLA5440">MCLA5440</option>
                                    <option value="NETA6050">NETA6050</option>
                                    <option value="OSDA6000">OSDA6000</option>
                                    <option value="OSDA7000">OSDA7000</option>
                                    <option value="OOPA3440">DSAA5550</option>
                                    <option value="PROA6080">PROA6080</option>
                                    <option value="RPGA5440">RPGA5440</option>
                                    <option value="SPOA6000">SPOA6000</option>
                                    <option value="UNXA5100">UNXA5100</option>
                                    <option value="UNXA5110">UNXA5110</option>
                                    <option value="VBAA5440">VBAA5440</option>
                                    <option value="WINA2100">WINA2100</option>
                                    <option value="WSAA5000">WSAA5000</option>

                                </select>
                            </div>
                        </div>
                        <script>
                            $().ready(function(){
                                $("#dualMultiSem4").pickList();
                            });
                        </script>
                    </div>
                    <div id="Dual_Multi_Select_with_Filter_Search" class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="dualMultiSem5">Select Courses for Semester</label>
                            <br />
                            <div class="controls">
                                <input id="course_name" type="text" name="course_name" placeholder="Semester Name" />
                            </div>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <select multiple name="dualMultiSem5" id="dualMultiSem5">
                                    <option value="ULIA1010">ULIA1010</option>
                                    <option value="IOSA1100">IOSA1100</option>
                                    <option value="IPCA1440">IPCA1440</option>
                                    <option value="IBCA2330">IBCA2330</option>
                                    <option value="OOPA2440">OOPA2440</option>
                                    <option value="INTA2220">INTA2220</option>
                                    <option value="DBSA2010">DBSA2010</option>
                                    <option value="DBSA3010">DBSA3010</option>
                                    <option value="INTA3220">INTA3220</option>
                                    <option value="SYSA3660">SYSA3660</option>
                                    <option value="OOPA3440">OOPA3440</option>
                                    <option value="DCNA4550">DCNA4550</option>
                                    <option value="INTA4220">INTA4220</option>
                                    <option value="SYSA4660">SYSA4660</option>
                                    <option value="JACA4440">JACA4440</option>
                                    <option value="PRJA5660">PRJA5660</option>
                                    <option value="PRJA6660">PRJA6660</option>
                                    <option value="BACA3440">BACA3440</option>
                                    <option value="DBAA6250">DBAA6250</option>
                                    <option value="DBDA5250">DBDA5250</option>
                                    <option value="DBJA5650">DBJA5650</option>
                                    <option value="DBLA6260">DBLA6260</option>
                                    <option value="DBSA5010">DBSA5010</option>
                                    <option value="DBTA5440">DBTA5440</option>
                                    <option value="DBWA6240">DBWA6240</option>
                                    <option value="DOMA5450">DOMA5450</option>
                                    <option value="DSAA5550">DSAA5550</option>
                                    <option value="EJBA6050">EJBA6050</option>
                                    <option value="GAMA5310">GAMA5310</option>
                                    <option value="GAMA5320">GAMA5320</option>
                                    <option value="GAMA5360">GAMA5360</option>
                                    <option value="GAMA5370">GAMA5370</option>
                                    <option value="GPUA6100">GPUA6100</option>
                                    <option value="GPUA6210">GPUA6210</option>
                                    <option value="GUIA5460">GUIA5460</option>
                                    <option value="ISPA6060">ISPA6060</option>
                                    <option value="MAPA5230">MAPA5230</option>
                                    <option value="MAPA5240">MAPA5240</option>
                                    <option value="MCLA5440">MCLA5440</option>
                                    <option value="NETA6050">NETA6050</option>
                                    <option value="OSDA6000">OSDA6000</option>
                                    <option value="OSDA7000">OSDA7000</option>
                                    <option value="OOPA3440">DSAA5550</option>
                                    <option value="PROA6080">PROA6080</option>
                                    <option value="RPGA5440">RPGA5440</option>
                                    <option value="SPOA6000">SPOA6000</option>
                                    <option value="UNXA5100">UNXA5100</option>
                                    <option value="UNXA5110">UNXA5110</option>
                                    <option value="VBAA5440">VBAA5440</option>
                                    <option value="WINA2100">WINA2100</option>
                                    <option value="WSAA5000">WSAA5000</option>

                                </select>
                            </div>
                        </div>
                        <script>
                            $().ready(function(){
                                $("#dualMultiSem5").pickList();
                            });
                        </script>
                    </div>
                    <div id="Dual_Multi_Select_with_Filter_Search" class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="dualMultiSem6">Select Courses for Semester</label>
                            <br />
                            <div class="controls">
                                <input id="course_name" type="text" name="course_name" placeholder="Semester Name" />
                            </div>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <select multiple name="dualMultiSem6" id="dualMultiSem6">
                                    <option value="ULIA1010">ULIA1010</option>
                                    <option value="IOSA1100">IOSA1100</option>
                                    <option value="IPCA1440">IPCA1440</option>
                                    <option value="IBCA2330">IBCA2330</option>
                                    <option value="OOPA2440">OOPA2440</option>
                                    <option value="INTA2220">INTA2220</option>
                                    <option value="DBSA2010">DBSA2010</option>
                                    <option value="DBSA3010">DBSA3010</option>
                                    <option value="INTA3220">INTA3220</option>
                                    <option value="SYSA3660">SYSA3660</option>
                                    <option value="OOPA3440">OOPA3440</option>
                                    <option value="DCNA4550">DCNA4550</option>
                                    <option value="INTA4220">INTA4220</option>
                                    <option value="SYSA4660">SYSA4660</option>
                                    <option value="JACA4440">JACA4440</option>
                                    <option value="PRJA5660">PRJA5660</option>
                                    <option value="PRJA6660">PRJA6660</option>
                                    <option value="BACA3440">BACA3440</option>
                                    <option value="DBAA6250">DBAA6250</option>
                                    <option value="DBDA5250">DBDA5250</option>
                                    <option value="DBJA5650">DBJA5650</option>
                                    <option value="DBLA6260">DBLA6260</option>
                                    <option value="DBSA5010">DBSA5010</option>
                                    <option value="DBTA5440">DBTA5440</option>
                                    <option value="DBWA6240">DBWA6240</option>
                                    <option value="DOMA5450">DOMA5450</option>
                                    <option value="DSAA5550">DSAA5550</option>
                                    <option value="EJBA6050">EJBA6050</option>
                                    <option value="GAMA5310">GAMA5310</option>
                                    <option value="GAMA5320">GAMA5320</option>
                                    <option value="GAMA5360">GAMA5360</option>
                                    <option value="GAMA5370">GAMA5370</option>
                                    <option value="GPUA6100">GPUA6100</option>
                                    <option value="GPUA6210">GPUA6210</option>
                                    <option value="GUIA5460">GUIA5460</option>
                                    <option value="ISPA6060">ISPA6060</option>
                                    <option value="MAPA5230">MAPA5230</option>
                                    <option value="MAPA5240">MAPA5240</option>
                                    <option value="MCLA5440">MCLA5440</option>
                                    <option value="NETA6050">NETA6050</option>
                                    <option value="OSDA6000">OSDA6000</option>
                                    <option value="OSDA7000">OSDA7000</option>
                                    <option value="OOPA3440">DSAA5550</option>
                                    <option value="PROA6080">PROA6080</option>
                                    <option value="RPGA5440">RPGA5440</option>
                                    <option value="SPOA6000">SPOA6000</option>
                                    <option value="UNXA5100">UNXA5100</option>
                                    <option value="UNXA5110">UNXA5110</option>
                                    <option value="VBAA5440">VBAA5440</option>
                                    <option value="WINA2100">WINA2100</option>
                                    <option value="WSAA5000">WSAA5000</option>

                                </select>
                            </div>
                        </div>
                        <script>
                            $().ready(function(){
                                $("#dualMultiSem6").pickList();
                            });
                        </script>
                    </div>
                    <div id="Dual_Multi_Select_with_Filter_Search" class="control-group row-fluid">
                        <div class="span3">
                            <label class="control-label" for="dualMultiProf">Select Courses for Semester</label>
                            <br />
                            <div class="controls">
                                <input id="course_name" type="text" name="course_name" placeholder="Semester Name" />
                            </div>
                        </div>
                        <div class="span9">
                            <div class="controls">
                                <select multiple name="dualMultiProf" id="dualMultiProf">
                                    <option value="ULIA1010">ULIA1010</option>
                                    <option value="IOSA1100">IOSA1100</option>
                                    <option value="IPCA1440">IPCA1440</option>
                                    <option value="IBCA2330">IBCA2330</option>
                                    <option value="OOPA2440">OOPA2440</option>
                                    <option value="INTA2220">INTA2220</option>
                                    <option value="DBSA2010">DBSA2010</option>
                                    <option value="DBSA3010">DBSA3010</option>
                                    <option value="INTA3220">INTA3220</option>
                                    <option value="SYSA3660">SYSA3660</option>
                                    <option value="OOPA3440">OOPA3440</option>
                                    <option value="DCNA4550">DCNA4550</option>
                                    <option value="INTA4220">INTA4220</option>
                                    <option value="SYSA4660">SYSA4660</option>
                                    <option value="JACA4440">JACA4440</option>
                                    <option value="PRJA5660">PRJA5660</option>
                                    <option value="PRJA6660">PRJA6660</option>
                                    <option value="BACA3440">BACA3440</option>
                                    <option value="DBAA6250">DBAA6250</option>
                                    <option value="DBDA5250">DBDA5250</option>
                                    <option value="DBJA5650">DBJA5650</option>
                                    <option value="DBLA6260">DBLA6260</option>
                                    <option value="DBSA5010">DBSA5010</option>
                                    <option value="DBTA5440">DBTA5440</option>
                                    <option value="DBWA6240">DBWA6240</option>
                                    <option value="DOMA5450">DOMA5450</option>
                                    <option value="DSAA5550">DSAA5550</option>
                                    <option value="EJBA6050">EJBA6050</option>
                                    <option value="GAMA5310">GAMA5310</option>
                                    <option value="GAMA5320">GAMA5320</option>
                                    <option value="GAMA5360">GAMA5360</option>
                                    <option value="GAMA5370">GAMA5370</option>
                                    <option value="GPUA6100">GPUA6100</option>
                                    <option value="GPUA6210">GPUA6210</option>
                                    <option value="GUIA5460">GUIA5460</option>
                                    <option value="ISPA6060">ISPA6060</option>
                                    <option value="MAPA5230">MAPA5230</option>
                                    <option value="MAPA5240">MAPA5240</option>
                                    <option value="MCLA5440">MCLA5440</option>
                                    <option value="NETA6050">NETA6050</option>
                                    <option value="OSDA6000">OSDA6000</option>
                                    <option value="OSDA7000">OSDA7000</option>
                                    <option value="OOPA3440">DSAA5550</option>
                                    <option value="PROA6080">PROA6080</option>
                                    <option value="RPGA5440">RPGA5440</option>
                                    <option value="SPOA6000">SPOA6000</option>
                                    <option value="UNXA5100">UNXA5100</option>
                                    <option value="UNXA5110">UNXA5110</option>
                                    <option value="VBAA5440">VBAA5440</option>
                                    <option value="WINA2100">WINA2100</option>
                                    <option value="WSAA5000">WSAA5000</option>

                                </select>
                            </div>
                        </div>
                        <script>
                            $().ready(function(){
                                $("#dualMultiProf").pickList();
                            });
                        </script>
                    </div>
                    <!--Dual Multi Select end-->
                </div><!-- end container -->
                <div class="row-fluid">
                    <div class="span2 offset4">
                        <button type="button" class="btn btn-large btn-block btn-info">Add</button>
                    </div>
                    <div class="span2">
                        <button type="button" class="btn btn-large btn-block">Cancel</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
