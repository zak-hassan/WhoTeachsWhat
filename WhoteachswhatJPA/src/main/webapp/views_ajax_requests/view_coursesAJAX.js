/**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a course
    @Requires: client_side_validation/client_side_validation.js, jQuery
*/
    
	var courseNameLength = 100;
	var evalFactorLength = 10;
	var courseCodeLength = 8;

	$(document).ready(function () {
		$("#course_name").attr('maxlength', courseNameLength);
		$("#up_course_name").attr('maxlength', courseNameLength);
		
		$("#course_code").attr('maxlength', courseCodeLength);
		$("#up_course_code").attr('maxlength', courseCodeLength);
		
		$("#reference_input").attr('maxlength', courseCodeLength);
		$("#up_reference_input").attr('maxlength', courseCodeLength);
		
		$("#crossover_input").attr('maxlength', courseCodeLength);
		$("#up_crossover_input").attr('maxlength', courseCodeLength);
		
		$("#evalFactor1").attr('maxlength', evalFactorLength);
		$("#up_evalFactor1").attr('maxlength', evalFactorLength);
		
		$("#evalFactor2").attr('maxlength', evalFactorLength);
		$("#up_evalFactor2").attr('maxlength', evalFactorLength);
		
		$("#evalFactor3").attr('maxlength', evalFactorLength);
		$("#up_evalFactor3").attr('maxlength', evalFactorLength);
	});
	
	var addCourse=function() {
		var valid = true;
		var errors = new Array();
		var elementsId = new Array();
		var addForm = document.getElementById("addCourseForm");
		
		var i = 0;
		var j = 0;
		
		var courseCode = document.getElementById("course_code");
		var courseName = document.getElementById("course_name");
	   	var crossoverInput = document.getElementById("crossover_input");
	   	var referenceInput = document.getElementById("reference_input");
	   	var evalFactor1 = document.getElementById("evalFactor1");
	   	var evalFactor2 = document.getElementById("evalFactor2");
	   	var evalFactor3 = document.getElementById("evalFactor3");
	   	
	   	// Validate course code
	   	
	   	if(validate_empty(courseCode.value)) {
	   		valid = false;
			errors[j] = courseCode.getAttribute("name") + " is required";
			elementsId[j++] = courseCode.getAttribute("id");
	   	}
	   	else {
	   		if (!validate_course_code(courseCode.value)) {
		   		valid = false;
				errors[j] = courseCode.getAttribute("name") + " must be within 6 to 8 characters";
				elementsId[j++] = courseCode.getAttribute("id");
		   	}
	   	}
	   	
	   	// Validate course name
	   	
	   	if(validate_empty(courseName.value)) {
	   		valid = false;
			errors[j] = courseName.getAttribute("name") + " is required";
			elementsId[j++] = courseName.getAttribute("id");
	   	}
	   	else {
	   		if (!validate_length(courseName.value, courseNameLength)) {
		   		valid = false;
				errors[j] = courseName.getAttribute("name") + " must be " +
					"equal to or under " + courseNameLength + " characters long";
				elementsId[j++] = courseName.getAttribute("id");
		   	}
	   	}
	   	
	   	// Validate crossover input
	   	
	   	if (!validate_empty(crossoverInput.value) && !validate_course_code(crossoverInput.value)) {
	   		valid = false;
			errors[j] = crossoverInput.getAttribute("name") + " must be within 6 to 8 characters";
			elementsId[j++] = crossoverInput.getAttribute("id");
	   	}
	   	
	   	// Validate reference course
	   	
	   	if (!validate_empty(referenceInput.value) && !validate_course_code(referenceInput.value)) {
	   		valid = false;
			errors[j] = referenceInput.getAttribute("name") + " must be within 6 to 8 characters";
			elementsId[j++] = referenceInput.getAttribute("id");
	   	}
	   	
	   	// Validate evaluation factor 1
		
	   	if(validate_empty(evalFactor1.value)) {
	   		valid = false;
			errors[j] = evalFactor1.getAttribute("name") + " is required";
			elementsId[j++] = evalFactor1.getAttribute("id");
	   	}
	   	
		if (!validate_float(evalFactor1.value, evalFactorLength)) {
			valid = false;
		   	errors[j] = evalFactor1.getAttribute("name") + " must be " +
		   		"a number less than " + evalFactorLength + " digits long";
		   	elementsId[j++] = evalFactor1.getAttribute("id");
		}
		
		// Validate evaluation factor 2
		
		if(validate_empty(evalFactor2.value)) {
	   		valid = false;
			errors[j] = evalFactor2.getAttribute("name") + " is required";
			elementsId[j++] = evalFactor2.getAttribute("id");
	   	}
		
		if (!validate_float(evalFactor2.value, evalFactorLength)) {
			valid = false;
		   	errors[j] = evalFactor2.getAttribute("name") + " must be " +
		   		"a number less than " + evalFactorLength + " digits long";
		   	elementsId[j++] = evalFactor2.getAttribute("id");
		}
		
		// Validate evaluation factor 3
		
		if(validate_empty(evalFactor3.value)) {
	   		valid = false;
			errors[j] = evalFactor3.getAttribute("name") + " is required";
			elementsId[j++] = evalFactor3.getAttribute("id");
	   	}
		
		if (!validate_float(evalFactor3.value, evalFactorLength)) {
			valid = false;
		   	errors[j] = evalFactor3.getAttribute("name") + " must be " +
		   		"a number less than " + evalFactorLength + " digits long";
		   	elementsId[j++] = evalFactor3.getAttribute("id");
		}
	   
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/course",
				data: { 
					course_code: courseCode.value,
		  	   		course_name: courseName.value,
		  	   		crossover_input: crossoverInput.value,
		  	   		reference_input: referenceInput.value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'New Course added',
							type : 'info',
							text : 'Course ' + courseCode.value + ' has been added'
						});
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("addCourseForm").reset(); 
			    		
			    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
			    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#addCourseModal').modal('hide');
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
	
	var updateCourse=function() {
		var valid = true;
		var errors = new Array();
		var elementsId = new Array();
		var updateForm = document.getElementById("updateCourseForm");
		
		var i = 0;
		var j = 0;
		
		var courseId = document.getElementById("up_course_id");
		var courseCode = document.getElementById("up_course_code");
		var courseName = document.getElementById("up_course_name");
	   	var crossoverInput = document.getElementById("up_crossover_input");
	   	var referenceInput = document.getElementById("up_reference_input");
	   	var evalFactor1 = document.getElementById("up_evalFactor1");
	   	var evalFactor2 = document.getElementById("up_evalFactor2");
	   	var evalFactor3 = document.getElementById("up_evalFactor3");
	   	
	   	// Validate course code
	   	
	   	if(validate_empty(courseCode.value)) {
	   		valid = false;
			errors[j] = courseCode.getAttribute("name") + " is required";
			elementsId[j++] = courseCode.getAttribute("id");
	   	}
	   	else {
	   		if (!validate_course_code(courseCode.value)) {
		   		valid = false;
				errors[j] = courseCode.getAttribute("name") + " must be within 6 to 8 characters";
				elementsId[j++] = courseCode.getAttribute("id");
		   	}
	   	}
	   	
	   	// Validate course name
	   	
	   	if(validate_empty(courseName.value)) {
	   		valid = false;
			errors[j] = courseName.getAttribute("name") + " is required";
			elementsId[j++] = courseName.getAttribute("id");
	   	}
	   	else {
	   		if (!validate_length(courseName.value, courseNameLength)) {
		   		valid = false;
				errors[j] = courseName.getAttribute("name") + " must be " +
					"equal to or under " + courseNameLength + " characters long";
				elementsId[j++] = courseName.getAttribute("id");
		   	}
	   	}
	   	
	   	// Validate crossover input
	   	
	   	if (!validate_empty(crossoverInput.value) && !validate_course_code(crossoverInput.value)) {
	   		valid = false;
			errors[j] = crossoverInput.getAttribute("name") + " must be within 6 to 8 characters";
			elementsId[j++] = crossoverInput.getAttribute("id");
	   	}
	   	
	   	// Validate reference course
	   	
	   	if (!validate_empty(referenceInput.value) && !validate_course_code(referenceInput.value)) {
	   		valid = false;
			errors[j] = referenceInput.getAttribute("name") + " must be within 6 to 8 characters";
			elementsId[j++] = referenceInput.getAttribute("id");
	   	}
	   	
	   	// Validate evaluation factor 1
		
	   	if(validate_empty(evalFactor1.value)) {
	   		valid = false;
			errors[j] = evalFactor1.getAttribute("name") + " is required";
			elementsId[j++] = evalFactor1.getAttribute("id");
	   	}
	   	
		if (!validate_float(evalFactor1.value, evalFactorLength)) {
			valid = false;
		   	errors[j] = evalFactor1.getAttribute("name") + " must be " +
		   		"a number less than " + evalFactorLength + " digits long";
		   	elementsId[j++] = evalFactor1.getAttribute("id");
		}
		
		// Validate evaluation factor 2
		
		if(validate_empty(evalFactor2.value)) {
	   		valid = false;
			errors[j] = evalFactor2.getAttribute("name") + " is required";
			elementsId[j++] = evalFactor2.getAttribute("id");
	   	}
		
		if (!validate_float(evalFactor2.value, evalFactorLength)) {
			valid = false;
		   	errors[j] = evalFactor2.getAttribute("name") + " must be " +
		   		"a number less than " + evalFactorLength + " digits long";
		   	elementsId[j++] = evalFactor2.getAttribute("id");
		}
		
		// Validate evaluation factor 3
		
		if(validate_empty(evalFactor3.value)) {
	   		valid = false;
			errors[j] = evalFactor3.getAttribute("name") + " is required";
			elementsId[j++] = evalFactor3.getAttribute("id");
	   	}
		
		if (!validate_float(evalFactor3.value, evalFactorLength)) {
			valid = false;
		   	errors[j] = evalFactor3.getAttribute("name") + " must be " +
		   		"a number less than " + evalFactorLength + " digits long";
		   	elementsId[j++] = evalFactor3.getAttribute("id");
		}
		
		// Validate course id

		if (!validate_integer(courseId.value)) {
			valid = false;
		   	errors[j] = courseId.getAttribute("name") + "  must be a number";
		   	elementsId[j++] = courseId.getAttribute("id");
		}
	   		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/course/"+courseId.value,
				data: { 
					course_code: courseCode.value,
		  	   		course_name: courseName.value,
		  	   		crossover_input: crossoverInput.value,
		  	   		reference_input: referenceInput.value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'Course Updated',
							type : 'info',
							text : 'Course ' + courseCode.value + ' has been updated'
						});
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("updateCourseForm").reset(); 
			    		
			    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
			    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#updateCourseModal').modal('hide');
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
   
  	var deleteCourse= function() {
  		var valid = true;
		var errors = "";
		
		var courseId = document.getElementById("del_course_id");
		
		if (!validate_integer(courseId.value)) {
			valid = false;
			errors = courseId.getAttribute("name") + "  must be a number";
		}
		
		if (valid) {
	 		$.ajax({type:"DELETE", 
	  			url : "api/course/"+courseId.value,
	  			data : null,
	  			cache : false,
	  			success : function(data){
	     			if (data.success === "true") {
	    				$.pnotify({
							title : 'Course :' + document.getElementById("del_course_code").value,
							type : 'info',
							text : 'Course has been deleted'
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

	var updateForm=function(up_course_id, up_course_code, up_course_name, up_crossover_input, up_reference_input){
		$("#up_course_id").val(up_course_id);
		$("#up_course_code").val(up_course_code);
		$("#up_course_name").val(up_course_name);
		$("#up_crossover_input").val(up_crossover_input);
		$("#up_reference_input").val(up_reference_input);
	};
	
	var deleteForm=function(del_course_id, del_course_code){
		$("#del_course_id").val(del_course_id);
		$("#del_course_code").val(del_course_code);
	};