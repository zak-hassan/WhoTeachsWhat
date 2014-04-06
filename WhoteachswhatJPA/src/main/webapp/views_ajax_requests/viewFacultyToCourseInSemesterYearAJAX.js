/**
	@Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a faculty to a course in a particular 
    		  semester during a certain year
	@Requires: client_side_validation/client_side_validation.js, jQuery
*/
   
	// Get faculty id from query string
	var facultyId = window.location.search.slice(4); // Removes ?id=
	facultyId = encodeURI(facultyId); // Escape string
	
	var evalFactorLength = 10;

	$(document).ready(function () {
		// $("#preptimeName").attr('maxlength', prepTimeLength);
	});
    
   var addFacToCourseSem=function() {
	   if (!facultyId || !facultyId.length) { // If no id in query string, use the one from the form
			facultyId = document.getElementById("facultyId").value;
		}
		
		$.ajax({
			type: "POST",
			url: "api/facultyToCourseInSemesterYear",
			data: { 
				additionAttribute: document.getElementById("additionAttribute").value, 
		   		comphourAllowance: document.getElementById("comphourAllowance").value,
		   		comphourAssigned: document.getElementById("comphourAssigned").value,
		   		sectionNumber: document.getElementById("sectionNumber").value,
		   		semesterId: document.getElementById("semesterId").value,
		   		year: document.getElementById("year").value,
		   		comphourId: document.getElementById("comphourId").value,
		   		courseId: document.getElementById("courseId").value,
		   		facultyId: facultyId,
		   		prepTimeId: document.getElementById("prepTimeId").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Course Added to Faculty',
						type : 'info',
						text : 'Course has been assigned to faculty'
					});
		    		
		    		document.getElementById("addFacToCourseSemForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addFacToCourseSemModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};
   
	var updateFacToCourseSem=function() {
		if (!facultyId || !facultyId.length) { // If no id in query string, use the one from the form
			facultyId = document.getElementById("up_facultyId").value;
		}
		
		$.ajax({
			type: "POST",
			url: "api/facultyToCourseInSemesterYear/"+document.getElementById("up_cisId").value,
			data: { 
				additionAttribute: document.getElementById("up_additionAttribute").value, 
		   		comphourAllowance: document.getElementById("up_comphourAllowance").value,
		   		comphourAssigned: document.getElementById("up_comphourAssigned").value,
		   		sectionNumber: document.getElementById("up_sectionNumber").value,
		   		semesterId: document.getElementById("up_semesterId").value,
		   		year: document.getElementById("up_year").value,
		   		comphourId: document.getElementById("up_comphourId").value,
		   		courseId: document.getElementById("up_courseId").value,
		   		facultyId: facultyId,
		   		prepTimeId: document.getElementById("up_prepTimeId").value, 
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'Updated Course Added to Faculty',
						type : 'info',
						text : 'Course has been updated for faculty'
					});
		    		
		    		document.getElementById("updateFacToCourseSemForm").reset(); // Form needs resetting due to never being submitted
		    		$('#updateFacToCourseSemModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};

	var deleteFacToCourseSem= function() {
		var valid = true;
		var errors = "";
		
		var cisId = document.getElementById('del_cisId');
		
		if (!validate_integer(cisId.value)) {
			valid = false;
			errors = cisId.getAttribute("name") + "  must be a number";
		}
		if (valid) {
	 	$.ajax({
	 		type:"DELETE", 
		  	url : "api/facultyToCourseInSemesterYear/"+cisId.value,
		  	data : null,
		  	cache : false,
		  	success : function(data){
	     		if (data.success === "true") {
	    			$.pnotify({
						title : 'Course :' + document.getElementById("del_course_name").value 
							+ 'has been removed from faculty',
						type : 'info',
						text : 'Course has been removed from ' + document.getElementById("del_fname").value
							+ ' ' + document.getElementById("del_lname").value
					});
	  			}
	   	  	}
	 	});
		}
		else { // Handle HTML inspect errors
			$.pnotify({
				title : 'Error',
				type : 'info',
				text : errors
			});
		}
	};	   

	var updateForm=function(cisId, facId, additionAttribute, comphourAllowance, comphourAssigned, sectionNumber, semesterId,
		year,comphourId, courseId, prepTimeId){
		$("#up_cisId").val(cisId);
		$("#up_facultyId").val(facId);
		$("#up_additionAttribute").val(additionAttribute); 
   		$("#up_comphourAllowance").val(comphourAllowance);
   		$("#up_comphourAssigned").val(comphourAssigned);
   		$("#up_sectionNumber").val(sectionNumber);
   		$("#up_semesterId").val(semesterId);
   		$("#up_year").val(year);
   		$("#up_comphourId").val(comphourId);
   		$("#up_courseId").val(courseId);
   		$("#up_prepTimeId").val(prepTimeId); 
	};
	
	var deleteForm=function(cisId, courseName, fname, lname) {
		$("#del_cisId").val(cisId);
		$("#del_course_name").val(courseName);
		$("#del_fname").val(fname);
		$("#del_lname").val(lname);
	};
