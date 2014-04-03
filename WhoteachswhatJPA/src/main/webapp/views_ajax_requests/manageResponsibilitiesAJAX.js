  /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a responsibility type
     
   */
    
   var addResponsibility=function() {
		$.ajax({
			type: "POST",
			url: "api/responsibility",
			data: { 
				respon_code: document.getElementById("respon_code").value, 
				respon_name: document.getElementById("respon_name").value
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
		    		
		    		document.getElementById("addResponsibilityForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addResponsibilityModal').modal('hide');
			   	}
			}
		});
	};
   	   
	 var updateResponsibility=function() {
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
			    		$('#updateResponsibilityModal').modal('hide');
			    		location.reload();
				   	}
				}
			});
		};
		   
	var deleteResponsibility= function(id, responsibilityType) {
	 	$.ajax({
	 		type:"DELETE", 
	  		url : "api/responsibility/"+id,
	  		data : null,
	  		cache : false,
	  		success : function(data){
	     		if (data.success === "true") {
	    			$.pnotify({
						title : 'Responsibility :' + responsibilityType,
						type : 'info',
						text : responsibilityType + ' has been deleted'
					});
	    			location.reload();
	  			}
	 		}
	 	});
	};

   var updateForm=function(up_respon_id, up_respon_code, up_respon_name){
		$("#up_respon_id").val(up_respon_id);
		$("#up_respon_code").val(up_respon_code);
		$("#up_respon_name").val(up_respon_name);
	};	
    