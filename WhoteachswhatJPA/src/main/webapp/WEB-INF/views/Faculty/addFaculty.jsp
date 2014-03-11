<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Manage Faculty - Add </title>
	    <jsp:include page="../includes/static_includes.jsp" />

<meta charset="utf-8">
<title>Manage Faculty - Add</title>
<jsp:include page="../includes/static_includes.jsp" />

<!-- JS -->
	<script>
		$(function() {
			setTimeout(function() {
				$('.nav-fixed-topright').removeAttr('style');
			}, 300);

			$(window).scroll(function() {
				if ($('.breadcrumb-container').length) {
					var scrollState = $(window).scrollTop();
					if (scrollState > 0)
						$('.nav-fixed-topright').addClass('nav-released');
					else
						$('.nav-fixed-topright').removeClass('nav-released')
				}
			});
			$('.user-sub-menu-container').on('click', function() {
				$(this).toggleClass('active-user-menu');
			});
			$('.user-sub-menu .light').on('click', function() {
				if ($('body').is('.light-version'))
					return;
				$('body').addClass('light-version');
				setTimeout(function() {
					$.cookie('themeColor', 'light', {
						expires : 7,
						path : '/'
					});
				}, 500);
			});
			$('.user-sub-menu .dark').on('click', function() {
				if ($('body').is('.light-version')) {
					$('body').removeClass('light-version');
					$.cookie('themeColor', 'dark', {
						expires : 7,
						path : '/'
					});
				}
			});
			$("#simpleSelectBox").select2();
		});

		var addFaculty = function() {
			$.post("addFaculty", {
				fname : document.getElementById("fname").value,
				lname : document.getElementById("lname").value,
				fstatus : $('#fstatus').find('option:selected').text(),
				accesslevel : $('#accesslevel').find('option:selected').text(),
				userId : $('#email').find('option:selected').text()
			}).done(function(data) {
				console.log("Faculty added: " + JSON.stringify(data));
				$.pnotify({
					title : 'New Faculty Added',
					type : 'info',
					text : 'Added a new faculty member to our system'
				});
				return false;

				return false;
			});
			return false;
		};

		$('#addFaculty').validate({
			onkeyup : false,
			errorClass : 'error',
			rules : {
				fname : {
					required : true,
					minlength : 3
				},
				lname : {
					required : true,
					minlength : 3,
					fstatus : {
						valueNotEquals : ""
					}
				},
				email : {
					required : true,
					email : true
				}
			},
			messages : {
				username : "first name must be a minimum of 3 characters",
				lname : "last name must be a minimum of 3 characters",
				fstatus : "Must select a status",
				email : "Email is not valid must be, HINT: ***@senecacollege.ca"
				
			}
		});

		$(".control-group").css({
			"background" : "#fff",
			"padding" : "3px",
			"border-top" : "1px solid #000"
		});
	</script>
</head>
<body class="body-inner">
	<div class="btn-toolbar btn-mobile-menus">
		<button class="btn btn-main-menu"></button>
		<button class="btn btn-user-menu">
			<i class="icon-logo"></i>
		</button>
	</div>
	<!-- Navigation starts -->
	<jsp:include page="../includes/navigation-template.jsp" />	
	<div class="wrapper">
		<div class="breadcrumb-container">
			<ul class="xbreadcrumbs">
				<li><a href="dashboard.html"> <i class="icon-photon home"></i>
				</a></li>
				<li><a href="#">Manage Faculty</a></li>
				<li class="current"><a href="javascript:;">Add</a></li>
			</ul>
		</div>
		<header>
			<i class="icon-big-notepad"></i>
			<h2>
				<small>Add Faculty</small>
			</h2>
			<h3>
				<small>You can add new faculty members.</small>
			</h3>
		</header>
		<form id="addFaculty" class="addFaculty" action="addFaculty"
			method="post" onsubmit="return addFaculty();">
			<div class="container-fluid">
				<div class="form-legend" id="Input_Field">Create new faculty</div>
				<!--Input Field begin-->
				<div class="control-group row-fluid">
					<div class="span3">
						<label class="control-label" for="fname">First Name</label>
					</div>
					<div class="span9">
						<div class="controls">
							<input id="fname" type="text" placeholder="First Name ... "
								name="fname" value="" />
						</div>
					</div>
				</div>
				<!--Input Field end-->
				<!--Input Field with Placeholder begin-->
				<div id="Input_Field_with_Placeholder"
					class="control-group row-fluid">
					<div class="span3">
						<label class="control-label" for="inputFieldPlaceholder">Last
							Name</label>
					</div>
					<div class="span9">
						<div class="controls">
							<input id="lname" value="" type="text"
								placeholder="Last Name ..." name="lname" />
						</div>
					</div>
				</div>
				<!--Input Field with Placeholder end-->
				<!--Input Field with Auto Complete begin-->
				<div id="Input_Field_with_Auto_Complete"
					class="control-group row-fluid">
					<div class="span3">
						<label class="control-label" for="inputFieldAC">Status <a
							href="#" class="bootstrap-tooltip" data-placement="top"
							data-original-title="Full-time , Part-time or Unactivated"><i
								class="icon-photon info-circle"></i></a>
						</label>
					</div>
					<div class="span2">
						<div class="controls">
							<select name="fstatus" id="fstatus">
								<option selected="" value="">- Choose -</option>
								<option value="fulltime">Full-Time</option>
								<option value="parttime">Part-Time</option>
								<option value="unavailable">Unavailable</option>
							</select>
						</div>
					</div>
				</div>
				
				
					<div id="Input_Field_with_Placeholder"
					class="control-group row-fluid">
					<div class="span3">
						<label class="control-label" for="email">Email Address / User ID:</label>
					</div>
					<div class="span9">
						<div class="controls">
							<input id="email" value="" type="text"
								placeholder="Email is used for Userid" name="email" />
						</div>
					</div>
					
				</div>
				
<!--  					<div id="Input_Field_with_Placeholder"
					class="control-group row-fluid">
					<div class="span3">
						<label class="control-label" for="hours">Max Hours To Teach per week:</label>
					</div>
					<div class="span9">
						<div class="controls">
							<input id="hours_to_teach" value="" type="text"
								placeholder="Last Name ..." name="hours_to_teach" />
						</div>
					</div>
				</div>
		 -->		
				<div id="Input_Field_with_Auto_Complete"
					class="control-group row-fluid">
					<div class="span3">
						<label class="control-label" for="inputFieldAC">Role <a
							href="#" class="bootstrap-tooltip" data-placement="top"
							data-original-title="Full-time , Part-time or Unactivated"><i
								class="icon-photon info-circle"></i></a>
						</label>
					</div>
					<!--  TODO: NEED TO GET ALL ACCESSLEVELS AND FILL THIS: -->
					<div class="span2">
						<div class="controls">
							<select name="accesslevel" id="accesslevel">
								<option value="0" selected="selected">No Access</option>
								<option value="1">Web Master</option>
								<option value="2">Scheduler</option>
								<option value="3">Level One Coordinator</option>
								<option value="4">Level Two Coordinator</option>
								<option value="5">Administrator</option>
							</select>
						</div>
					</div>
				</div>
				
				
				<!--Input Field with Auto Complete end-->
				<div id="Input_Field_with_Auto_Complete"
					class="control-group row-fluid">
					<div class="span2 offset4">
						<button class="btn btn-large btn-block btn-info" type="submit">Save</button>
					</div>
					<div class="span2">
						<button class="btn btn-large btn-block" type="button">Clear</button>
					</div>
				</div>
			</div>
			<!-- end container -->
		</form>
	</div>
</body>
</html>
