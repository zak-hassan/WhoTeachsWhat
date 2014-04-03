 /**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a course in a semester
   */
   
	// Get course id from query string
	var courseId = window.location.search.slice(4); // Removes ?id=
	courseId = encodeURI(courseId); // Escape string
	    
   var addCourseInSemester=function() {
	   if (!courseId|| !courseId.length) { // If no id in query string, use the one from the form
			courseId = document.getElementById("courseId").value;
		}
	   
		$.ajax({
			type: "POST",
			url: "api/courseinsemester",
			data: { 
				addition_attribute: document.getElementById("addition_attribute").value,
	  	   		eval_1_ans: document.getElementById("eval_1_ans").value,
	  	   		eval_2_ans: document.getElementById("eval_2_ans").value,
	  	 		eval_3_ans: document.getElementById("eval_3_ans").value,
	  	 		eval_1: document.getElementById("eval_1").value,
	  	 		eval_2: document.getElementById("eval_2").value,
	  	 		eval_3: document.getElementById("eval_3").value,
	  	 		sectionNumber: document.getElementById("sectionNumber").value,
	  	 		year: document.getElementById("year").value,
	  	 		course_id: courseId,
	  	 		semester_id: document.getElementById("semester_id").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Course Section in Semester added',
						type : 'info',
						text : 'Course has been allocated ' + document.getElementById("sectionNumber").value 
							+ 'number of sections'
					});
		    		
		    		// Form needs resetting due to never being submitted
		    		document.getElementById("addCourseInSemesterForm").reset(); 
		    		$('#addCourseInSemesterModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};
	
	var updateCourseInSemester=function() {
	   if (!courseId|| !courseId.length) { // If no id in query string, use the one from the form
			courseId = document.getElementById("up_courseId").value;
		}
	   	   
		$.ajax({
			type: "POST",
			url: "api/courseinsemester/"+document.getElementById("cisId").value,
			data: { 
				addition_attribute: document.getElementById("up_addition_attribute").value,
	  	   		eval_1_ans: document.getElementById("up_eval_1_ans").value,
	  	   		eval_2_ans: document.getElementById("up_eval_2_ans").value,
	  	 		eval_3_ans: document.getElementById("up_eval_3_ans").value,
	  	 		eval_1: document.getElementById("up_eval_1").value,
	  	 		eval_2: document.getElementById("up_eval_2").value,
	  	 		eval_3: document.getElementById("up_eval_3").value,
	  	 		sectionNumber: document.getElementById("up_sectionNumber").value,
	  	 		year: document.getElementById("up_year").value,
	  	 		course_id: courseId,
	  	 		semester_id: document.getElementById("up_semester_id").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'Course Section Updated',
						type : 'info',
						text : 'Course section has been updated'
					});
		    		
		    		// Form needs resetting due to never being submitted
		    		document.getElementById("updateCourseInSemesterForm").reset(); 
		    		$('#updateCourseInSemesterModal').modal('hide');
		    		location.reload();
			   	}
			}
		});
	};
   
  	var deleteCourseInSemester= function(id, course_code, semester, year) {
 		$.ajax({
 			type:"DELETE", 
  			url : "api/courseinsemester/"+id,
  			data : null,
  			cache : false,
  			success : function(data){
     			if (data.success === "true") {
    				$.pnotify({
						title : 'Course :' + course_code + 'sections removed',
						type : 'info',
						text : 'Course sections has been removed for ' + semester + ' ' + year
					});
    			location.reload();
  				}
  	 		 }
 		});
	};	  	   

	var updateForm=function(cisId, up_addition_attribute, up_eval_1_ans, up_eval_2_ans, up_eval_3_ans, up_sectionNumber,
		up_year, up_course_id, up_eval_1, up_eval_2, up_eval_3, up_semester_id){
		
		$("#cisId").val(cisId);
		$("#up_addition_attribute").val(up_addition_attribute);
		$("#up_eval_1_ans").val(up_eval_1_ans);
		$("#up_eval_2_ans").val(up_eval_2_ans);
		$("#up_eval_3_ans").val(up_eval_3_ans);
		$("#up_eval_1").val(up_eval_1);
		$("#up_eval_2").val(up_eval_2);
		$("#up_eval_3").val(up_eval_3);
		$("#up_sectionNumber").val(up_sectionNumber);
		$("#up_year").val(up_year);
		$("#up_courseId").val(up_course_id);
		$("#up_semester_id").val(up_semester_id);
	};