  /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a faculty to a course in a particular 
    		  semester during a certain year
   */
   
	// Get faculty id from query string
	var facultyId = window.location.search.slice(4); // Removes ?id=
	facultyId = encodeURI(facultyId); // Escape string  	
    
   var addFacToCourseSem=function() {
	   if (!facultyId || !facultyId.length) { // If no id in query string, use the one from the form
			facultyId = document.getElementById("facultyId").value;
		}
		
		$.ajax({
			type: "POST",
			url: "api/facultyToCourseInSemesterYear",
			data: { 
				additionAttribute: document.getElementById("additionAttribute").value, 
		   		comphourAllowance: document.getElementById("comphourAllowance").value,
		   		comphourAssigned: document.getElementById("comphourAssigned").value,
		   		sectionNumber: document.getElementById("sectionNumber").value,
		   		semesterId: document.getElementById("semesterId").value,
		   		year: document.getElementById("year").value,
		   		comphourId: document.getElementById("comphourId").value,
		   		courseId: document.getElementById("courseId").value,
		   		facultyId: facultyId,
		   		prepTimeId: document.getElementById("prepTimeId").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Course Added to Faculty',
						type : 'info',
						text : 'Course has been assigned to faculty'
					});
		    		
		    		document.getElementById("addFacToCourseSemForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addFacToCourseSemModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};
   
	var updateFacToCourseSem=function() {
		if (!facultyId || !facultyId.length) { // If no id in query string, use the one from the form
			facultyId = document.getElementById("up_facultyId").value;
		}
		
		$.ajax({
			type: "POST",
			url: "api/facultyToCourseInSemesterYear/"+document.getElementById("up_cisId").value,
			data: { 
				additionAttribute: document.getElementById("up_additionAttribute").value, 
		   		comphourAllowance: document.getElementById("up_comphourAllowance").value,
		   		comphourAssigned: document.getElementById("up_comphourAssigned").value,
		   		sectionNumber: document.getElementById("up_sectionNumber").value,
		   		semesterId: document.getElementById("up_semesterId").value,
		   		year: document.getElementById("up_year").value,
		   		comphourId: document.getElementById("up_comphourId").value,
		   		courseId: document.getElementById("up_courseId").value,
		   		facultyId: facultyId,
		   		prepTimeId: document.getElementById("up_prepTimeId").value, 
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'Updated Course Added to Faculty',
						type : 'info',
						text : 'Course has been updated for faculty'
					});
		    		
		    		document.getElementById("updateFacToCourseSemForm").reset(); // Form needs resetting due to never being submitted
		    		$('#updateFacToCourseSemModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};

	var deleteFacToCourseSem= function(id, course, facultyFirstName, facultyLastName) {
	 	$.ajax({
	 		type:"DELETE", 
		  	url : "api/facultyToCourseInSemesterYear/"+id,
		  	data : null,
		  	cache : false,
		  	success : function(data){
	     		if (data.success === "true") {
	    			$.pnotify({
						title : 'Course :' + course + 'has been removed from faculty',
						type : 'info',
						text : 'Course has been removed from ' + facultyFirstName + ' ' + facultyLastName
					});
	    			location.reload();
	  			}
	   	  	}
	 	});
	};	   

	var updateForm=function(cisId, facId, additionAttribute, comphourAllowance, comphourAssigned, sectionNumber, semesterId,
		year,comphourId, courseId, prepTimeId){
		$("#up_cisId").val(cisId);
		$("#up_facultyId").val(facId);
		$("#up_additionAttribute").val(additionAttribute); 
   		$("#up_comphourAllowance").val(comphourAllowance);
   		$("#up_comphourAssigned").val(comphourAssigned);
   		$("#up_sectionNumber").val(sectionNumber);
   		$("#up_semesterId").val(semesterId);
   		$("#up_year").val(year);
   		$("#up_comphourId").val(comphourId);
   		$("#up_courseId").val(courseId);
   		$("#up_prepTimeId").val(prepTimeId); 
	};											
