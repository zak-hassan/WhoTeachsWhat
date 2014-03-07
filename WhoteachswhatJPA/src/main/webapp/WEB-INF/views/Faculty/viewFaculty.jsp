<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
	<title> Faculty - View </title>
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

	function deleteDialog(){
		bootbox.dialog('<h3>Confirming</h3><br /> Are you sure you would like to delete this faculty member? <br /> <br /> <br /><button class="btn btn-danger btn-small"  onclick=\'deleteJob();\'><i class="icon-white icon-download-alt"></i> Confirm Delete </button><button class="btn btn-primary btn-small" onclick="closeAll();"><i class="icon-white icon-download-alt"></i> Cancel</button>');
	};

	function closeAll(){
		bootbox.hideAll();
	}

</script>
	<div class="wrapper">
		<!-- 
		['Faculty','Courses','Program','Report', Help']
		-->
		<!-- BREADCRUMB STARTS HERE -->
		<div class="breadcrumb-container" style="width:100%">
			<ul class="xbreadcrumbs">
				<li>
					<a href="dashboard.html">
						<i class="icon-photon home"></i>
					</a>
				</li>
				<li>
					<a href="#" class="span1">Faculty</a>
				</li>
				<li class="current">
					<a href="javascript:;" class="span1">View</a>
				</li>
			</ul>
			<div style="position:absolute;right:0px;">					
				<span><i class="icon-photon user"></i> Mary-Lynn Manton </span> 
				<span>
					<i class="icon-photon key_stroke"></i>
				</span>
			</div>
		</div> 
			<!-- BREADCRUMB ENDS HERE -->
				      
		<header>
			<i class="icon-big-notepad"></i>
			<h2><small>List Faculty</small></h2>
			<h3><small>List all faculty currently in this system</small></h3>
		</header>
		<form class="form-horizontal">
			<div class="container-fluid">

			<!--START OF DOCUMENTATION -->
				<div class="">
					Legend: 
					<i class="icon-list-alt"></i> =  Responsibility 
					<i class="icon-time"></i>  = Complimentary Hours
					<i class="icon-book"></i> = Course
					<i class="icon-edit"></i> = Update
					<i class="icon-trash"></i> = Delete
			    </div>

			<!--END OF DOCUMENTATION -->
			<!-- START OF NEW CONTENT -->
				<!--Sortable Non-responsive Table begin-->

					<style type="text/css">
						td.align {
							text-align: right;
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
									   <tr>
											<th>#</th>
											<th>Faculty Member(s)</th>
											<th width="20%" style="text-align: right">Operation(s)</th>
										</tr>
								   </tr>
							   </thead>
							   <tbody>
								   <tr>
										<td>1</td>
										<td><label><a href="#">Barb Czegel</a></label></td>
										<td class="align">
<a class="bootstrap-tooltip" data-original-title="Complimentary Hours" data-placement="top" href="Anil_ManageFacultyCompHours.html"> <i class="icon-time"></i> </a> 
<a class="bootstrap-tooltip" data-original-title="Responsibility" href="Anil_ManageFacultyResponsibilities.html"><i class="icon-list-alt"></i></a> 
<a class="bootstrap-tooltip" data-original-title="Courses" href="Anil_ManageFacultyCourses.html"> <i class="icon-book"></i> </a>
<a class="bootstrap-tooltip" data-original-title="Update" href="updateFaculty.html"><i class="icon-edit"></i></a> 
<a class="bootstrap-tooltip" data-original-title="Delete" onclick="deleteDialog()" href="#"><i class="icon-trash"></i> </a> 

										</td>
								   </tr>
								   <tr>
										<td>2</td>
										<td><label><a href="#">Ron Tarr</a></label></td>
										<td class="align">
<a class="bootstrap-tooltip" data-original-title="Complimentary Hours" data-placement="top" href="Anil_ManageFacultyCompHours.html"> <i class="icon-time"></i> </a> 
<a class="bootstrap-tooltip" data-original-title="Responsibility" data-placement="top" href="Anil_ManageFacultyResponsibilities.html"><i class="icon-list-alt"></i></a> 
<a class="bootstrap-tooltip" data-original-title="Courses" data-placement="top" href="Anil_ManageFacultyCourses.html"> <i class="icon-book"></i> </a>
<a class="bootstrap-tooltip" data-original-title="Update" data-placement="top" href="updateFaculty.html"><i class="icon-edit"></i></a> 
<a class="bootstrap-tooltip" data-original-title="Delete" data-placement="top" onclick="deleteDialog()" href="#"><i class="icon-trash"></i> </a> 
										</td>
								   </tr>
								   <tr>
										<td>3</td>
										<td><label><a href="#">Arta Kogan</a></label></td>
										<td class="align">
<a class="bootstrap-tooltip" data-original-title="Complimentary Hours" data-placement="top" href="Anil_ManageFacultyCompHours.html"> <i class="icon-time"></i> </a>
<a class="bootstrap-tooltip" data-original-title="Responsibility" data-placement="top" href="Anil_ManageFacultyResponsibilities.html"><i class="icon-list-alt"></i></a>
<a class="bootstrap-tooltip" data-original-title="Courses" data-placement="top" href="Anil_ManageFacultyCourses.html"> <i class="icon-book"></i> </a>
<a class="bootstrap-tooltip" data-original-title="Update" data-placement="top" href="updateFaculty.html"><i class="icon-edit"></i></a>
<a class="bootstrap-tooltip" data-original-title="Delete" data-placement="top" onclick="deleteDialog()" href="#"><i class="icon-trash"></i> </a>
										</td>
								   </tr>
								   <tr>
										<td>4</td>
										<td><label><a href="#">Peter McIntyre</a></label></td>
										<td class="align">
<a class="bootstrap-tooltip" data-original-title="Complimentary Hours" data-placement="top" href="Anil_ManageFacultyCompHours.html"> <i class="icon-time"></i> </a>
<a class="bootstrap-tooltip" data-original-title="Responsibility" data-placement="top" href="Anil_ManageFacultyResponsibilities.html"><i class="icon-list-alt"></i></a>
<a class="bootstrap-tooltip" data-original-title="Courses" data-placement="top" href="Anil_ManageFacultyCourses.html"> <i class="icon-book"></i> </a>
<a class="bootstrap-tooltip" data-original-title="Update" data-placement="top" href="updateFaculty.html"><i class="icon-edit"></i></a>
<a class="bootstrap-tooltip" data-original-title="Delete" data-placement="top" onclick="deleteDialog()" href="#"><i class="icon-trash"></i> </a>
										</td>
								   </tr>
								   <tr>
										<td>5</td>
										<td><label><a href="#">Mark Fernandes</a></label></td>
										<td class="align">
<a class="bootstrap-tooltip" data-original-title="Complimentary Hours" data-placement="top" href="Anil_ManageFacultyCompHours.html"> <i class="icon-time"></i> </a>
<a class="bootstrap-tooltip" data-original-title="Responsibility" data-placement="top" href="Anil_ManageFacultyResponsibilities.html"><i class="icon-list-alt"></i></a>
<a class="bootstrap-tooltip" data-original-title="Courses" data-placement="top" href="Anil_ManageFacultyCourses.html"> <i class="icon-book"></i> </a>
<a class="bootstrap-tooltip" data-original-title="Update" data-placement="top" href="updateFaculty.html"><i class="icon-edit"></i></a>
<a class="bootstrap-tooltip" data-original-title="Delete" data-placement="top" onclick="deleteDialog()" href="#"><i class="icon-trash"></i> </a>
	
										</td>
								   </tr>
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
        </div>
        </body>
</html>
