 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a course in a semester
    @Requires: client_side_validation/client_side_validation.js, jQuery 
   */

	// Get course id from query string
	var courseId = window.location.search.slice(4); // Removes ?id=
	courseId = encodeURI(courseId); // Escape string
	    
	var floatLength = 10;
	
	$(document).ready(function () {
		// $("#preptimeName").attr('maxlength', prepTimeLength);
	});
	
	var addCourseInSemester=function() {
	   var valid = true;
	   var addForm = document.getElementById("addCourseInSemesterForm");
	   var errors = new Array();
	   var elementsId = new Array();
	   
	   var idPattern = new RegExp("[A-Za-z]+Id");
	   
	   var sectionNumber = document.getElementById("sectionNumber");
	   var semesterId = document.getElementById("semesterId");
	   var year = document.getElementById("year");

	   if (!courseId|| !courseId.length) { // If no id in query string, use the one from the form
			courseId = document.getElementById("courseId").value;
	   }
	   		
	   	for (var i = 0, j = 0; i < addForm.length - 2; ++i) {
			if (validate_empty(addForm.elements[i].value)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
			else {
				if (!idPattern.test(addForm.elements[i].getAttribute("id")) 
						&& !validate_float(addForm.elements[i].value, floatLength)) {
					valid = false;
				   	errors[j] = addForm.elements[i].getAttribute("name") + " must be " +
				   		"a number less than " + floatLength + " digits long";
				   	elementsId[j++] = addForm.elements[i].getAttribute("id");
				}
			}
	   	}
	   
		if (!validate_integer(semesterId.value)) {
			valid = false;
			errors[j] = semesterId.getAttribute("name") + "  must be a number";
			elementsId[j++] = semesterId.getAttribute("id");
		}
		
		if (!validate_integer(courseId)) {
			valid = false;
			errors[j] = document.getElementById("courseId").getAttribute("name") + "  must be a number";
			elementsId[j++] = document.getElementById("courseId").getAttribute("id");
		}
		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/courseinsemester",
				data: { 
		  	 		sectionNumber: sectionNumber.value,
		  	 		year: year.value,
		  	 		course_id: courseId,
		  	 		semester_id: semesterId.value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'New Course Section in Semester added',
							type : 'info',
							text : 'Course has been allocated ' + document.getElementById("sectionNumber").value 
								+ ' number of sections'
						});
			    		
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("addCourseInSemesterForm").reset(); 
			    		
			    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
			    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#addCourseInSemesterModal').modal('hide');
			    		
			    		//location.reload(); // Refresh page..
				   	}
				}
			});
		}
		else { // Handle form errors
			for (i = 0; i < errors.length; ++i) {
				$.pnotify({
					title : 'Error',
					type : 'info',
					text : errors[i]
				});
				document.getElementById(elementsId[i]).style.border = "solid 1px red";
			}
		}
	};
	
	var updateCourseInSemester=function() {
		var valid = true;
		var updateForm = document.getElementById("updateCourseInSemesterForm");
		var errors = new Array();
		var elementsId = new Array();
	   
		var idPattern = new RegExp("[A-Za-z]+Id");
	   
		var sectionNumber = document.getElementById("up_sectionNumber");
		var semesterId = document.getElementById("up_semesterId");
		var year = document.getElementById("up_year");
		
		var cisId = document.getElementById("cisId");

		if (!courseId|| !courseId.length) { // If no id in query string, use the one from the form
			courseId = document.getElementById("up_courseId").value;
		}
	   
		
		for (var i = 0, j = 0; i < updateForm.length - 2; ++i) {
	   		if (validate_empty(updateForm.elements[i].value)) {
				valid = false;
				errors[j] = updateForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = updateForm.elements[i].getAttribute("id");
			}
			else {
				if (!idPattern.test(updateForm.elements[i].getAttribute("id")) 
						&& !validate_float(updateForm.elements[i].value, floatLength)) {
					valid = false;
				   	errors[j] = updateForm.elements[i].getAttribute("name") + " must be " +
				   		"a number less than " + floatLength + " digits long";
				   	elementsId[j++] = updateForm.elements[i].getAttribute("id");
				}
			}
	   	}
	   
		if (!validate_integer(semesterId.value)) {
			valid = false;
			errors[j] = semesterId.getAttribute("name") + "  must be a number";
			elementsId[j++] = semesterId.getAttribute("id");
		}
		
		if (!validate_integer(courseId)) {
			valid = false;
			errors[j] = document.getElementById("up_courseId").getAttribute("name") + "  must be a number";
			elementsId[j++] = document.getElementById("up_courseId").getAttribute("id");
		}
		
		if (!validate_integer(cisId.value)) {
			valid = false;
			errors[j] = cisId.getAttribute("name") + "  must be a number";
			elementsId[j++] = cisId.getAttribute("id");
		}
	   
	   if (valid) {
			$.ajax({
				type: "POST",
				url: "api/courseinsemester/"+cisId.value,
				data: { 
		  	 		sectionNumber: sectionNumber.value,
		  	 		year: year.value,
		  	 		course_id: courseId,
		  	 		semester_id: semesterId.value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'Course Section Updated',
							type : 'info',
							text : 'Course section has been updated'
						});
			    		
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("updateCourseInSemesterForm").reset();
			    		
			    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
			    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#updateCourseInSemesterModal').modal('hide');
			    		
			    		//location.reload(); // Refresh page..
				   	}
				}
			});
	   }
	   else { // Handle form errors
		   for (i = 0; i < errors.length; ++i) {
				$.pnotify({
					title : 'Error',
					type : 'info',
					text : errors[i]
				});
				document.getElementById(elementsId[i]).style.border = "solid 1px red";
			}
	   }
	};
   
  	var deleteCourseInSemester= function() {
  		var valid = true;
		var errors = "";
		
		var cisId = document.getElementById('del_cisId');
		
		if (!validate_integer(cisId.value)) {
			valid = false;
			errors = cisId.getAttribute("name") + "  must be a number";
		}
		
		if(valid) {
	 		$.ajax({
	 			type:"DELETE", 
	  			url : "api/courseinsemester/"+cisId.value,
	  			data : null,
	  			cache : false,
	  			success : function(data){
	     			if (data.success === "true") {
	    				$.pnotify({
							title : 'Course: ' + document.getElementById("del_courseCode").value + ' sections removed',
							type : 'info',
							text : 'Course sections has been removed for ' + document.getElementById("del_semesterName").value
								+ ' ' + document.getElementById("del_year").value
						});
	    		//	location.reload();
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

	var updateForm=function(cisId, up_sectionNumber, up_year, up_course_id, up_semester_id){
		$("#cisId").val(cisId);
		$("#up_sectionNumber").val(up_sectionNumber);
		$("#up_year").val(up_year);
		$("#up_courseId").val(up_course_id);
		$("#up_semesterId").val(up_semester_id);
	};
	
	var deleteForm=function(del_cisId, del_courseCode, del_semesterName, del_year) {
		$("#del_cisId").val(del_cisId);
		$("#del_courseCode").val(del_courseCode);
		$("#del_semesterName").val(del_semesterName);
		$("del_year").val(del_year);
	};