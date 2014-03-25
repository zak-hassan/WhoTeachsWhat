<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Manage Complimentary Hour Types - Admin Panel</title>
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
<script type="text/javascript" src="static/js/bootRestful/bootrestful.js"></script>
<script type="text/javascript" src="resources/adsantokhi_quote_string.js"></script>
    </head>

    <body class="body-inner">
            
    <div class="btn-toolbar btn-mobile-menus">
        <button class="btn btn-main-menu"></button>
        <button class="btn btn-user-menu"><i class="icon-logo"></i></button>
    </div>

<!-- Navigation starts -->    
<jsp:include page="includes/navigation-template.jsp" />
<!-- Navigation end -->
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
    
    /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a comp hour type
     
   */
   
	var addCompHour=function() {
		$.ajax({
			type: "POST",
			url: "api/comphour",
			data: { 
				comp_hour_code: document.getElementById("comp_hour_code").value, 
				comp_hour_name: document.getElementById("comp_hour_name").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Complimentary Hour added',
						type : 'info',
						text : 'Complimentary Hour ' + document.getElementById('comp_hour_name').value + ' has been added'
					});
		    		
		    		$.ajax({
		    			type: "GET",
		    			url: "api/comphour/"+data.id,
		    			data: null,
		    			dataType: "json",
		    			cache: false,
		    			success : function(comphour){
		    			
		    				var createA1 = document.createElement('a');
		    				var createA2 = document.createElement('a');
		    				var createUpdateIcon = document.createElement('i');
		    				var createDeleteIcon = document.createElement('i');

		    				tempCompHourName = adsantokhi_quote_string(comphour.name);
		    				tempCompHourCode = adsantokhi_quote_string(comphour.code);
		    				
		    				createA1.setAttribute('onclick', 'updateForm(' + data.id + ', ' + tempCompHourCode + ', '
		    					+ tempCompHourName +')');
		    				createA1.setAttribute('data-toggle', 'modal');
		    				createA1.setAttribute('data-target', '#updateCompHourModal');
		    				createA1.setAttribute('class', 'bootstrap-tooltip');
		    				createA1.setAttribute('data-original-title', 'Update');

		    				createA2.setAttribute('onclick', 'deleteCompHour(' + data.id + ', ' + tempCompHourName + ')');
		    				createA2.setAttribute('class', 'bootstrap-tooltip');
		    				createA2.setAttribute('data-original-title', 'Delete');
		    				
		    				createUpdateIcon.setAttribute('class', 'icon-edit');
		    				createDeleteIcon.setAttribute('class', 'icon-trash');
		    					    				 
		    				createA1.appendChild(createUpdateIcon);
		    				createA2.appendChild(createDeleteIcon);
		    				
		    				var updateLink = document.createElement("div");
		    				updateLink.appendChild(createA1);
		    				
		    				var deleteLink = document.createElement("div");
		    				deleteLink.appendChild(createA2);
		    				
		    				var newRow = $('#tableSortable').dataTable()
		    					.fnAddData( [data.id, comphour.code, comphour.name,
		    						updateLink.innerHTML + " | " + deleteLink.innerHTML] );
		    				
		    				var oSettings = $('#tableSortable').dataTable().fnSettings();
		    				var nTr = oSettings.aoData[ newRow[0] ].nTr;
		    				$('td', nTr)[3].setAttribute( 'class', 'align' );
		    			}
		    		});
		    		
		    		document.getElementById("addCompHourForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addCompHourModal').modal('hide');
			   	}
			}
		});
	};

	   
	var updateCompHour=function() {	
		$.ajax({
			type: "POST",
			url: "api/comphour/"+document.getElementById("up_comp_hour_id").value,
			data: { 
				comp_hour_code: document.getElementById("up_comp_hour_code").value, 
				comp_hour_name: document.getElementById("up_comp_hour_name").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'Complimentary Hour updated',
						type : 'info',
						text : 'Complimentary Hour ' + document.getElementById('up_comp_hour_name').value + ' has been updated'
					});
		    		
		    		document.getElementById("updateCompHourForm").reset(); // Form needs resetting due to never being submitted
		    		$('#updateCompHourModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};

	var deleteCompHour= function(id, compHourType) {
	 	$.ajax({
	 		type:"DELETE", 
		  	url : "api/comphours/"+id,
		  	data : null,
		  	cache : false,
		  	success : function(data){
	     		if (data.success === "true") {
	    			$.pnotify({
						title : 'Comp Hour :' + compHourType,
						type : 'info',
						text : compHourType + ' has been deleted'
					});
    				location.reload();
	  			}
	 	  	}
	 	});
	};
		   
   var updateForm=function(comp_hour_id, comp_hour_code, comp_hour_name){
		$("#up_comp_hour_id").val(comp_hour_id);
		$("#up_comp_hour_code").val(comp_hour_code);
		$("#up_comp_hour_name").val(comp_hour_name);
	};	
    
</script>
        <div class="wrapper">
            <div class="breadcrumb-container" style="width: 100%">
    <ul class="xbreadcrumbs">
        <li>
            <a href="dashboard.html">
                <i class="icon-photon home"></i>
            </a>
        </li>
        <li>
            <a href="#">Admin Panel</a>
        </li>
        <li class="current">
            <a href="manageCompHours">Complimentary Hours</a>
        </li>
    </ul>
</div>            <header>
                <i class="icon-big-notepad"></i>
                <h2><small>Manage Complimentary Hour Types</small></h2>
                <h3><small>Update and remove complimentary hour types</small></h3>
            </header>
            <form method="post" action="ajaxAddCompHourType" id="manageCompHourTypeForm"
            	class="form-horizontal">
                <div class="container-fluid">
			<!-- START OF NEW CONTENT -->
				<!--Sortable Non-responsive Table begin-->
	
					<style type="text/css">
						td.align {
							text-align: right;
							vertical-align:middle;
						}
						
						td {
							vertical-align:middle;
						}
					</style>
					
					<div class="row-fluid">
						<div class="span12">
						   <table class="table table-striped" id="tableSortable">
							   <thead>
								   <tr>
										<th>#</th>
										<th>Complimentary Hour Code</th>
										<th>Complimentary Hour Name</th>
						
										<th width="25%" style="text-align: right">Operation(s)</th>
									</tr>
							   </thead>
							   <tbody>
									<c:forEach items="${allComphours }" var="comphours">
									<tr>
										<td>${comphours.getCompHour_id() }</td>
										<td><label>${comphours.getCompHour_code() }</label></td>
										<td><label>${comphours.getCompHour_name() }</label></td>
										<td class="align">
											<a 
												class="bootstrap-tooltip" data-original-title="Update" 
													onclick="updateForm('${comphours.getCompHour_id() }', 
														'${comphours.getCompHour_code() }', '${comphours.getCompHour_name() }')"
													data-toggle="modal" data-target="#updateCompHourModal">
													<i class="icon-edit"></i>
											</a>
											| 
											<a class="bootstrap-tooltip" data-original-title="Delete" 
												onclick="deleteCompHour('${comphours.getCompHour_id() }', 
													'${comphours.getCompHour_name() }')">
												<i class="icon-trash"></i>
											</a> 
										</td>
									</tr>
									</c:forEach>
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

			<!-- END OF NEW CONTENT-->
                </div><!-- end container -->

            </form>
            
        <!-- Button trigger modal -->
		<button class="btn btn-primary btn-lg" data-toggle="modal"
			data-target="#addCompHourModal">Add Comp Hour</button>

		<!-- Modal -->
		<div class="modal fade" id="addCompHourModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Add Comp Hour</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="addCompHourForm" class="form-horizonatal">
						
							<div class="input-group">
								<span class="input-group-addon">Complimentary Hour Code </span><br /> <input
									type="text" class="form-control" name="comp_hour_code" id="comp_hour_code"
									placeholder="Code" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Complimentary Hour Type </span><br /> <input
									type="text" class="form-control" name="comp_hour_type" id="comp_hour_name"
									placeholder="Type" />
							</div>
							
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="addCompHour();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF ADD MODAL -->
		
		<!-- Modal -->
		<div class="modal fade" id="updateCompHourModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Update Comp Hour</h4>
					</div>
					<div class="modal-body">
						<!--  FORM ADD -->
						<form role="form" id="updateCompHourForm" class="form-horizonatal">
							<div class="input-group">
								<input type="hidden" class="form-control" name="up_comp_hour_id" id="up_comp_hour_id" />
							</div>
							
							<div class="input-group">
								<span class="input-group-addon">Complimentary Hour Code </span><br /> <input
									type="text" class="form-control" name="up_comp_hour_code" id="up_comp_hour_code" />
							</div>
							<div class="input-group">
								<span class="input-group-addon">Complimentary Hour Type </span><br /> <input
									type="text" class="form-control" name="up_comp_hour_name" id="up_comp_hour_name" />
							</div>
							
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" onclick="updateCompHour();"
								class="btn btn-primary">Save changes</button>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>

		<!--  END OF UPDATE MODAL -->
            
        </div>
        </body>
</html>
