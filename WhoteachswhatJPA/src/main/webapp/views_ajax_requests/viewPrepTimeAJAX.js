 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a prep time
    @Requires: client_side_validation/client_side_validation.js, jQuery
*/

	var prepTimeLength = 2;
	var prepFactorLength = 10;

	$(document).ready(function () {
		$("#preptimeName").attr('maxlength', prepTimeLength);
		$("#up_preptimeName").attr('maxlength', prepTimeLength);
		
		$("#up_preptimeFactor").attr('maxlength', prepFactorLength);
		$("#up_preptimeFactor").attr('maxlength', prepFactorLength);
	});

	var addPrepTime=function() {
		var valid = true;
		var addForm = document.getElementById("addPrepTimeForm");
		var errors = new Array();
		var elementsId = new Array();
	   
		var preptimeName = document.getElementById("preptimeName");
		var preptimeFactor = document.getElementById("preptimeFactor");
	   
		for (var i = 0, j = 0; i < addForm.length - 2; ++i) {
			if (validate_empty(addForm.elements[i].value)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
		}
	   
		if (!validate_length(preptimeName.value, prepTimeLength)) {
			valid = false;
			errors[j] = preptimeName.getAttribute("name") + " must be " +
				"equal to or under " + prepTimeLength + " characters long";
			elementsId[j++] = preptimeName.getAttribute("id");
		}
	   
		if (!validate_float(preptimeFactor.value, prepFactorLength)) {
			valid = false;
		   	errors[j] = preptimeFactor.getAttribute("name") + " must be " +
		   		"a number less than " + prepFactorLength + " digits long";
		   	elementsId[j++] = preptimeFactor.getAttribute("id");
		}
	   
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/preptime",
				data: { 
					preptimeName: preptimeName.value, 
			   		preptimeFactor: preptimeFactor.value 
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'New Prep Time added',
							type : 'info',
							text : 'Prep Time ' + preptimeName.value + ' has been added'
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
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("addPrepTimeForm").reset(); 
			    		
			    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
			    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#addPrepTimeModal').modal('hide');
			    		
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

	var updatePrepTime=function() {
		var valid = true;
		var updateForm = document.getElementById("updatePrepTimeForm");
		var errors = new Array();
		var elementsId = new Array();
	   
		var prepId = document.getElementById("up_preptimeId");
		var preptimeName = document.getElementById("up_preptimeName");
		var preptimeFactor = document.getElementById("up_preptimeFactor");
	   
		for (var i = 0, j = 0; i < updateForm.length - 2; ++i) {
			if (validate_empty(updateForm.elements[i].value)) {
				valid = false;
				errors[j] = updateForm.elements[i].getAttribute("name") + " is required";
				elementsId[j++] = updateForm.elements[i].getAttribute("id");
			}
		}
	   
		if (!validate_length(preptimeName.value, prepTimeLength)) {
			valid = false;
			errors[j] = preptimeName.getAttribute("name") + " must be " +
				"equal to or under " + prepTimeLength + " characters long";
			elementsId[j++] = preptimeName.getAttribute("id");
		}
	   
	   if (!validate_float(preptimeFactor.value, prepFactorLength)) {
		   	valid = false;
		   	errors[j] = preptimeFactor.getAttribute("name") + " is must be " +
		   		"a number less than " + prepFactorLength + " digits long";
		   	elementsId[j++] = preptimeFactor.getAttribute("id");
	   	}
	   
	   	if (!validate_integer(prepId.value)) {
	   		valid = false;
	   		errors[j] = prepId.getAttribute("name") + "  must be a number";
	   		elementsId[j++] = prepId.getAttribute("id");
	   	}
		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/preptime/"+prepId.value,
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
			    		
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("updatePrepTimeForm").reset(); 
			    		
			    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
			    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#updatePrepTimeModal').modal('hide');
			    		
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

	var deletePrepTime= function() {
		var valid = true;
		var errors = "";
		
		var prepId = document.getElementById('del_prepId');
		
		if (!validate_integer(prepId.value)) {
			valid = false;
			errors = prepId.getAttribute("name") + "  must be a number";
		}
		
		if (valid) {
		   	$.ajax({
		   		type:"DELETE", 
			   	url : "api/preptime/"+prepId.value,
			   	data : null,
			   	cache : false,
			   	success : function(data){
		       		if (data.success === "true") {
		       			$.pnotify({
							title : 'Prep time: ' + document.getElementById("del_preptimeName").value,
							type : 'info',
							text : 'Prep time has been deleted'
						});
			   		}
		       		location.reload(); // Refresh page..
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

	var updateForm=function(up_preptimeId, up_preptimeName, up_preptimeFactor){
		$("#up_preptimeId").val(up_preptimeId);
		$("#up_preptimeName").val(up_preptimeName);
		$("#up_preptimeFactor").val(up_preptimeFactor);
	};
	
	var deleteForm=function(prepId, prepName) {
		$("#del_prepId").val(prepId);
		$("#del_preptimeName").val(prepName);
	};
