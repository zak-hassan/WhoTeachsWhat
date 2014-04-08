 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a factor
    @Requires: client_side_validation/client_side_validation.js, jQuery
*/

	var factorNameLength = 20;
	var factorValueLength = 10;

	$(document).ready(function () {
		$("#factorName").attr('maxlength', factorNameLength);
		$("#up_factorName").attr('maxlength', factorNameLength);
		
		$("#up_factorValue").attr('maxlength', factorValueLength);
		$("#up_factorValue").attr('maxlength', factorValueLength);
	});

	var addFactor=function() {
		var valid = true;
		var addForm = document.getElementById("addFactorForm");
		var errors = new Array();
		var elementsId = new Array();
	   
		var factorName = document.getElementById("factorName");
		var factorValue = document.getElementById("factorValue");
	   
		for (var i = 0, j = 0; i < addForm.length - 2; ++i) {
			if (validate_empty(addForm.elements[i].value)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
		}
	   
		if (!validate_length(factorName.value, factorNameLength)) {
			valid = false;
			errors[j] = factorName.getAttribute("name") + " must be " +
				"equal to or under " + factorNameLength + " characters long";
			elementsId[j++] = factorName.getAttribute("id");
		}
	   
		if (!validate_float(factorValue.value, factorValueLength)) {
			valid = false;
		   	errors[j] = factorValue.getAttribute("name") + " must be " +
		   		"a number less than " + factorValueLength + " digits long";
		   	elementsId[j++] = factorValue.getAttribute("id");
		}
	   
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/factor",
				data: { 
					factorName: factorName.value, 
			   		factorValue: factorValue.value 
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'New Factor added',
							type : 'info',
							text : 'Factor' + factorName.value + ' has been added'
						});
			    		
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("addFactorForm").reset(); 
			    		
			    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
			    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#addFactorModal').modal('hide');
			    		
			    		// location.reload(); // Refresh page..
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

	var updateFactor=function() {
		var valid = true;
		var updateForm = document.getElementById("updateFactorForm");
		var errors = new Array();
		var elementsId = new Array();
	   
		var factorId = document.getElementById("up_factorId");
		var factorName = document.getElementById("up_factorName");
		var factorValue = document.getElementById("up_factorValue");
	   
		for (var i = 0, j = 0; i < updateForm.length - 2; ++i) {
			if (validate_empty(updateForm.elements[i].value)) {
				valid = false;
				errors[j] = updateForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = updateForm.elements[i].getAttribute("id");
			}
		}
	   
		if (!validate_length(factorName.value, factorNameLength)) {
			valid = false;
			errors[j] = factorName.getAttribute("name") + " must be " +
				"equal to or under " + factorNameLength + " characters long";
			elementsId[j++] = factorName.getAttribute("id");
		}
	   
	   if (!validate_float(factorValue.value, factorValueLength)) {
		   	valid = false;
		   	errors[j] = factorValue.getAttribute("name") + " is must be " +
		   		"a number less than " + factorValueLength + " digits long";
		   	elementsId[j++] = factorValue.getAttribute("id");
	   	}
	   
	   	if (!validate_integer(factorId.value)) {
	   		valid = false;
	   		errors[j] = factorId.getAttribute("name") + "  must be a number";
	   		elementsId[j++] = factorId.getAttribute("id");
	   	}
		
		if (valid) {
			alert("factorId.value is " + factorId.value);
			$.ajax({
				type: "POST",
				url: "api/factor/"+factorId.value,
				data: { 
					factorName: factorName.value, 
			   		factorValue: factorValue.value 
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'Factor Updated',
							type : 'info',
							text : 'Factor ' + document.getElementById('factorName').value + ' has been updated'
						});
			    		
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("updateFactorForm").reset(); 
			    		
			    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
			    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#updateFactorModal').modal('hide');
			    		
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

	var deleteFactor= function() {
		var valid = true;
		var errors = "";
		
		var factorId = document.getElementById('del_factorId');
		
		if (!validate_integer(factorId.value)) {
			valid = false;
			errors = factorId.getAttribute("name") + "  must be a number";
		}
		
		if (valid) {
		   	$.ajax({
		   		type:"DELETE", 
			   	url : "api/factor/"+factorId.value,
			   	data : null,
			   	cache : false,
			   	success : function(data){
		       		if (data.success === "true") {
		       			$.pnotify({
							title : 'Factor: ' + document.getElementById("del_factorName").value,
							type : 'info',
							text : 'Factor has been deleted'
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

	var updateForm=function(up_factorId, up_factorName, up_factorValue){
		$("#up_factorId").val(up_factorId);
		$("#up_factorName").val(up_factorName);
		$("#up_factorValue").val(up_factorValue);
	};
	
	var deleteForm=function(factorId, factorName) {
		$("#del_factorId").val(factorId);
		$("#del_factorName").val(factorName);
	};
