 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting an Evaluation Factor
    @Requires: client_side_validation/client_side_validation.js, jQuery
*/

	var evalFactorLength = 10;

	$(document).ready(function () {
		$("#evalName").attr('maxlength', evalFactorLength);
		$("#up_evalName").attr('maxlength', evalFactorLength);
	});
	
  	var addEvalFactor=function() {
  		var valid = true;
		var addForm = document.getElementById("addEvalFactorForm");
		var errors = new Array();
		var elementsId = new Array();
		
		var evalFactor = 777;
	   
		for (var i = 0, j = 0; i < addForm.length - 2; ++i) {
			if (validate_empty(addForm.elements[i].value)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
			else {
				if (!validate_length(addForm.elements[i].value, evalFactorLength)) {
					valid = false;
					errors[j] = addForm.elements[i].getAttribute("name") + " must be " +
						"equal to or under " + evalFactorLength + " characters long";
					elementsId[j++] = addForm.elements[i].getAttribute("id");
				}
			}
		}
	   
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/evalfactor",
				data: { 
					evalName: document.getElementById("evalName").value, 
			   		evalFactor: evalFactor
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'New Evaluation Factor added',
							type : 'info',
							text : 'Evaluation Factor ' + document.getElementById('evalName').value + ' has been added'
						});
			    		
			    		$.ajax({
			    			type: "GET",
			    			url: "api/evalfactor/"+data.id,
			    			data: null,
			    			dataType: "json",
			    			cache: false,
			    			success : function(evalfactor){
			    				if (data.success === "true") {
				    				// Refresh data table	
			    				}
			    			}
			    		});
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("addEvalFactorForm").reset(); 
			    		
			    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
			    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#addEvalFactorModal').modal('hide');
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
   

	var updateEvalFactor=function() {
		var valid = true;
		var updateForm = document.getElementById("updateEvalFactorForm");
		var errors = new Array();
		var elementsId = new Array();
		
		var evalId = document.getElementById("up_evalId");
		var evalFactor = 777;
	   
		for (var i = 0, j = 0; i < updateForm.length - 2; ++i) {
			if (validate_empty(updateForm.elements[i].value)) {
				valid = false;
				errors[j] = updateForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = updateForm.elements[i].getAttribute("id");
			}
			else {
				if (!validate_length(updateForm.elements[i].value, evalFactorLength)) {
					valid = false;
					errors[j] = updateForm.elements[i].getAttribute("name") + " must be " +
						"equal to or under " + evalFactorLength + " characters long";
					elementsId[j++] = updateForm.elements[i].getAttribute("id");
				}
			}
		}
		
		if (!validate_integer(evalId.value)) {
	   		valid = false;
	   		errors[j] = evalId.getAttribute("name") + "  must be a number";
	   		elementsId[j++] = evalId.getAttribute("id");
	   	}
	   
		if (valid) {
		$.ajax({
			type: "POST",
			url: "api/evalfactor/"+evalId.value,
			data: { 
				evalName: document.getElementById("up_evalName").value, 
		   		evalFactor: evalFactor
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'Evaluation Factor updated',
						type : 'info',
						text : 'Evaluation Factor ' + document.getElementById('up_evalName').value + ' has been updated'
					});
		    		// Form needs resetting due to never being submitted
		    		document.getElementById("updateEvalFactorForm").reset(); 
		    		
		    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
		    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
		    		}
		    		
		    		$('#updateEvalFactorModal').modal('hide');
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

	var deleteEvalFactor= function() {
		var valid = true;
		var errors = "";
		
		var evalId = document.getElementById('del_evalId');
		
		if (!validate_integer(evalId.value)) {
			valid = false;
			errors = evalId.getAttribute("name") + "  must be a number";
		}
		
		if (valid) {
		 	$.ajax({
		 		type:"DELETE", 
		  		url : "api/evalfactor/"+evalId.value,
		  		data : null,
		  		cache : false,
		  		success : function(data){
		     		if (data.success === "true") {
		    			$.pnotify({
							title : 'Evaluation Factor :' + document.getElementById("del_evalName").value,
							type : 'info',
							text : 'Evaluation factor has been deleted'
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

	var updateForm=function(up_evalId, evalName, evalFactor){
		$("#up_evalId").val(up_evalId);
		$("#up_evalName").val(evalName);
	};
	
	var deleteForm=function(del_evalId, del_evalName) {
		$("#del_evalId").val(del_evalId);
		$("#del_evalName").val(del_evalName);
	};