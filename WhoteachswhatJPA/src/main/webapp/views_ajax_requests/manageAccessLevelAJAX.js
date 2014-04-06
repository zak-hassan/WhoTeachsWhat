 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting an access level
    @Requires: client_side_validation/client_side_validation.js, jQuery 
*/
   var maxLength = 50

	$(document).ready(function () {
		$("#permission_name").attr('maxlength', maxLength);
		$("#up_permission_name").attr('maxlength', maxLength);
	});
	
	var addPermission=function() {
		var valid = true;
		var addForm = document.getElementById("addPermissionForm");
		var errors = new Array();
		var elementsId = new Array();
		
		for (var i = 0, j = 0; i < addForm.length - 2; ++i) {
			if (!validate_empty(addForm.elements[i].value)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
			
			if (!validate_length(addForm.elements[i].value, maxLength)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name")  + " must be " +
				"equal to or under " + maxLength + " characters long";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
		}
		   
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/permission",
				data: { 
					permission_name: document.getElementById("permission_name").value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'New Access Level Added',
							type : 'info',
							text : 'Access Level ' + document.getElementById('permission_name').value + ' has been added'
						});
			    		
			    		$.ajax({
			    			type: "GET",
			    			url: "api/permission/"+data.id,
			    			data: null,
			    			dataType: "json",
			    			cache: false,
			    			success : function(accessLevel){
			    				var createA1 = document.createElement('a');
			    				var createA2 = document.createElement('a');
			    				var createUpdateIcon = document.createElement('i');
			    				var createDeleteIcon = document.createElement('i');
			    				
			    				tempAccessName = adsantokhi_quote_string(accessLevel.a_Name);
			    				
			    				createA1.setAttribute('onclick', 'updateForm(' + data.id + ', ' + tempAccessName + ')');
			    				createA1.setAttribute('data-toggle', 'modal');
			    				createA1.setAttribute('data-target', '#updatePermissionModal');
			    				createA1.setAttribute('class', 'bootstrap-tooltip');
			    				createA1.setAttribute('data-original-title', 'Update');
	
			    				createA2.setAttribute('onclick', 'deletePermission(' + data.id + ', ' + tempAccessName + ')');
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
			    					.fnAddData( [data.id, accessLevel.a_Name,
			    						updateLink.innerHTML + " "  + deleteLink.innerHTML] );
			    				
			    				var oSettings = $('#tableSortable').dataTable().fnSettings();
			    				var nTr = oSettings.aoData[ newRow[0] ].nTr;
			    				$('td', nTr)[2].setAttribute( 'class', 'align' );
			    			}
			    		});
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("addPermissionForm").reset(); 
			    		
			    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
			    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#addPermissionModal').modal('hide');
				   	}
				}
			});
	   }
	   else { // Handle forms errors
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

	   
	var updatePermission=function() {
		var valid = true;
		var updateForm = document.getElementById("updatePermissionForm");
		var errors = new Array();
		var elementsId = new Array();
		
		var accessLevelId = document.getElementById("up_permission_id");
		
		for (var i = 0, j = 0; i < updateForm.length - 2; ++i) {
			if (!validate_empty(updateForm.elements[i].value)) {
				valid = false;
				errors[j] = updateForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = updateForm.elements[i].getAttribute("id");
			}
			
			if (!validate_length(updateForm.elements[i].value, maxLength)) {
				valid = false;
				errors[j] = updateForm.elements[i].getAttribute("name")  + " must be " +
				"equal to or under " + maxLength + " characters long";
				elementsId[j++] = updateForm.elements[i].getAttribute("id");
			}
		}
		
		if (!validate_integer(accessLevelId.value)) {
			valid = false;
		   	errors[j] = accessLevelId.getAttribute("name") + "  must be a number";
		   	elementsId[j++] = accessLevelId.getAttribute("id");
		}
		   
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/permission/"+accessLevelId.value,
				data: { 
					permission_name: document.getElementById("up_permission_name").value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'Permission Updated',
							type : 'info',
							text : 'Permission ' + document.getElementById("up_permission_name").value + ' has been updated'
						});
			    		
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("updatePermissionForm").reset();
			    		
			    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
			    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#updatePermissionModal').modal('hide');
			    		location.reload();
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

	var deletePermission= function() {
		var valid = true;
		var errors = "";
		
		var accessLevelId = document.getElementById('del_permission_id');
		
		if (!validate_integer(accessLevelId.value)) {
			valid = false;
			errors = accessLevelId.getAttribute("name") + "  must be a number";
		}
		
		if (valid) {
		 	$.ajax({
		 		type:"DELETE", 
			  	url : "api/permission/"+accessLevelId.value,
			  	data : null,
			  	cache : false,
			  	success : function(data){
		     		if (data.success === "true") {
		    			$.pnotify({
							title : 'Permission: ' + document.getElementById("del_permission_name").value,
							type : 'info',
							text : 'Permission has been deleted'
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
		   
   var updateForm=function(up_permission_id, up_permission_name){
		$("#up_permission_id").val(up_permission_id);
		$("#up_permission_name").val(up_permission_name);
	};
	
	var deleteForm=function(del_permission_id, del_permission_name){
		$("#del_permission_id").val(del_permission_id);
		$("#del_permission_name").val(del_permission_name);
	};