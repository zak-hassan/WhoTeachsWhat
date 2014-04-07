/**
    @Author: Anil Santokhi
    @Purpose: This script makes an AJAX call to the server and displays an updated swift report
    @Requires: client_side_validation/client_side_validation.js, jQuery 
*/

	var yearLength = 10;
	
	$(document).ready(function () {
		$("#year").attr('maxlength', yearLength);
	});

	var getSwift=function() {
		var valid = true;
		var viewForm = document.getElementById("viewSwiftForm");
		var errors = new Array();
		var elementsId = new Array();
		
		var year = document.getElementById("year");
		var semester = document.getElementById("semesterId");
		var facultyId = document.getElementById("semesterId");
		
		for (var i = 0, j = 0; i < viewForm.length - 2; ++i) {			
			if (validate_empty(viewForm.elements[i].value)) {
				valid = false;
				errors[j] = viewForm.elements[i].getAttribute("name") + " is required ";
				elementsId[j++] = viewForm.elements[i].getAttribute("id");
			}
			else {
				if (!validate_integer(viewForm.elements[i].value)) {
					valid = false;
					errors[j] = viewForm.elements[i].getAttribute("name") + " must be a number";
					elementsId[j++] = viewForm.elements[i].getAttribute("id");
				}
			}
		}
		
		if (!validate_length(year.value, yearLength)) {
			valid = false;
			errors[j] = year.getAttribute("name") + " must be " +
				"equal to or under " + yearLength + " digits";
			elementsId[j++] = year.getAttribute("id");
		}
		
		if (valid) {
		
			$.ajax({
				type: "GET",
				url: "api/facultyswiftreport",
				data: { 
					id: facultyId.value,
					semester: semester.value,
					year: year.value
			   	},
				dataType: "json",
				cache: false,
				success : function(data){
			    	if (data.success === "true") {	    		
			    		drawTable(data);
				   	}
			    	
			    	document.getElementById("viewSwiftForm").reset(); // Form needs resetting due to never being submitted
		    		
		    		for (i = 0; i < viewForm.length - 2; ++i) { // Remove red border on form elements
		    			viewForm.elements[i].style.border = "solid 1px #D1D7DF";
		    		}
		    		
		    		$('#viewSwiftModal').modal('hide');
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
	
	function drawTable(data) {
		alert("Render me");
	};