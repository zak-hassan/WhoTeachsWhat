/**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating, suspending and deleting a user
    @Requires: client_side_validation/client_side_validation.js, jQuery   
*/
   
	var maxLength = 50;

	$(document).ready(function () {
		$("#username").attr('maxlength', maxLength);
		$("#up_username").attr('maxlength', maxLength);
		
		$("#up_accessLevel").attr('maxlength', maxLength);
		$("#up_accessLevel").attr('maxlength', maxLength);
	});

   var addUser=function() {
	   var valid = true;
	   var addForm = document.getElementById("addUserForm");
	   var errors = new Array();
	   var elementsId = new Array();
	   
	   var accessLevel = document.getElementById("accessLevel");
	   
	   for (var i = 0, j = 0; i < addForm.length - 2; ++i) {
			if (validate_empty(addForm.elements[i].value)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
			else {
				if (!validate_length(addForm.elements[i].value, maxLength)) {
					valid = false;
					errors[j] = addForm.elements[i].getAttribute("name") + " must be " +
						"equal to or under " + maxLength + " characters long";
					elementsId[j++] = addForm.elements[i].getAttribute("id");
				}
			}
	   }
	   
	   if (!validate_integer(accessLevel.value)) {
		   valid = false;
		   	errors[j] = accessLevel.getAttribute("name") + " must be a number";
		   	elementsId[j++] = accessLevel.getAttribute("id");
	   }
	   
	   if (valid) {
			$.ajax({
				type: "POST",
				url: "api/account",
				data: { 
					username: document.getElementById("username").value, 
			   		accessLevel: accessLevel.value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'New User added',
							type : 'info',
							text : 'User ' + document.getElementById('username').value + ' has been added'
						});
			    		
			    		$.ajax({
			    			type: "GET",
			    			url: "api/account/"+data.id,
			    			data: null,
			    			dataType: "json",
			    			cache: false,
			    			success : function(user){
			    			
			    				var createA1 = document.createElement('a');
			    				var createA2 = document.createElement('a');
			    				var createA3 = document.createElement('a');
	
			    				var createA1Text = document.createTextNode("Update");
			    				var createA2Text = document.createTextNode("Delete");
			    				var createA3Text = document.createTextNode("Suspend");
			    				
			    				tempUsername = adsantokhi_quote_string(user.username);
			    				
			    				createA1.setAttribute('onclick', 'updateForm(' + data.id + ', ' + tempUsername + ', '
			    					+ user.accessLevelID +')');
			    				createA1.setAttribute('data-toggle', 'modal');
			    				createA1.setAttribute('data-target', '#updateUserModal');
	
			    				createA2.setAttribute('onclick', 'deleteUser(' + data.id + ', ' + tempUsername + ')');
			    				
			    				createA3.setAttribute('onclick', 'suspendUser(' + data.id + ', ' + tempUsername + ')');
			    				 
			    				createA1.appendChild(createA1Text);
			    				createA2.appendChild(createA2Text);
			    				createA3.appendChild(createA3Text);
			    				
			    				var updateLink = document.createElement("div");
			    				updateLink.appendChild(createA1);
			    				
			    				var deleteLink = document.createElement("div");
			    				deleteLink.appendChild(createA2);
			    				
			    				var suspendLink = document.createElement("div");
			    				suspendLink.appendChild(createA3);
			    				
			    				var newRow = $('#tableSortable').dataTable()
			    					.fnAddData( [data.id, user.username, user.accessLevel,
			    						updateLink.innerHTML + " | " + suspendLink.innerHTML + " | " + deleteLink.innerHTML] );
			    				
			    				var oSettings = $('#tableSortable').dataTable().fnSettings();
			    				var nTr = oSettings.aoData[ newRow[0] ].nTr;
			    				$('td', nTr)[3].setAttribute( 'class', 'align' );
			    			}
			    		});
			    		
			    		document.getElementById("addUserForm").reset(); // Form needs resetting due to never being submitted
			    		
			    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
			    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#addUserModal').modal('hide');
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
	
	var updateUser=function() {
		var valid = true;
	    var updateForm = document.getElementById("updateUserForm");
	    var errors = new Array();
	    var elementsId = new Array();
	    
	    var accessLevel = document.getElementById("up_accessLevel");
	    var userId = document.getElementById("up_userId");
	   
	    for (var i = 0, j = 0; i < updateForm.length - 2; ++i) {
	    	if (validate_empty(updateForm.elements[i].value)) {
				valid = false;
				errors[j] = updateForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = updateForm.elements[i].getAttribute("id");
	    	}
	    	else {
	    		if (!validate_length(updateForm.elements[i].value, maxLength)) {
					valid = false;
					errors[j] = updateForm.elements[i].getAttribute("name") + " must be " +
						"equal to or under " + maxLength + " characters long";
					elementsId[j++] = updateForm.elements[i].getAttribute("id");
				}
	    	}
	    }
	    	    
	    if (!validate_integer(accessLevel.value)) {
	    	valid = false;
	    	errors[j] = accessLevel.getAttribute("name") + " must be a number";
	    	elementsId[j++] = accessLevel.getAttribute("id");
		}
	    
	    if (!validate_integer(userId.value)) {
	    	valid = false;
	    	errors[j] = userId.getAttribute("name") + " must be a number";
	    	elementsId[j++] = userId.getAttribute("id");
		}
	    
	    if (valid) {
			$.ajax({
				type: "POST",
				url: "api/account/"+userId.value,
				data: { 
					username: document.getElementById("up_username").value, 
			   		accessLevel: accessLevel.value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'New User added',
							type : 'info',
							text : 'User ' + document.getElementById('up_username').value + ' has been added'
						});
			    		
			    		document.getElementById("updateUserForm").reset(); // Form needs resetting due to never being submitted
			    		
			    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
			    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#updateUserModal').modal('hide');
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
	
	var suspendUser=function(id, username) {
		var valid = true;
		var errors = "";
		
		if (!validate_integer(id)) {
			valid = false;
	    	errors = "User id must be a number";
		}
		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/account/"+id,
				data: { 
					username: username,
			   		accessLevel: 1 // One denotes no access 
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'User Suspended',
							type : 'info',
							text : 'User ' + username + ' has been suspended'
						});
				   	}
				}
			});
		}
		else { // Handle HTML Inspect errors
			$.pnotify({
				title : 'Error',
				type : 'info',
				text : errors
			});
		}
	};

	var deleteUser= function() {
		var valid = true;
		var errors = "";
		
		var userId = document.getElementById('del_userId');
		
		if (!validate_integer(userId.value)) {
			valid = false;
			errors = userId.getAttribute("name") + "  must be a number";
		}
		
		if (valid) {
		 	$.ajax({type:"DELETE", 
			  	url : "api/account/"+userId.value,
			  	data : null,
			  	cache : false,
			  	success : function(data){
		     		if (data.success === "true") {
		    			$.pnotify({
							title : 'User :' + document.getElementById("del_username").value,
							type : 'info',
							text : 'User has been deleted'
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

	var updateForm=function(userId, uname,ac_level){
		$("#up_userId").val(userId);
		$("#up_username").val(uname);
		$("#up_accessLevel").val(ac_level);
	};
	
	var deleteForm=function(userId, username) {
		$("#del_userId").val(userId);
		$("#del_username").val(username);
	};