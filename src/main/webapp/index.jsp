<html>
	    <head>
		            <style>
    th,td {
	            border: 1px solid black;
		            padding: 10px;
			          }
            </style>
	        </head>
		    <body>
			            <h1>Todo List</h1>
				        <form>
						      <label>Name</label>
						            <input id="name" type="text" placeholder="Enter Thing" />
							          <label>Quantity</label>
								        <input id="qunt" type="number" placeholder="Enter Quantity" />
									      <label>Priority</label>
									            <select id="priority">
											            <option value="">--</option>
												            <option value="high">High</option>
													            <option value="low">Low</option>
														            <option value="medium">Medium</option>
															          </select>
																        <input type="submit" value="Submit" />
																	    </form>
																	        <table>
																			      <thead>
																				              <tr>
																						                <th>Name</th>
																								          <th>Quantity</th>
																									            <th>Priority</th>
																										              <th>Delete</th>
																											              </tr>
																												            </thead>
																													          <tbody></tbody>
																														      </table>
																														          </body>
</html>
<script>
																			         document.querySelector("form").addEventListener("submit", items);

																			     function items(event) {
																			       
																			       event.preventDefault();
																			       var name = document.getElementById("name").value;
																			       var qunt = document.getElementById("qunt").value;
																			       var priority = document.getElementById("priority").value;

																			       var row = document.createElement("tr");

																					       var td1 = document.createElement("td");
																					       td1.textContent = name;

																					       var td2 = document.createElement("td");
																					       td2.textContent = qunt;

																					       var td3 = document.createElement("td");
																					       td3.textContent = priority;

																					       if (priority == "high") {
																							           td3.style.backgroundColor = "red";
																							         }

																					       var td4 = document.createElement("td");
																					       td4.textContent =  "delete";
																					       td4.addEventListener("click", deleteItem);

																					       row.append(td1, td2, td3, td4);
																					       document.querySelector("tbody").append(row);
																				     }

	function deleteItem(event) {

			  event.target.parentNode.remove();
		}
</script>
