var createA1 = document.createElement('a');
var createA2 = document.createElement('a');

var createA1Text = document.createTextNode("Update");
var createA2Text = document.createTextNode("Delete");

var test = document.getElementById('semesterName').value;
   
createA1.setAttribute('onclick', 'updateForm("10", test)');
createA1.setAttribute('data-toggle', 'modal');
createA1.setAttribute('data-target', '#updateSemesterModal');

createA2.setAttribute('onclick', '10');
 
createA1.appendChild(createA1Text);
createA2.appendChild(createA2Text);

var table = document.getElementById('tableSortable');
var tr = document.createElement('tr'); 
var td1 = document.createElement('td');
var td2 = document.createElement('td');
var td3 = document.createElement('td');

var td1Text = document.createTextNode('10');
var td2Text = document.createTextNode(document.getElementById('semesterName').value);
var td3Text = document.createTextNode('Update Delete');

td1.appendChild(td1Text);
td2.appendChild(td2Text);
td3.appendChild(createA1);
td3.appendChild(createA2);

tr.appendChild(td1);
tr.appendChild(td2);
tr.appendChild(td3);

table.appendChild(tr);

<!--
$("#tableSortable tbody").append(
	"<tr>" +
	"<td>" + data.id + "</td>" +
	"<td>" + document.getElementById('semesterName').value + "</td>" +
	"<td class='align'>" +
	"<a onclick='updateForm(" + data.id + ", " + document.getElementById('semesterName').value 
		+ ")' data-toggle='modal' data-target='#updateSemesterModal'>Update" +
	"</a> |" +
	"<a onclick='deleteSemester(" + data.id + ", " +  document.getElementById('semesterName').value
		+ ")'>Delete" +
	"</a>" +
"</td>" +
"</tr>"
);
-->