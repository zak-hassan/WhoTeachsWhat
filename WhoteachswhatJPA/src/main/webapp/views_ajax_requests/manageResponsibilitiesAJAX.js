  /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a responsibility type
    @Requires: client_side_validation/client_side_validation.js, jQuery 
*/
	var respon_code_length = 20;
	var respon_name_length = 50;

	$(document).ready(function () {
		$("#respon_code").attr('maxlength', respon_code_length);
		$("#up_respon_code").attr('maxlength', respon_code_length);
		
		$("#respon_name").attr('maxlength', respon_name_length);
		$("#up_respon_name").attr('maxlength', respon_name_length);
	});
	
	var addResponsibility=function() {
		var valid = true;
		var addForm = document.getElementById("addResponsibilityForm");
		var errors = new Array();
		var elementsId = new Array();
		   
		var responCode = document.getElementById("respon_code");
		var responName = document.getElementById("respon_name");
		   
		for (var i = 0, j = 0; i < addForm.length - 2; ++i) {
			if (validate_empty(addForm.elements[i].value)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
		}
		
		if(!validate_length(responCode.value, respon_code_length)) {
			valid = false;
			errors[j] = responCode.getAttribute("name") + " must be " +
			"equal to or under " + respon_code_length + " characters long";
			elementsId[j++] = responCode.getAttribute("id");
		}
		
		if (!validate_length(responName.value, respon_name_length)) {
			valid = false;
			errors[j] = responName.getAttribute("name") + " must be " +
			"equal to or under " + respon_name_length + " characters long";
			elementsId[j++] = responName.getAttribute("id");
		}
		
		if (valid) {
		$.ajax({
			type: "POST",
			url: "api/responsibility",
			data: { 
				respon_code: responCode.value, 
				respon_name: responName.value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Responsibility added',
						type : 'info',
						text : 'Responsibility ' + document.getElementById('respon_name').value + ' has been added'
					});
		    		
		    		$.ajax({
		    			type: "GET",
		    			url: "api/responsibility/"+data.id,
		    			data: null,
		    			dataType: "json",
		    			cache: false,
		    			success : function(rep){
		    			
		    				var createA1 = document.createElement('a');
		    				var createA2 = document.createElement('a');
		    				var createUpdateIcon = document.createElement('i');
		    				var createDeleteIcon = document.createElement('i');
		    				
		    				tempRepCode = adsantokhi_quote_string(rep.r_code);
		    				tempRepName = adsantokhi_quote_string(rep.r_name);
		    				
		    				createA1.setAttribute('onclick', 'updateForm(' + data.id + ', ' + tempRepCode + ', '
		    					+ tempRepName + ')');
		    				createA1.setAttribute('data-toggle', 'modal');
		    				createA1.setAttribute('data-target', '#updateResponsibilityModal');
		    				createA1.setAttribute('class', 'bootstrap-tooltip');
		    				createA1.setAttribute('data-original-title', 'Update');

		    				createA2.setAttribute('onclick', 'deleteResponsibility(' + data.id + ', ' + tempRepName + ')');
		    				createA2.setAttribute('class', 'bootstrap-tooltip');
		    				createA2.setAttribute('data-original-title', 'Delete');
		    				
		    				createUpdateIcon.setAttribute('class', 'icon-edit');
		    				createDeleteIcon.setAttribute('class', 'icon-trash');
		    					    				 
		    				createA1.appendChild(createUpdateIcon);
		    				createA2.appendChild(createDeleteIcon);
		    						    				 
		    				var updateLink = document.createElement("div");
		    				updateLink.appendChild(createA1);
		    				
		    				var deleteLink = document.createElement("div");
		    				deleteLink.appendChild(createA2);
		    				
		    				
		    				var newRow = $('#tableSortable').dataTable()
		    					.fnAddData( [data.id, rep.r_code, rep.r_name,
		    						updateLink.innerHTML + " "  + deleteLink.innerHTML] );
		    				
		    				var oSettings = $('#tableSortable').dataTable().fnSettings();
		    				var nTr = oSettings.aoData[ newRow[0] ].nTr;
		    				$('td', nTr)[3].setAttribute( 'class', 'align' );
		    			}
		    		});
		    		// Form needs resetting due to never being submitted
		    		document.getElementById("addResponsibilityForm").reset();
		    		
		    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
		    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
		    		}
		    		
		    		$('#addResponsibilityModal').modal('hide');
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
   	   
	 var updateResponsibility=function() {
		 var valid = true;
		 var updateForm = document.getElementById("updateResponsibilityForm");
		 var errors = new Array();
		 var elementsId = new Array();
			   
		 var responId = document.getElementById("up_respon_id");
		 var responCode = document.getElementById("up_respon_code");
		 var responName = document.getElementById("up_respon_name");
			   
		 for (var i = 0, j = 0; i < updateForm.length - 2; ++i) {
			 if (validate_empty(updateForm.elements[i].value)) {
				 valid = false;
				 errors[j] = updateForm.elements[i].getAttribute("name") + " is required";
				 elementsId[j++] = updateForm.elements[i].getAttribute("id");
			 }
		 }
			
		 if(!validate_length(responCode.value, respon_code_length)) {
			 valid = false;
			 errors[j] = responCode.getAttribute("name") + " must be " +
			 "equal to or under " + respon_code_length + " characters long";
			 elementsId[j++] = responCode.getAttribute("id");
		 }
			
		 if (!validate_length(responName.value, respon_name_length)) {
			 valid = false;
			 errors[j] = responName.getAttribute("name") + " must be " +
			 "equal to or under " + respon_name_length + " characters long";
			 elementsId[j++] = responName.getAttribute("id");
		 }
		 
		 if (!validate_integer(responId.value)) {
			 valid = false;
			 errors[j] = responId.getAttribute("name") + "  must be a number";
			 elementsId[j++] = responId.getAttribute("id");
		 }
			
		 if (valid) {
			$.ajax({
				type: "POST",
				url: "api/responsibility/"+document.getElementById("up_respon_id").value,
				data: { 
					respon_code: document.getElementById("up_respon_code").value, 
					respon_name: document.getElementById("up_respon_name").value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'Responsibility updated',
							type : 'info',
							text : 'Responsibility ' + document.getElementById('up_respon_name').value + ' has been updated'
						});
			    		
			    		document.getElementById("updateResponsibilityForm").reset(); // Form needs resetting due to never being submitted
			    		
			    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
			    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#updateResponsibilityModal').modal('hide');
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
		   
	var deleteResponsibility= function() {
		var valid = true;
		var errors = "";
		
		var responId = document.getElementById('del_respon_id');
		
		if (!validate_integer(responId.value)) {
			valid = false;
			errors = responId.getAttribute("name") + "  must be a number";
		}
		
		if (valid) {
		 	$.ajax({
		 		type:"DELETE", 
		  		url : "api/responsibility/"+responId.value,
		  		data : null,
		  		cache : false,
		  		success : function(data){
		     		if (data.success === "true") {
		    			$.pnotify({
							title : 'Responsibility :' + document.getElementById("del_respon_name").value,
							type : 'info',
							text : 'Responsibility type has been deleted'
						});
		    			location.reload();
		  			}
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

   var updateForm=function(up_respon_id, up_respon_code, up_respon_name){
		$("#up_respon_id").val(up_respon_id);
		$("#up_respon_code").val(up_respon_code);
		$("#up_respon_name").val(up_respon_name);
	};
	
	var deleteForm=function(del_respon_id, del_respon_name) {
		$("#del_respon_id").val(del_respon_id);
		$("#del_respon_name").val(del_respon_name);
	};
    