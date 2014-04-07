 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a teaching type
    @Requires: client_side_validation/client_side_validation.js, jQuery
*/

	var teachingTypeLength = 20;
	
	$(document).ready(function () {
		$("#teachingType_name").attr('maxlength', teachingTypeLength);
		$("#up_teachingType_name").attr('maxlength', teachingTypeLength);
	});
   
	var addTeachingType=function() {
		var valid = true;
		var addForm = document.getElementById("addTeachingTypeForm");
		var errors = new Array();
		var elementsId = new Array();
		
		for (var i = 0, j = 0; i < addForm.length - 2; ++i) {
			if (validate_empty(addForm.elements[i].value)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name") + " is required ";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
			else {
				if (!validate_length(addForm.elements[i].value, teachingTypeLength)) {
					valid = false;
					errors[j] = addForm.elements[i].getAttribute("name") + " must be " +
						"under " + teachingTypeLength + " characters long";
					elementsId[j++] = addForm.elements[i].getAttribute("id");
				}
			}
		}
		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/teachingType",
				data: { 
					teachingType_name: document.getElementById("teachingType_name").value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'New Teaching Type Added',
							type : 'info',
							text : 'Teaching type ' + document.getElementById('teachingType_name').value + ' has been added'
						});
			    		
			    		$.ajax({
			    			type: "GET",
			    			url: "api/teachingType/"+data.id,
			    			data: null,
			    			dataType: "json",
			    			cache: false,
			    			success : function(teachingType){
			    			
			    				var createA1 = document.createElement('a');
			    				var createA2 = document.createElement('a');
			    				var createUpdateIcon = document.createElement('i');
			    				var createDeleteIcon = document.createElement('i');
			    				
			    				tempTeachingTypeName = adsantokhi_quote_string(teachingType.teachingType_name);
			    				
			    				createA1.setAttribute('onclick', 'updateForm(' + data.id + ', ' + tempTeachingTypeName + ')');
			    				createA1.setAttribute('data-toggle', 'modal');
			    				createA1.setAttribute('data-target', '#updateTeachingTypeModal');
			    				createA1.setAttribute('class', 'bootstrap-tooltip');
			    				createA1.setAttribute('data-original-title', 'Update');
	
			    				createA2.setAttribute('onclick', 'deleteTeachingType(' + data.id + ', ' 
			    					+ tempTeachingTypeName + ')');
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
			    					.fnAddData( [data.id, teachingType.teachingType_name,
			    						updateLink.innerHTML + " "  + deleteLink.innerHTML] );
			    				
			    				var oSettings = $('#tableSortable').dataTable().fnSettings();
			    				var nTr = oSettings.aoData[ newRow[0] ].nTr;
			    				$('td', nTr)[2].setAttribute( 'class', 'align' );
			    			}
			    		});
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("addTeachingTypeForm").reset(); 
			    		
			    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
			    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#addTeachingTypeModal').modal('hide');
			    		
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

	   
	var updateTeachingType=function() {
		var valid = true;
		var updateForm = document.getElementById("updateTeachingTypeForm");
		var errors = new Array();
		var elementsId = new Array();
		
		var teachingTypeId = document.getElementById("up_teachingType_id");
		
		for (var i = 0, j = 0; i < updateForm.length - 2; ++i) {
			if (validate_empty(updateForm.elements[i].value)) {
				valid = false;
				errors[j] = updateForm.elements[i].getAttribute("name") + " is required ";
				elementsId[j++] = updateForm.elements[i].getAttribute("id");
			}
			else {
				if (!validate_length(updateForm.elements[i].value, teachingTypeLength)) {
					valid = false;
					errors[j] = updateForm.elements[i].getAttribute("name") + "  must be " +
						"under " + teachingTypeLength + " characters long";
					elementsId[j++] = updateForm.elements[i].getAttribute("id");
				}
			}
		}
		
		if (!validate_integer(teachingTypeId.value)) {
			valid = false;
			errors[j] = teachingTypeId.getAttribute("name") + "  must be a number";
			elementsId[j++] = teachingTypeId.getAttribute("id");
		}
		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/teachingType/"+teachingTypeId.value,
				data: { 
					teachingType_name: document.getElementById("up_teachingType_name").value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'Teaching Type Updated',
							type : 'info',
							text : 'Teaching Type ' + document.getElementById("up_teachingType_name").value + ' has been updated'
						});
			    		
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("updateTeachingTypeForm").reset();
			    		
			    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
			    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#updateTeachingTypeModal').modal('hide');
			    		
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

	var deleteTeachingType= function() {
		var valid = true;
		var errors = "";
		
		var teachingTypeId = document.getElementById('del_teachingTypeId');
		
		if (!validate_integer(teachingTypeId.value)) {
			valid = false;
			errors = teachingTypeId.getAttribute("name") + "  must be a number";
		}
		
		if (valid) {
		 	$.ajax({
		 		type:"DELETE", 
			  	url : "api/teachingType/"+teachingTypeId.value,
			  	data : null,
			  	cache : false,
			  	success : function(data){
		     		if (data.success === "true") {
		    			$.pnotify({
							title : 'Teaching Type :' + document.getElementById("del_teachingTypeName").value,
							type : 'info',
							text : 'Teaching type has been deleted'
						});
	    				location.reload();
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
		   
   var updateForm=function(up_teachingType_id, up_teachingType_name){
		$("#up_teachingType_id").val(up_teachingType_id);
		$("#up_teachingType_name").val(up_teachingType_name);
	};
	
	var deleteForm=function(del_teachingTypeId, del_teachingTypeName) {
		$("#del_teachingTypeId").val(del_teachingTypeId);
		$("#del_teachingTypeName").val(del_teachingTypeName);
	};