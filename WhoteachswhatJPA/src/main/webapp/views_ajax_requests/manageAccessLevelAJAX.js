 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting an access level
   */
   
	var addPermission=function() {
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
		    		
		    		document.getElementById("addPermissionForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addPermissionModal').modal('hide');
			   	}
			}
		});
	};

	   
	var updatePermission=function() {	
		$.ajax({
			type: "POST",
			url: "api/permission/"+document.getElementById("up_permission_id").value,
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
		    		$('#updatePermissionModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};

	var deletePermission= function(id, permission) {
	 	$.ajax({
	 		type:"DELETE", 
		  	url : "api/permission/"+id,
		  	data : null,
		  	cache : false,
		  	success : function(data){
	     		if (data.success === "true") {
	    			$.pnotify({
						title : 'Permission :' + permission,
						type : 'info',
						text : permission + ' has been deleted'
					});
    				location.reload();
	  			}
	 	  	}
	 	});
	};
		   
   var updateForm=function(up_permission_id, up_permission_name){
		$("#up_permission_id").val(up_permission_id);
		$("#up_permission_name").val(up_permission_name);
	};	