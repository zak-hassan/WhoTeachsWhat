 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a faculty member
     
   */

	 var addFaculty=function() {
		$.ajax({
			type: "POST",
			url: "api/faculty",
			data: { 
				faculty_first_name : document.getElementById("fname").value, 
				faculty_last_name : document.getElementById("lname").value,
				faculty_status : document.getElementById("status").selectedIndex+1  
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Faculty added',
						type : 'info',
						text : 'Faculty member ' + document.getElementById('fname').value + 
						' ' + document.getElementById("lname").value + ' has been added'
					});
		    		
		    		document.getElementById("addFacultyForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addFacultyModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};
	
	 var updateFaculty=function() {
		$.ajax({
			type: "POST",
			url: "api/faculty/"+document.getElementById("up_facId").value,
			data: { 
				faculty_first_name : document.getElementById("up_fname").value, 
				faculty_last_name : document.getElementById("up_lname").value,
				faculty_status : document.getElementById("up_accessLevel").selectedIndex+1  
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'Faculty updated',
						type : 'info',
						text : 'Faculty member ' + document.getElementById('up_fname').value + 
						' ' + document.getElementById("up_lname").value + ' has been updated'
					});
		    		
		    		document.getElementById("updateFacultyForm").reset(); // Form needs resetting due to never being submitted
		    		$('#updateFacultyModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};
 
		
	var deleteFaculty= function(id, fname, lname) {
	   	$.ajax({type:"DELETE", 
		   	url : "api/faculty/"+id,
		   	data : null,
		   	cache : false,
		   	success : function(data){
	       		if (data.success === "true") {
	       			$.pnotify({
						title : 'Faculty :' + fname + ' ' + lname,
						type : 'info',
						text : 'Faculty has been deleted'
					});
       				location.reload();
		   		}
	   		 }
	   	});
   };
   
   var updateForm=function(up_facId, up_fname, up_lname, up_status){
		$("#up_facId").val(up_facId);
		$("#up_fname").val(up_fname);
		$("#up_lname").val(up_lname);
		$("#up_accessLevel").val(up_status);
	};	