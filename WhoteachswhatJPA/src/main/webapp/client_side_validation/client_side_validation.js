/**
    @Author: Anil Santokhi
	@Purpose: Validates variables for empty and length under x
*/

/* This function checks if the passed argument is empty */
function validate_empty(param) {	
	return (!param || !param.length) ? true : false;
}

/* This function checks if the passed argument is empty and has a length between 6 and 8 */
function validate_course_code(course_code) {
	return (course_code.length >= 6 && course_code.length <= 8) ?
		true : false;
}

/* This function checks if the parameter matches the length provided */
function validate_length(param, length) {
	return (param.length <= length) ? true : false;
}

/* This function checks if the passed argument is a float and is the passed length long or less*/
function validate_float(param, length) {
	return (!isNaN(param) && param.length <= length) ? true : false;
}

/* This function checks if the passed argument is an integer */
function validate_integer(param) {
	return (!isNaN(param)) ? true : false;
}