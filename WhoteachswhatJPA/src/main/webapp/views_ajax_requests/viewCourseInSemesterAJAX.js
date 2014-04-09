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
		
		if (!validate_integer(courseId.value)) {
			valid = false;
			errors[j] = document.getElementById("courseId").getAttribute("name") + "  must be a number";
			elementsId[j++] = document.getElementById("courseId").getAttribute("id");
		}
		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/courseinsemester",
				data: { 
					addition_attribute: document.getElementById("addition_attribute").value,
		  	   		eval_1_ans: document.getElementById("eval_1_ans").value,
		  	   		eval_2_ans: document.getElementById("eval_2_ans").value,
		  	 		eval_3_ans: document.getElementById("eval_3_ans").value,
		  	 		eval_1: document.getElementById("eval_1").value,
		  	 		eval_2: document.getElementById("eval_2").value,
		  	 		eval_3: document.getElementById("eval_3").value,
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
								+ 'number of sections'
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
		var addForm = document.getElementById("addCourseInSemesterForm");
		var errors = new Array();
		var elementsId = new Array();
	   
		var idPattern = new RegExp("[A-Za-z]+Id");
	   
		var sectionNumber = document.getElementById("sectionNumber");
		var semesterId = document.getElementById("semesterId");
		var year = document.getElementById("year");

		if (!courseId|| !courseId.length) { // If no id in query string, use the one from the form
			courseId = document.getElementById("up_courseId").value;
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
		
		if (!validate_integer(courseId.value)) {
			valid = false;
			errors[j] = document.getElementById("up_courseId").getAttribute("name") + "  must be a number";
			elementsId[j++] = document.getElementById("up_courseId").getAttribute("id");
		}
	   
	   if (valid) {
			$.ajax({
				type: "POST",
				url: "api/courseinsemester/"+document.getElementById("cisId").value,
				data: { 
					addition_attribute: document.getElementById("up_addition_attribute").value,
		  	   		eval_1_ans: document.getElementById("up_eval_1_ans").value,
		  	   		eval_2_ans: document.getElementById("up_eval_2_ans").value,
		  	 		eval_3_ans: document.getElementById("up_eval_3_ans").value,
		  	 		eval_1: document.getElementById("up_eval_1").value,
		  	 		eval_2: document.getElementById("up_eval_2").value,
		  	 		eval_3: document.getElementById("up_eval_3").value,
		  	 		sectionNumber: document.getElementById("up_sectionNumber").value,
		  	 		year: document.getElementById("up_year").value,
		  	 		course_id: courseId,
		  	 		semester_id: document.getElementById("up_semester_id").value
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
   
  	var deleteCourseInSemester= function(id, course_code, semester, year) {
 		$.ajax({
 			type:"DELETE", 
  			url : "api/courseinsemester/"+id,
  			data : null,
  			cache : false,
  			success : function(data){
     			if (data.success === "true") {
    				$.pnotify({
						title : 'Course :' + course_code + 'sections removed',
						type : 'info',
						text : 'Course sections has been removed for ' + semester + ' ' + year
					});
    		//	location.reload();
  				}
  	 		 }
 		});
	};	  	   

	var updateForm=function(cisId, up_sectionNumber, up_year, up_course_id, up_semester_id){
		$("#cisId").val(cisId);
		$("#up_sectionNumber").val(up_sectionNumber);
		$("#up_year").val(up_year);
		$("#up_courseId").val(up_course_id);
		$("#up_semesterId").val(up_semester_id);
	};