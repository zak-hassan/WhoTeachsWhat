/**
	@Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a faculty to a course in a particular 
    		  semester during a certain year
	@Requires: client_side_validation/client_side_validation.js, jQuery
*/
   
	// Get faculty id from query string
	var facultyId = window.location.search.slice(4); // Removes ?id=
	facultyId = encodeURI(facultyId); // Escape string
	
	var floatLength = 10;

	$(document).ready(function () {
		// $("#preptimeName").attr('maxlength', prepTimeLength);
	});
    
	var addFacToCourseSem=function() {
	   var valid = true;
	   var addForm = document.getElementById("addFacToCourseSemForm");
	   var errors = new Array();
	   var elementsId = new Array();
	   
	   var idPattern = new RegExp("[A-Za-z]+Id");
	   
	   var additionAttribute = document.getElementById("additionAttribute");
	   var comphourAllowance = document.getElementById("comphourAllowance");
	   var comphourAssigned = document.getElementById("comphourAssigned");
	   var sectionNumber = document.getElementById("sectionNumber");
	   var semesterId = document.getElementById("semesterId");
	   var year = document.getElementById("year");
	   var comphourId = document.getElementById("comphourId");
	   var courseId = document.getElementById("courseId");
	   var prepTimeId = document.getElementById("prepTimeId");
	   var classSize = document.getElementById("classSize");
	   
	   var evalFactor1 = document.getElementById("evalFactor1");
	   var evalFactor2 = document.getElementById("evalFactor2");
	   var evalFactor3 = document.getElementById("evalFactor3");
	   
	   if (!facultyId || !facultyId.length) { // If no id in query string, use the one from the form
			facultyId = document.getElementById("facultyId").value;
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
		
		if (!validate_integer(comphourId.value)) {
			valid = false;
			errors[j] = comphourId.getAttribute("name") + "  must be a number";
			elementsId[j++] = comphourId.getAttribute("id");
		}
		
		if (!validate_integer(courseId.value)) {
			valid = false;
			errors[j] = courseId.getAttribute("name") + "  must be a number";
			elementsId[j++] = courseId.getAttribute("id");
		}
		
		if (!validate_integer(prepTimeId.value)) {
			valid = false;
			errors[j] = prepTimeId.getAttribute("name") + "  must be a number";
			elementsId[j++] = prepTimeId.getAttribute("id");
		}
	   
	   if (valid) {
			$.ajax({
				type: "POST",
				url: "api/facultyToCourseInSemesterYear",
				data: { 
					additionAttribute: additionAttribute.value, 
			   		comphourAllowance: comphourAllowance.value,
			   		comphourAssigned: comphourAssigned.value,
			   		sectionNumber: sectionNumber.value,
			   		semesterId: semesterId.value,
			   		year: year.value,
			   		comphourId: comphourId.value,
			   		courseId: courseId.value,
			   		facultyId: facultyId,
			   		prepTimeId: prepTimeId.value,
			   		class_size: classSize.value
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
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("addFacToCourseSemForm").reset();
			    		
			    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
			    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#addFacToCourseSemModal').modal('hide');
			    		
			    		location.reload(); // Refresh page..
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
   
	var updateFacToCourseSem=function() {
		var valid = true;
		var updateForm = document.getElementById("updateFacToCourseSemForm");
		var errors = new Array();
		var elementsId = new Array();
	   
		var idPattern = new RegExp("[A-Za-z]+Id");
	   
		var additionAttribute = document.getElementById("up_additionAttribute");
		var comphourAllowance = document.getElementById("up_comphourAllowance");
		var comphourAssigned = document.getElementById("up_comphourAssigned");
		var sectionNumber = document.getElementById("up_sectionNumber");
		var semesterId = document.getElementById("up_semesterId");
		var year = document.getElementById("up_year");
		var comphourId = document.getElementById("up_comphourId");
		var courseId = document.getElementById("up_courseId");
		var prepTimeId = document.getElementById("up_prepTimeId");
		var classSize = document.getElementById("up_classSize");
	   
		var evalFactor1 = document.getElementById("up_evalFactor1");
		var evalFactor2 = document.getElementById("up_evalFactor2");
		var evalFactor3 = document.getElementById("up_evalFactor3");
		
		var cisId = document.getElementById("up_cisId");
	   
		if (!facultyId || !facultyId.length) { // If no id in query string, use the one from the form
			facultyId = document.getElementById("up_facultyId").value;
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
		
		if (!validate_integer(comphourId.value)) {
			valid = false;
			errors[j] = comphourId.getAttribute("name") + "  must be a number";
			elementsId[j++] = semesterId.getAttribute("id");
		}
		
		if (!validate_integer(courseId.value)) {
			valid = false;
			errors[j] = courseId.getAttribute("name") + "  must be a number";
			elementsId[j++] = courseId.getAttribute("id");
		}
		
		if (!validate_integer(prepTimeId.value)) {
			valid = false;
			errors[j] = prepTimeId.getAttribute("name") + "  must be a number";
			elementsId[j++] = prepTimeId.getAttribute("id");
		}
	   
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/facultyToCourseInSemesterYear/"+cisId.value,
				data: { 
					additionAttribute: additionAttribute.value, 
			   		comphourAllowance: comphourAllowance.value,
			   		comphourAssigned: comphourAssigned.value,
			   		sectionNumber: sectionNumber.value,
			   		semesterId: semesterId.value,
			   		year: year.value,
			   		comphourId: comphourId.value,
			   		courseId: courseId.value,
			   		facultyId: facultyId,
			   		prepTimeId: prepTimeId.value,
			   		class_size: classSize.value
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
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("updateFacToCourseSemForm").reset(); 
			    		
			    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
			    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#updateFacToCourseSemModal').modal('hide');
			    		
			    		location.reload(); // Refresh page..
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
	     		location.reload(); // Refresh page..
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
	
	var changeEvalFactorStatus=function(override) {
		// Enable or disable evalFactor fields
		
		var upPattern = new RegExp("up_");
		var i = 1;
		var id = "evalFactor";
		
		if (upPattern.test(override.getAttribute("id"))) {
			id = "up_" + id;
		}
		
		if (override.checked) {
			document.getElementById(id + i++).disabled = false;
			document.getElementById(id + i++).disabled = false;
			document.getElementById(id + i++).disabled = false;
		}
		else {
			document.getElementById(id + i++).disabled = true;
			document.getElementById(id + i++).disabled = true;
			document.getElementById(id + i++).disabled = true;
		}	
	};
