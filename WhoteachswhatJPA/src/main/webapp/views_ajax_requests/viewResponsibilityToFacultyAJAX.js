 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a responsibility to and from a faculty member
    @Requires: client_side_validation/client_side_validation.js, jQuery
*/
    
   // Get faculty id from query string
	var facultyId = window.location.search.slice(4); // Removes ?id=
	facultyId = encodeURI(facultyId); // Escape string
	
	var maxLength = 10;

	$(document).ready(function () {
		$("#year").attr('maxlength', maxLength);
		$("#up_year").attr('maxlength', maxLength);
		
		$("#hoursperweek").attr('maxlength', maxLength);
		$("#up_hoursperweek").attr('maxlength', maxLength);
	});
	
	var addRepToFac=function() {
		var valid = true;
		var addForm = document.getElementById("addRepToFacForm");
		var errors = new Array();
		var elementsId = new Array();
		
		var idPattern = new RegExp("[A-Za-z]+Id");
	   
		var responsibilityId = document.getElementById("responsibilityId");
		var year = document.getElementById("year");
		var semesterId = document.getElementById("semesterId");
		var hoursperweek = document.getElementById("hoursperweek");
		
	   
		for (var i = 0, j = 0; i < addForm.length - 2; ++i) {
			if (validate_empty(addForm.elements[i].value)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
			else {
				if (!idPattern.test(addForm.elements[i].getAttribute("id")) 
						&& !validate_float(addForm.elements[i].value, maxLength)) {
					valid = false;
				   	errors[j] = addForm.elements[i].getAttribute("name") + " must be " +
				   		"a number less than " + maxLength + " digits long";
				   	elementsId[j++] = addForm.elements[i].getAttribute("id");
				}
			}
		}
		
		if (!facultyId || !facultyId.length) { // If no id in query string, use the one from the form
			facultyId = document.getElementById("facultyId").value;
		}
		
		if (!validate_integer(semesterId.value)) {
			valid = false;
			errors[j] = semesterId.getAttribute("name") + "  must be a number";
			elementsId[j++] = semesterId.getAttribute("id");
		}
		
		if (!validate_integer(facultyId)) {
			valid = false;
			errors[j] = document.getElementById("facultyId").getAttribute("name") + "  must be a number";
			elementsId[j++] = document.getElementById("facultyId").getAttribute("id");
		}
		
		if (!validate_integer(responsibilityId.value)) {
			valid = false;
			errors[j] = responsibilityId.getAttribute("name") + "  must be a number";
			elementsId[j++] = responsibilityId.getAttribute("id");
		}
		
		if (valid) {
		$.ajax({
			type: "POST",
			url: "api/ResponsibilityToFaculty",
			data: { 
				facultyId: facultyId,
				responsibilityId: responsibilityId.value,
		   		year: year.value,
		   		semesterId: semesterId.value,
		   		hoursperweek: hoursperweek.value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Responsibility Added to Faculty',
						type : 'info',
						text : 'Responsibility added to faculty' 
					});
		    		
		    		document.getElementById("addRepToFacForm").reset(); // Form needs resetting due to never being submitted
		    		
		    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
		    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
		    		}
		    		
		    		$('#addRepToFacModal').modal('hide');
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
	
	var updateRepToFac=function() {
		var valid = true;
		var updateForm = document.getElementById("updateRepToFacForm");
		var errors = new Array();
		var elementsId = new Array();
		
		var idPattern = new RegExp("[A-Za-z]+Id");
	   
		var repToFacId = document.getElementById("up_repToFacId");
		var responsibilityId = document.getElementById("up_responsibilityId");
		var year = document.getElementById("up_year");
		var semesterId = document.getElementById("up_semesterId");
		var hoursperweek = document.getElementById("up_hoursperweek");
		
	   
		for (var i = 0, j = 0; i < updateForm.length - 2; ++i) {
			if (validate_empty(updateForm.elements[i].value)) {
				valid = false;
				errors[j] = updateForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = updateForm.elements[i].getAttribute("id");
			}
			else {
				if (!idPattern.test(updateForm.elements[i].getAttribute("id")) 
						&& !validate_float(updateForm.elements[i].value, maxLength)) {
					valid = false;
				   	errors[j] = updateForm.elements[i].getAttribute("name") + " must be " +
				   		"a number less than " + maxLength + " digits long";
				   	elementsId[j++] = updateForm.elements[i].getAttribute("id");
				}
			}
		}
		
		if (!facultyId || !facultyId.length) { // If no id in query string, use the one from the form
			facultyId = document.getElementById("up_facultyId").value;
		}
		
		if (!validate_integer(semesterId.value)) {
			valid = false;
			errors[j] = semesterId.getAttribute("name") + "  must be a number";
			elementsId[j++] = semesterId.getAttribute("id");
		}
		
		if (!validate_integer(facultyId)) {
			valid = false;
			errors[j] = document.getElementById("facultyId").getAttribute("name") + "  must be a number";
			elementsId[j++] = document.getElementById("facultyId").getAttribute("id");
		}
		
		if (!validate_integer(responsibilityId.value)) {
			valid = false;
			errors[j] = responsibilityId.getAttribute("name") + "  must be a number";
			elementsId[j++] = responsibilityId.getAttribute("id");
		}
		
		if (!validate_integer(repToFacId.value)) {
			valid = false;
			errors[j] = repToFacId.getAttribute("name") + "  must be a number";
			elementsId[j++] = repToFacId.getAttribute("id");
		}
		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/ResponsibilityToFaculty/"+repToFacId.value,
				data: { 
					facultyId: facultyId,
					responsibilityId: responsibilityId.value,
			   		year: year.value,
			   		semesterId: semesterId.value,
			   		hoursperweek: hoursperweek.value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'Responsibility Updated',
							type : 'info',
							text : 'Responsibility has been updated for faculty' 
						});
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("updateRepToFacForm").reset(); 
			    		
			    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
			    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#updateRepToFacModal').modal('hide');
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
  
	var deleteRepToFac= function() {
		var valid = true;
		var errors = "";
		
		var repToFacId = document.getElementById('del_repToFacId');
		
		if (!validate_integer(repToFacId.value)) {
			valid = false;
			errors = repToFacId.getAttribute("name") + "  must be a number";
		}
		if (valid) {
		   	$.ajax({
		   		type:"DELETE", 
			   	url : "api/ResponsibilityToFaculty/"+repToFacId.value,
			   	data : null,
			   	cache : false,
			   	success : function(data){
		       		if (data.success === "true") {
		       			$.pnotify({
							title : document.getElementById("del_respon_name").value + " has been removed from " +
								document.getElementById("del_facultyFirstName").value + " " 
								+ document.getElementById("del_facultyLastName").value,
							type : 'info',
							text : 'Responsibility has been removed from faculty'
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

	var updateForm=function(up_repToFacId, up_facultyId, up_responsibility, up_semester, up_year, up_hoursperweek){
		$("#up_repToFacId").val(up_repToFacId);
		$("#up_facultyId").val(up_facultyId);
		$("#up_responsibility").val(up_responsibility);
		$("#up_semester").val(up_semester);
		$("#up_year").val(up_year);
		$("#up_hoursperweek").val(up_hoursperweek);
	};
	
	var deleteForm=function(del_repToFacId, del_facultyFirstName, del_facultyLastName, del_respon_name){
		$("#del_repToFacId").val(del_repToFacId);
		$("#del_facultyFirstName").val(del_facultyFirstName);
		$("#del_facultyLastName").val(del_facultyLastName);
		$("#del_respon_name").val(del_respon_name);
	};
	