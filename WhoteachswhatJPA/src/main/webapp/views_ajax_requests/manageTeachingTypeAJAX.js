 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a teaching type
   */
   
	var addTeachingType=function() {
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
		    		
		    		document.getElementById("addTeachingTypeForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addTeachingTypeModal').modal('hide');
			   	}
			}
		});
	};

	   
	var updateTeachingType=function() {	
		$.ajax({
			type: "POST",
			url: "api/teachingType/"+document.getElementById("up_teachingType_id").value,
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
		    		$('#updateTeachingTypeModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};

	var deleteTeachingType= function(id, teachingType) {
	 	$.ajax({
	 		type:"DELETE", 
		  	url : "api/teachingType/"+id,
		  	data : null,
		  	cache : false,
		  	success : function(data){
	     		if (data.success === "true") {
	    			$.pnotify({
						title : 'Teaching Type :' + teachingType,
						type : 'info',
						text : teachingType + ' has been deleted'
					});
    				location.reload();
	  			}
	 	  	}
	 	});
	};
		   
   var updateForm=function(up_teachingType_id, up_teachingType_name){
		$("#up_teachingType_id").val(up_teachingType_id);
		$("#up_teachingType_name").val(up_teachingType_name);
	};	