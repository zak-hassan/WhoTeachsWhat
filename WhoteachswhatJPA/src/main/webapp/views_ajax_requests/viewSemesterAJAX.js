/**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a semester
    @Requires: client_side_validation/client_side_validation.js, jQuery
*/   
	var semesterNameLength = 20;
	
	$(document).ready(function () {
		$("#semesterName").attr('maxlength', semesterNameLength);
		$("#up_semesterName").attr('maxlength', semesterNameLength);
	});
	
	
	var addSemester=function() {
		var valid = true;
		var addForm = document.getElementById("addSemesterForm");
		var errors = new Array();
		var elementsId = new Array();
		
		for (var i = 0, j = 0; i < addForm.length - 2; ++i) {
			if (!validate_empty(addForm.elements[i].value)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name") + " is required ";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
			
			if (!validate_length(addForm.elements[i].value, semesterNameLength)) {
				valid = false;
				errors[j] = addForm.elements[i].getAttribute("name") + " is must be " +
					"under " + semesterNameLength + " characters long";
				elementsId[j++] = addForm.elements[i].getAttribute("id");
			}
		}
		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/semester",
				data: { semesterName: document.getElementById('semesterName').value },
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'New Semester added',
							type : 'info',
							text : 'Semester ' + document.getElementById('semesterName').value + ' has been added'
						});
			    		
			    		$.ajax({
			    			type: "GET",
			    			url: "api/semester/"+data.id,
			    			data: null,
			    			dataType: "json",
			    			cache: false,
			    			success : function(semester){
			    			
			    				var createA1 = document.createElement('a');
			    				var createA2 = document.createElement('a');
	
			    				var createA1Text = document.createTextNode("Update");
			    				var createA2Text = document.createTextNode("Delete");
			    				
			    				tempSemester = adsantokhi_quote_string(semester.name);
			    				
			    				createA1.setAttribute('onclick', 'updateForm(' + semester.id + ', ' + tempSemester + ')');
			    				createA1.setAttribute('data-toggle', 'modal');
			    				createA1.setAttribute('data-target', '#updateSemesterModal');
	
			    				createA2.setAttribute('onclick', 'deleteSemester()');
			    				 
			    				createA1.appendChild(createA1Text);
			    				createA2.appendChild(createA2Text);
			    				
			    				var updateLink = document.createElement("div");
			    				updateLink.appendChild(createA1);
			    				
			    				var deleteLink = document.createElement("div");
			    				deleteLink.appendChild(createA2);
			    				
			    				var newRow = $('#tableSortable').dataTable()
			    					.fnAddData( [semester.id, semester.name, updateLink.innerHTML + " " + deleteLink.innerHTML] );
			    				
			    				var oSettings = $('#tableSortable').dataTable().fnSettings();
			    				var nTr = oSettings.aoData[ newRow[0] ].nTr;
			    				$('td', nTr)[2].setAttribute( 'class', 'align' );
			    			}
			    		});
			    		
			    		document.getElementById("addSemesterForm").reset(); // Form needs resetting due to never being submitted
			    		
			    		for (i = 0; i < addForm.length - 2; ++i) { // Remove red border on form elements
			    			addForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#addSemesterModal').modal('hide');
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
	
	var updateSemester=function() {
		var valid = true;
		var updateForm = document.getElementById("updateSemesterForm");
		var errors = new Array();
		var elementsId = new Array();
		
		for (var i = 0, j = 0; i < updateForm.length - 2; ++i) {
			if (!validate_empty(updateForm.elements[i].value)) {
				valid = false;
				errors[j] = updateForm.elements[i].getAttribute("name") + " is required ";
				elementsId[j++] = updateForm.elements[i].getAttribute("id");
			}
			
			if (!validate_length(updateForm.elements[i].value, semesterNameLength)) {
				valid = false;
				errors[j] = updateForm.elements[i].getAttribute("name") + " is required and must be " +
					"under " + semesterNameLength + " characters long";
				elementsId[j++] = updateForm.elements[i].getAttribute("id");
			}
		}
		
		if (valid) {
			$.ajax({
				type: "POST",
				url: "api/semester/"+document.getElementById('up_semesterId').value,
				data: { semesterName: document.getElementById('up_semesterName').value },
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {
			    		$.pnotify({
							title : 'Semester updated',
							type : 'info',
							text : 'Semester ' + document.getElementById('up_semesterName').value + ' has been updated'
						});
			    		// Form needs resetting due to never being submitted
			    		document.getElementById("updateSemesterForm").reset();
			    		
			    		for (i = 0; i < updateForm.length - 2; ++i) { // Remove red border on form elements
			    			updateForm.elements[i].style.border = "solid 1px #D1D7DF";
			    		}
			    		
			    		$('#updateSemesterModal').modal('hide');
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
	   
	var deleteSemester= function() {
		$.ajax({
			type:"DELETE", 
			url : "api/semester/"+document.getElementById('del_semesterId').value,
			data : null,
			cache : false,
			success : function(data){
		    	if (data.success === "true") {
	       			$.pnotify({
						title : 'Semester :' + document.getElementById('del_semesterName').value,
						type : 'info',
						text : 'Semester has been deleted'
					});
			   	}
			}
		});
	};	   
	
	var updateForm=function(semesterId, semesterName){
		$("#up_semesterId").val(semesterId);
		$("#up_semesterName").val(semesterName);
	};
	
	var deleteForm=function(semesterId, semesterName){
		$("#del_semesterId").val(semesterId);
		$("#del_semesterName").val(semesterName);
	};