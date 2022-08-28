
<%@ page import="java.util.*" %>

<html>
<body>

<!-- step1: Create HTML Form -->
<form action="todo-demo.jsp">
	Add new item:<input type="text" name="theItem" />
	<br/> <br/>
	<input type="submit" value="submit" />
	<br/>		
</form>

<!-- step 2: Add new item to ToDo List -->
<% 

	//get ToDo items from the session
	@SuppressWarnings("unchecked")
	//We make use of the attribute name "myToDoList". 
	//This is basically the key/label to look up data from the session.
	List<String> items = (List<String>) session.getAttribute("myToDoList");

	//If items doesn't exist. then create a new one
	if(items==null){
	items = new ArrayList<String>();
	session.setAttribute("myToDoList", items);
	}
	
	
	//See if there is form data to add
	String theItem = request.getParameter("theItem");

	boolean isItemNotEmpty = (theItem != null) && theItem.trim().length() > 0;
	boolean isItemNotDuplicate = (theItem != null) && !items.contains(theItem.trim());
	
	if(isItemNotDuplicate && isItemNotEmpty){
		items.add(theItem.trim());
	}

%>

<!-- step3: Display ToDo List -->
<hr>
<b>To List Items: </b><br/>

<ol>
<%
	//Odered list of items
	for(String temp: items){
		out.println("<li>" + temp + "</li>");
	}
%>

</ol>
</body>

</html>