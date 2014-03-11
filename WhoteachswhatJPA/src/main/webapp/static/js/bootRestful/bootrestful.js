/**
 
 BOOTRestful.js - Restful UI plugin for bootstrap for quick modals with ajax.

	Prequisite must have jquery, bootstrap 

**/


(function(_){
	
/**

@param   url 					STRING 		- Url that the ajax request will be mapped to
@param   args 					JSON  			- Used for passing arguments to ajax request
@param   success  			FUNCTION		- Will run once the ajax request is finished. Should have 1 argument data. 
@param   validation 		JSON				- Validation Rules
@param   divId					STRING			- the id of the form element in html

**/

	_.makeModel=(function(formFields, id, title ){  //, buttons){
		html='<!-- Modal -->'+
		'<div class="modal fade" id="'+id+'" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">'+
			'<div class="modal-dialog">'+
				'<div class="modal-content">'+
				  '<div class="modal-header">'+
				    '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>'+
				    '<h4 class="modal-title" id="myModalLabel">'+title+'</h4>'+
				  '</div>'+
				  '<div class="modal-body">'+
				  formFields+
				  '</div>'+
				  '<div class="modal-footer">'+//	buttons+
				  '<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>'+
				    '<button type="button" onclick="" class="btn btn-primary">Save</button>'+
				  '</div>'+
				'</div>'+
			'</div>'+
		'</div>';
		$("body").append(html);
	
})();
/*
 * 
 * 
 * 
 * 

makeModel('<form method="post" role="form" action="ajaxAddUser" id="ManageUsersForm" onsubmit="return validateNewUser();" class="form-horizonatal">'+
    '<div class="input-group">'+
  '<span class="input-group-addon">User Name: </span><br />'+
    '<input type="text" class="form-control" placeholder="Username" />'+
'</div>'+
'<div class="input-group">'+
  '<span class="input-group-addon">Access Level:</span> <br />'+
    '<select class="form-control">'+
  '<option value="0">No Access</option>'+
  '<option value="1">Web Master</option>'+
  '<option  value="2">Scheduler</option> '+
  '<option value="3">Level One Coordinator</option>'+
  '<option value="4">Level Two Coordinator</option>'+
  '<option value="5">Administrator</option>'+
'</select>'+    
'</div>'+
'</form>',"addg","Add User");
,'<button type="button" class="btn btn-default" data-dismiss="modal">Close</button><button type="button" onclick="addFaculty()" class="btn btn-primary">Save</button>'

 * 
 * 
 * 
 * 
 *     '<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>'+
				    '<button type="button" onclick="'+action+'" class="btn btn-primary">Save</button>'+
				    
				    
_.addItem = (function(url, args, success, validation, id) {
				$.post(url, args).done(args);
				$(id).validate(validation);
		})();

_.deleteItem = (function(){
	//TODO: make a delete function.


})();

_.updateItem = (function(entityId, url, args, success, validation, id){
	//TODO: make update function ...

	$.post(url+"/"+entityId, args).done(args);
	$(id).validate(validation);

})();

_.getAllItems = (function(url, success){
		$.getJSON( url, success);
})();

*/

})(this);