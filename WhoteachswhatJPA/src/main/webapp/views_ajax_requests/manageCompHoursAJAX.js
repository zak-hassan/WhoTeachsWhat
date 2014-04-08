 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a comp hour type
    @Requires: client_side_validation/client_side_validation.js, jQuery 
*/
	var comp_hour_code_length = 20;
	var comp_hour_name_length = 50;
	
	$(document).ready(function () {
		$("#comp_hour_code").attr('maxlength', comp_hour_code_length);
		$("#up_comp_hour_code").attr('maxlength', comp_hour_code_length);
		
		$("#comp_hour_name").attr('maxlength', comp_hour_name_length);
		$("#up_comp_hour_name").attr('maxlength', comp_hour_name_length);
	});
	
	var addCompHour=function() {
		var valid = true;
		var addForm = document.getElementById("addCompHourForm");
		var errors = new Array();
		var elementsId = new Array();
		   
		var compHourCode = document.getElementById("comp_hour_code");
		var compHourName = document.getElementById("comp_hour_name");
		   
		for (var i = 0, j = 0; i < addForm.length - 2; ++i) {
			if (validate_empty(addForm.elements[i].value)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
		}
		
		if(!validate_length(compHourCode.value, comp_hour_code_length)) {
			valid = false;
			errors[j] = compHourCode.getAttribute("name") + " must be " +
			"equal to or under " + comp_hour_code_length + " characters long";
			elementsId[j++] = compHourCode.getAttribute("id");
		}
		
		if (!validate_length(compHourName.value, comp_hour_name_length)) {
			valid = false;
			errors[j] = compHourName.getAttribute("name") + " must be " +
			"equal to or under " + comp_hour_name_length + " characters long";
			elementsId[j++] = compHourName.getAttribute("id");
		}
		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/comphour",
				data: { 
					comp_hour_code: compHourCode.value, 
					comp_hour_name: compHourName.value
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
			    		
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("addCompHourForm").reset();
			    		
			    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
			    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#addCompHourModal').modal('hide');
			    		
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

	   
	var updateCompHour=function() {
		var valid = true;
		var updateForm = document.getElementById("updateCompHourForm");
		var errors = new Array();
		var elementsId = new Array();
		   
		var compHourId = document.getElementById("up_comp_hour_id");
		var compHourCode = document.getElementById("up_comp_hour_code");
		var compHourName = document.getElementById("up_comp_hour_name");
		   
		for (var i = 0, j = 0; i < updateForm.length - 2; ++i) {
			if (validate_empty(updateForm.elements[i].value)) {
				valid = false;
				errors[j] = updateForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = updateForm.elements[i].getAttribute("id");
			}
		}
		
		if(!validate_length(compHourCode.value, comp_hour_code_length)) {
			valid = false;
			errors[j] = compHourCode.getAttribute("name") + " must be " +
			"equal to or under " + comp_hour_code_length + " characters long";
			elementsId[j++] = compHourCode.getAttribute("id");
		}
		
		if (!validate_length(compHourName.value, comp_hour_name_length)) {
			valid = false;
			errors[j] = compHourName.getAttribute("name") + " must be " +
			"equal to or under " + comp_hour_name_length + " characters long";
			elementsId[j++] = compHourName.getAttribute("id");
		}
		
		 if (!validate_integer(compHourId.value)) {
			 valid = false;
			 errors[j] = compHourId.getAttribute("name") + "  must be a number";
			 elementsId[j++] = compHourId.getAttribute("id");
		 }
		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/comphour/"+compHourId.value,
				data: { 
					comp_hour_code: compHourCode.value, 
					comp_hour_name: compHourName.value
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
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("updateCompHourForm").reset(); 
			    		
			    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
			    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#updateCompHourModal').modal('hide');
			    		
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

	var deleteCompHour= function() {
		var valid = true;
		var errors = "";
		
		var compHourId = document.getElementById('del_comp_hour_id');
		
		if (!validate_integer(compHourId.value)) {
			valid = false;
			errors = compHourId.getAttribute("name") + "  must be a number";
		}
		
		if (valid) {
		 	$.ajax({
		 		type:"DELETE", 
			  	url : "api/comphours/"+compHourId.value,
			  	data : null,
			  	cache : false,
			  	success : function(data){
		     		if (data.success === "true") {
		    			$.pnotify({
							title : 'Comp Hour: ' + document.getElementById("del_comp_hour_name").value,
							type : 'info',
							text : 'Comp hour has been deleted'
						});
		  			}
		     		location.reload(); // Refresh page..
		 	  	}
		 	});
		}
		else { // Handle HTML inspector errors
			$.pnotify({
				title : 'Error',
				type : 'info',
				text : errors
			});
		}
	};
		   
   var updateForm=function(comp_hour_id, comp_hour_code, comp_hour_name){
		$("#up_comp_hour_id").val(comp_hour_id);
		$("#up_comp_hour_code").val(comp_hour_code);
		$("#up_comp_hour_name").val(comp_hour_name);
	};
	
	var deleteForm=function(del_comp_hour_id, del_comp_hour_name) {
		$("#del_comp_hour_id").val(del_comp_hour_id);
		$("#del_comp_hour_name").val(del_comp_hour_name);
	};