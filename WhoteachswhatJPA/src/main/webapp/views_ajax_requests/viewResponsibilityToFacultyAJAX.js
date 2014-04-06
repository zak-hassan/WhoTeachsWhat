 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a responsibility to and from a faculty member
     
   */
    
   // Get faculty id from query string
	var facultyId = window.location.search.slice(4); // Removes ?id=
	facultyId = encodeURI(facultyId); // Escape string
	
	var addRepToFac=function() {
		if (!facultyId || !facultyId.length) { // If no id in query string, use the one from the form
			facultyId = document.getElementById("facultyId").value;
		}
		
		$.ajax({
			type: "POST",
			url: "api/ResponsibilityToFaculty",
			data: { 
				facultyId: facultyId,
				responsibilityId: document.getElementById("responsibility").value,
		   		year: document.getElementById("year").value,
		   		semesterId: document.getElementById("semester").value,
		   		hoursperweek: document.getElementById("hoursperweek").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Responsibility Added to Faculty',
						type : 'info',
						text : 'Responsibility added to faculty' 
					});
		    		
		    		document.getElementById("addRepToFacForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addRepToFacModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};
	
	var updateRepToFac=function() {
		if (!facultyId || !facultyId.length) { // If no id in query string, use the one from the form
			facultyId = document.getElementById("up_facultyId").value;
		}
		
		$.ajax({
			type: "POST",
			url: "api/ResponsibilityToFaculty/"+document.getElementById("up_repToFacId").value,
			data: { 
				facultyId: facultyId,
		   		responsibilityId: document.getElementById("up_responsibility").selectedIndex +1,
		   		year: document.getElementById("up_year").value,
		   		semesterId: document.getElementById("up_semester").selectedIndex +1,
		   		hoursperweek: document.getElementById("up_hoursperweek").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'Responsibility Updated',
						type : 'info',
						text : 'Responsibility has been updated for faculty' 
					});
		    		
		    		document.getElementById("updateRepToFacForm").reset(); // Form needs resetting due to never being submitted
		    		$('#updateRepToFacModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};
  
	var deleteRepToFac= function(id) {
	   	$.ajax({
	   		type:"DELETE", 
		   	url : "api/ResponsibilityToFaculty/"+id,
		   	data : null,
		   	cache : false,
		   	success : function(data){
	       		if (data.success === "true") {
	       			$.pnotify({
						title : 'Responsibility has been removed from faculty',
						type : 'info',
						text : 'Responsibility has been removed from faculty'
					});
      				location.reload();
		   		}
			}
	   	});
  	};	 

	var updateForm=function(up_repToFacId, up_facultyId, up_responsibility, up_semester, up_year, up_hoursperweek){
		alert("up_repToFacId is: " + up_repToFacId);
		$("#up_repToFacId").val(up_repToFacId);
		$("#up_facultyId").val(up_facultyId);
		$("#up_responsibility").val(up_responsibility);
		$("#up_semester").val(up_semester);
		$("#up_year").val(up_year);
		$("#up_hoursperweek").val(up_hoursperweek);
	};