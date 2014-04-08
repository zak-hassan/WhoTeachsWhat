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
					drawSwift(data);
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
	
	function drawSwift(data) {
		var rowStart = 2;
		var table = document.getElementById('swiftTable');
		var oldRowsLength = document.getElementById('swiftTable').rows.length;
		
		for (var i = oldRowsLength - 1; i >= rowStart; --i) // Clear previous table data, if any
			table.deleteRow(i);

		var curRowsLength = data.swift.length;
				
		for(var i = 0; i < curRowsLength; ++i) {
			var row = table.insertRow(rowStart+i);
			row.insertCell(0).innerHTML = data.swift[i].course_code;
			row.insertCell(1).innerHTML = data.swift[i].teaching_hours;
			row.insertCell(2).innerHTML = data.swift[i].lang;
			row.insertCell(3).innerHTML = data.swift[i].prep_type;
			row.insertCell(4).innerHTML = data.swift[i].prep_factor;
			row.insertCell(5).innerHTML = data.swift[i].prep_attributed_hours;
			row.insertCell(6).innerHTML = data.swift[i].prep_additional_hours;
			row.insertCell(7).innerHTML = data.swift[i].class_size;
			row.insertCell(8).innerHTML = data.swift[i].eval_e_percent;
			row.insertCell(9).innerHTML = data.swift[i].eval_r_percent;
			row.insertCell(10).innerHTML = data.swift[i].eval_p_percent;
			row.insertCell(11).innerHTML = data.swift[i].eval_factor;
			row.insertCell(12).innerHTML = data.swift[i].attr_hours;
			row.insertCell(13).innerHTML = data.swift[i].additional_attr_hours;
			row.insertCell(14).innerHTML = data.swift[i].comp_hours_allowed;
			row.insertCell(15).innerHTML = data.swift[i].comp_hours_assigned;
			row.insertCell(16).innerHTML = data.swift[i].ref;			
		}
	};