 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a faculty member
    @Requires: client_side_validation/client_side_validation.js, jQuery 
*/
	var maxLength = 50;

	$(document).ready(function () {
		$("#fname").attr('maxlength', maxLength);
		$("#up_fname").attr('maxlength', maxLength);
		
		$("#lname").attr('maxlength', maxLength);
		$("#up_lname").attr('maxlength', maxLength);
		
		$("#status").attr('maxlength', maxLength);
		$("#up_status").attr('maxlength', maxLength);
	});


	var addFaculty=function() {
		var valid = true;
		var addForm = document.getElementById("addFacultyForm");
		var errors = new Array();
		var elementsId = new Array();
		
		var status = document.getElementById("status");
		var firstName = document.getElementById("fname");
		var lastName = document.getElementById("lname");
	   
		for (var i = 0, j = 0; i < addForm.length - 2; ++i) {
			if (!validate_empty(addForm.elements[i].value)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
		}
	   
		if (!validate_length(firstName.value, maxLength)) {
			valid = false;
			errors[j] = firstName.getAttribute("name") + " must be " +
				"equal to or under " + maxLength + " characters long";
			elementsId[j++] = firstName.getAttribute("id");
		}
	   
		if (!validate_length(lastName.value, maxLength)) {
			valid = false;
		   	errors[j] = lastName.getAttribute("name") + " must be " +
		   		"a number less than " + maxLength + " digits long";
		   	elementsId[j++] = lastName.getAttribute("id");
		}
	   
		if (!validate_integer(status.value)) {
			valid = false;
			errors[j] = status.getAttribute("name") + " must be a number";
			elementsId[j++] = status.getAttribute("id");
		}
		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/faculty",
				data: { 
					faculty_first_name : firstName.value, 
					faculty_last_name : lastName.value,
					faculty_status : status.value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'New Faculty added',
							type : 'info',
							text : 'Faculty member ' + document.getElementById('fname').value + 
							' ' + document.getElementById("lname").value + ' has been added'
						});
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("addFacultyForm").reset(); 
			    		
			    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
			    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#addFacultyModal').modal('hide');
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
	
	var updateFaculty=function() {
		var valid = true;
		var updateForm = document.getElementById("updateFacultyForm");
		var errors = new Array();
		var elementsId = new Array();
		
		var status = document.getElementById("up_status");
		var firstName = document.getElementById("up_fname");
		var lastName = document.getElementById("up_lname");
		var facId = document.getElementById("up_facId");
	   
		for (var i = 0, j = 0; i < updateForm.length - 2; ++i) {
			if (!validate_empty(updateForm.elements[i].value)) {
				valid = false;
				errors[j] = updateForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = updateForm.elements[i].getAttribute("id");
			}
		}
	   
		if (!validate_length(firstName.value, maxLength)) {
			valid = false;
			errors[j] = firstName.getAttribute("name") + " must be " +
				"equal to or under " + maxLength + " characters long";
			elementsId[j++] = firstName.getAttribute("id");
		}
	   
		if (!validate_length(lastName.value, maxLength)) {
			valid = false;
		   	errors[j] = lastName.getAttribute("name") + " must be " +
		   		"a number less than " + maxLength + " digits long";
		   	elementsId[j++] = lastName.getAttribute("id");
		}
	   
		if (!validate_integer(status.value)) {
			valid = false;
			errors[j] = status.getAttribute("name") + " must be a number";
			elementsId[j++] = status.getAttribute("id");
		}
		
		if (!validate_integer(facId.value)) {
			valid = false;
			errors[j] = status.getAttribute("name") + " must be a number";
			elementsId[j++] = status.getAttribute("id");
		}
		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/faculty/"+facId.value,
				data: { 
					faculty_first_name : firstName.value, 
					faculty_last_name : lastName.value,
					faculty_status : status.value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'Faculty updated',
							type : 'info',
							text : 'Faculty member ' + document.getElementById('up_fname').value + 
							' ' + document.getElementById("up_lname").value + ' has been updated'
						});
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("updateFacultyForm").reset();
			    		
			    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
			    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#updateFacultyModal').modal('hide');
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
 
		
	var deleteFaculty= function() {
		var valid = true;
		var errors = "";
		
		var facId = document.getElementById('del_facId');
		
		if (!validate_integer(facId.value)) {
			valid = false;
			errors = facId.getAttribute("name") + "  must be a number";
		}
		
		if (valid) {
		   	$.ajax({type:"DELETE", 
			   	url : "api/faculty/"+facId.value,
			   	data : null,
			   	cache : false,
			   	success : function(data){
		       		if (data.success === "true") {
		       			$.pnotify({
							title : 'Faculty: ' + document.getElementById("del_fname").value + 
								' ' + document.getElementById("del_lname").value,
							type : 'info',
							text : 'Faculty has been deleted'
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
   
   var updateForm=function(up_facId, up_fname, up_lname, up_status){
		$("#up_facId").val(up_facId);
		$("#up_fname").val(up_fname);
		$("#up_lname").val(up_lname);
		$("#up_status").val(up_status);
	};
	
	var deleteForm=function(del_facId, del_fname, del_lname){
		$("#del_facId").val(del_facId);
		$("#del_fname").val(del_fname);
		$("#del_lname").val(del_lname);
	};