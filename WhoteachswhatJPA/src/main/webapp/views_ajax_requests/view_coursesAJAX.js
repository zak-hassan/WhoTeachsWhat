/**
    @Author: Anil Santokhi
    @Purpose: AJAX posting and validation for adding, updating and deleting a course
   */
    
   var addCourse=function() {
		$.ajax({
			type: "POST",
			url: "api/course",
			data: { 
				course_code: document.getElementById("course_code").value,
	  	   		course_name: document.getElementById("course_name").value,
	  	   		crossover_input: document.getElementById("crossover_input").value,
	  	   		reference_input: document.getElementById("reference_input").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'New Course added',
						type : 'info',
						text : 'Course ' + document.getElementById('course_code').value + ' has been added'
					});
		    		
		    		document.getElementById("addCourseForm").reset(); // Form needs resetting due to never being submitted
		    		$('#addCourseModal').modal('hide');
			   	}
			}
		});
	};
	
	var updateCourse=function() {
		$.ajax({
			type: "POST",
			url: "api/course/"+document.getElementById("up_course_id").value,
			data: { 
				course_code: document.getElementById("up_course_code").value,
	  	   		course_name: document.getElementById("up_course_name").value,
	  	   		crossover_input: document.getElementById("up_crossover_input").value,
	  	   		reference_input: document.getElementById("up_reference_input").value
		   	},
			dataType: "json",
			cache: false,
			success : function(data){
		    	if (data.success === "true") {
		    		$.pnotify({
						title : 'Course Updated',
						type : 'info',
						text : 'Course ' + document.getElementById('up_course_code').value + ' has been updated'
					});
		    		
		    		document.getElementById("updateCourseForm").reset(); // Form needs resetting due to never being submitted
		    		$('#updateCourseModal').modal('hide');
			   	}
			}
		});
	};
   
  	var deleteCourse= function(id, course_code) {
 		$.ajax({type:"DELETE", 
  			url : "api/course/"+id,
  			data : null,
  			cache : false,
  			success : function(data){
     			if (data.success === "true") {
    				$.pnotify({
						title : 'Course :' + course_code,
						type : 'info',
						text : 'Course has been deleted'
					});
    			location.reload();
  				}
  	 		 }
 		});
	};	  	   

	var updateForm=function(up_course_id, up_course_code, up_course_name, up_crossover_input, up_reference_input){
		$("#up_course_id").val(up_course_id);
		$("#up_course_code").val(up_course_code);
		$("#up_course_name").val(up_course_name);
		$("#up_crossover_input").val(up_crossover_input);
		$("#up_reference_input").val(up_reference_input);
	};