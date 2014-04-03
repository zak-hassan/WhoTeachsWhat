  /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a comp hour type
     
   */
   
	var addCompHour=function() {
		$.ajax({
			type: "POST",
			url: "api/comphour",
			data: { 
				comp_hour_code: document.getElementById("comp_hour_code").value, 
				comp_hour_name: document.getElementById("comp_hour_name").value
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
		    		
		    		$.ajax({
		    			type: "GET",
		    			url: "api/comphour/"+data.id,
		    			data: null,
		    			dataType: "json",
		    			cache: false,
		    			success : function(comphour){
		    			
		    				var createA1 = document.createElement('a');
		    				var createA2 = document.createElement('a');
		    				var createUpdateIcon = document.createElement('i');
		    				var createDeleteIcon = document.createElement('i');

		    				tempCompHourName = adsantokhi_quote_string(comphour.name);
		    				tempCompHourCode = adsantokhi_quote_string(comphour.code);
		    				
		    				createA1.setAttribute('onclick', 'updateForm(' + data.id + ', ' + tempCompHourCode + ', '
		    					+ tempCompHourName +')');
		    				createA1.setAttribute('data-toggle', 'modal');
		    				createA1.setAttribute('data-target', '#updateCompHourModal');
		    				createA1.setAttribute('class', 'bootstrap-tooltip');
		    				createA1.setAttribute('data-original-title', 'Update');

		    				createA2.setAttribute('onclick', 'deleteCompHour(' + data.id + ', ' + tempCompHourName + ')');
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
		    					.fnAddData( [data.id, comphour.code, comphour.name,
		    						updateLink.innerHTML + " " + deleteLink.innerHTML] );
		    				
		    				var oSettings = $('#tableSortable').dataTable().fnSettings();
		    				var nTr = oSettings.aoData[ newRow[0] ].nTr;
		    				$('td', nTr)[3].setAttribute( 'class', 'align' );
		    			}
		    		});
		    		
		    		document.getElementById("addCompHourForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addCompHourModal').modal('hide');
			   	}
			}
		});
	};

	   
	var updateCompHour=function() {	
		$.ajax({
			type: "POST",
			url: "api/comphour/"+document.getElementById("up_comp_hour_id").value,
			data: { 
				comp_hour_code: document.getElementById("up_comp_hour_code").value, 
				comp_hour_name: document.getElementById("up_comp_hour_name").value
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
		    		
		    		document.getElementById("updateCompHourForm").reset(); // Form needs resetting due to never being submitted
		    		$('#updateCompHourModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};

	var deleteCompHour= function(id, compHourType) {
	 	$.ajax({
	 		type:"DELETE", 
		  	url : "api/comphours/"+id,
		  	data : null,
		  	cache : false,
		  	success : function(data){
	     		if (data.success === "true") {
	    			$.pnotify({
						title : 'Comp Hour :' + compHourType,
						type : 'info',
						text : compHourType + ' has been deleted'
					});
    				location.reload();
	  			}
	 	  	}
	 	});
	};
		   
   var updateForm=function(comp_hour_id, comp_hour_code, comp_hour_name){
		$("#up_comp_hour_id").val(comp_hour_id);
		$("#up_comp_hour_code").val(comp_hour_code);
		$("#up_comp_hour_name").val(comp_hour_name);
	};