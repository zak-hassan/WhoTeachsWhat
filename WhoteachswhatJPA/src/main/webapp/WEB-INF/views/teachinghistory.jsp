<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Teaching History Report</title>
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

<jsp:include page="includes/navigation-template.jsp" />
<!-- Navigation end -->
        <div class="wrapper">
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
                        <a href="javascript:;">Teaching History</a>
                    </li>
                </ul>
            </div>   
            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Generate Who Teaching History Report</small></h2>
                <h3><small>This report displays the summary who is teaching what at given semester and grouped by courses/semester since the beginning of time.</small></h3>
            </header>
            <form class="form-horizontal">
                <div class="span12">
                    <div class="container-fluid">
<!-- DATATABLE STARTS -->


<div class="">
		<div class="control-group row-fluid"> 
Legend: 	
		<i class="icon-ok"></i>= Did Teach
			<i class="icon-remove"></i> = Did Not Teach
	</div>
<div class="row-fluid">
						<div class="span12">
						   <div id="tableSortable_wrapper" class=" span12 dataTables_wrapper" role="grid"><div class="dataTables_length" id="tableSortable_length"><label>Show <div id="s2id_autogen1" class="select2-container">    <a href="javascript:void(0)" onclick="return false;" class="select2-choice">   <span>10</span><abbr class="select2-search-choice-close" style="display:none;"></abbr>   <div><b></b></div></a>    <div class="select2-drop select2-offscreen noSearch">   <div class="select2-search">       <input autocomplete="off" class="select2-input" type="text">   </div>   <ul class="select2-results">   </ul></div></div><select style="display: none;" aria-controls="tableSortable" size="1" name="tableSortable_length"><option selected="selected" value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div><div id="tableSortable_filter" class="dataTables_filter"><label>Search: <input aria-controls="tableSortable" type="text"></label></div><table aria-describedby="tableSortable_info" class="table table-striped dataTable" id="tableSortable">
							   <thead>
								   <tr role="row">
									   </tr>
<tr role="row">
<th aria-label="#: activate to sort column descending" aria-sort="ascending" style="width: 189px;" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting_asc">#</th>
<th aria-label="Faculty Member(s): activate to sort column ascending" style="width: 1200px;" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting">Faculty Member(s)</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">Course Code</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">081</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">082</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">083</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">091</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">092</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">093</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">101</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">102</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">103</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">111</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">112</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">113</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">121</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">122</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">123</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">131</th>
<th aria-label="Operation(s): activate to sort column ascending" colspan="1" rowspan="1" aria-controls="tableSortable" tabindex="0" role="columnheader" class="sorting" style="text-align: right; width: 237px;">132</th></tr>
								   
							   </thead>
							   
							<tbody aria-relevant="all" aria-live="polite" role="alert"><tr class="odd">
										<td class="  sorting_1">1</td>
										<td class=" "><label><a href="#">Barb Czegel</a></label></td>
										<td class=" ">DSA555</td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-remove"></i></td>
								   </tr><tr class="even">
										<td class="  sorting_1">2</td>
										<td class=" "><label><a href="#">Ron Tarr</a></label></td>
									<td class=" ">DSA555</td>
	
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
                                                                                <td><i class=" icon-ok"></i></td>
										<td><i class=" icon-remove"></i></td>
								   </tr><tr class="odd">
										<td class="  sorting_1">3</td>
										<td class=" "><label><a href="#">Arta Kogan</a></label></td>
										<td class=" ">DSA555</td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-remove"></i></td>
								   </tr><tr class="even">
										<td class="  sorting_1">4</td>
										<td class=" "><label><a href="#">Peter McIntyre</a></label></td>
										<td class=" ">DSA555</td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-remove"></i></td>
								   </tr><tr class="odd">
										<td class="  sorting_1">5</td>
										<td class=" "><label><a href="#">Mark Fernandes</a></label></td>
										<td class=" ">DSA555</td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-ok"></i></td>
										<td><i class=" icon-remove"></i></td>
								   </tr></tbody></table><div id="tableSortable_info" class="dataTables_info">Showing 1 to 5 of 5 entries</div><div class="dataTables_paginate paging_bootstrap pagination"><ul><li class="prev disabled"><a href="#">«</a></li><li class="active"><a href="#">1</a></li><li class="next disabled"><a href="#">»</a></li></ul></div></div>
						</div>
					</div>



<!-- END OF DATATABLE -->




                    </div><!-- end container -->
                </div>
    </div>
            </form>
        </div>
    </body>
</html>
