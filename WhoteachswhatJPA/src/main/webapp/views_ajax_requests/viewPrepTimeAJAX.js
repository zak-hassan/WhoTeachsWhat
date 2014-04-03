 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a prep time
     
   */
    
   var addPrepTime=function() {
		$.ajax({
			type: "POST",
			url: "api/preptime",
			data: { 
				preptimeName: document.getElementById("preptimeName").value, 
		   		preptimeFactor: document.getElementById("preptimeFactor").value 
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Prep Time added',
						type : 'info',
						text : 'Prep Time ' + document.getElementById('preptimeName').value + ' has been added'
					});
		    		
		    		$.ajax({
		    			type: "GET",
		    			url: "api/preptime/"+data.id,
		    			data: null,
		    			dataType: "json",
		    			cache: false,
		    			success : function(preptime){
		    			
		    				var createA1 = document.createElement('a');
		    				var createA2 = document.createElement('a');

		    				var createA1Text = document.createTextNode("Update");
		    				var createA2Text = document.createTextNode("Delete");
		    				
		    				tempPreptimeName = adsantokhi_quote_string(preptime.preptimeName);
		    				
		    				createA1.setAttribute('onclick', 'updateForm(' + data.id + ', ' + tempPreptimeName + ', '
		    					+ preptime.preptimeFactor +')');
		    				createA1.setAttribute('data-toggle', 'modal');
		    				createA1.setAttribute('data-target', '#updatePrepTimeModal');

		    				createA2.setAttribute('onclick', 'deletePrepTime(' + data.id + ', ' + tempPreptimeName + ')');
		    				 
		    				createA1.appendChild(createA1Text);
		    				createA2.appendChild(createA2Text);
		    				
		    				var updateLink = document.createElement("div");
		    				updateLink.appendChild(createA1);
		    				
		    				var deleteLink = document.createElement("div");
		    				deleteLink.appendChild(createA2);
		    				
		    				var newRow = $('#tableSortable').dataTable()
		    					.fnAddData( [preptime.preptimeName, preptime.preptimeFactor,
		    						updateLink.innerHTML + " " + deleteLink.innerHTML] );
		    				
		    				var oSettings = $('#tableSortable').dataTable().fnSettings();
		    				var nTr = oSettings.aoData[ newRow[0] ].nTr;
		    				$('td', nTr)[2].setAttribute( 'class', 'align' );
		    			}
		    		});
		    		
		    		document.getElementById("addPrepTimeForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addPrepTimeModal').modal('hide');
			   	}
			}
		});
	};


	var updatePrepTime=function() {
		$.ajax({
			type: "POST",
			url: "api/preptime/"+document.getElementById("up_preptimeId").value,
			data: { 
				preptimeName: document.getElementById("up_preptimeName").value, 
		   		preptimeFactor: document.getElementById("up_preptimeFactor").value 
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'Prep Time Updated',
						type : 'info',
						text : 'Prep Time ' + document.getElementById('preptimeName').value + ' has been updated'
					});
		    		
		    		document.getElementById("updatePrepTimeForm").reset(); // Form needs resetting due to never being submitted
		    		$('#updatePrepTimeModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};

   var deletePrepTime= function(id,preptime) {
	   	$.ajax({
	   		type:"DELETE", 
		   	url : "api/preptime/"+id,
		   	data : null,
		   	cache : false,
		   	success : function(data){
	       		if (data.success === "true") {
	       			$.pnotify({
						title : 'Prep time :' + preptime,
						type : 'info',
						text : 'Prep time has been deleted'
					});
	       			location.reload();
		   		}
 			}
	   	});
   };	   

	var updateForm=function(up_preptimeId, up_preptimeName, up_preptimeFactor){
		$("#up_preptimeId").val(up_preptimeId);
		$("#up_preptimeName").val(up_preptimeName);
		$("#up_preptimeFactor").val(up_preptimeFactor);
	};											
