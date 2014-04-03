 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting an Evaluation Factor
     
   */
    
   var addEvalFactor=function() {
		$.ajax({
			type: "POST",
			url: "api/evalfactor",
			data: { 
				evalName: document.getElementById("evalName").value, 
		   		evalFactor: document.getElementById("evalFactor").value
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
		    			
		    				var createA1 = document.createElement('a');
		    				var createA2 = document.createElement('a');

		    				var createA1Text = document.createTextNode("Update");
		    				var createA2Text = document.createTextNode("Delete");
		    				
		    				tempEvalName = adsantokhi_quote_string(evalfactor.efName);
		    				
		    				createA1.setAttribute('onclick', 'updateForm(' + data.id + ', ' + tempEvalName + ', '
		    					+ evalfactor.efFactor + ')');
		    				createA1.setAttribute('data-toggle', 'modal');
		    				createA1.setAttribute('data-target', '#updateEvalFactorModal');

		    				createA2.setAttribute('onclick', 'deleteEvalFactor(' + data.id + ', ' + tempEvalName + ')');
		    				 
		    				createA1.appendChild(createA1Text);
		    				createA2.appendChild(createA2Text);
		    				
		    				var updateLink = document.createElement("div");
		    				updateLink.appendChild(createA1);
		    				
		    				var deleteLink = document.createElement("div");
		    				deleteLink.appendChild(createA2);
		    				
		    				
		    				var newRow = $('#tableSortable').dataTable()
		    					.fnAddData( [evalfactor.efName, evalfactor.efFactor,
		    						updateLink.innerHTML + " | "  + deleteLink.innerHTML] );
		    				
		    				var oSettings = $('#tableSortable').dataTable().fnSettings();
		    				var nTr = oSettings.aoData[ newRow[0] ].nTr;
		    				$('td', nTr)[2].setAttribute( 'class', 'align' );
		    			}
		    		});
		    		
		    		document.getElementById("addEvalFactorForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addEvalFactorModal').modal('hide');
			   	}
			}
		});
	};
   

	var updateEvalFactor=function() {
		$.ajax({
			type: "POST",
			url: "api/evalfactor/"+document.getElementById("up_evalId").value,
			data: { 
				evalName: document.getElementById("up_evalName").value, 
		   		evalFactor: document.getElementById("up_evalFactor").value
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
		    		
		    		document.getElementById("updateEvalFactorForm").reset(); // Form needs resetting due to never being submitted
		    		$('#updateEvalFactorModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};

	var deleteEvalFactor= function(id,evalName) {
	 	$.ajax({
	 		type:"DELETE", 
	  		url : "api/evalfactor/"+id,
	  		data : null,
	  		cache : false,
	  		success : function(data){
	     		if (data.success === "true") {
	    			$.pnotify({
						title : 'Evaluation Factor :' + evalName,
						type : 'info',
						text : 'Evaluation factor has been deleted'
					});
	    			location.reload();
	  			}
	   	 	}
	 	});
	};	   

	var updateForm=function(up_evalId, evalName, evalFactor){
		$("#up_evalId").val(up_evalId);
		$("#up_evalName").val(evalName);
		$("#up_evalFactor").val(evalFactor);
	};