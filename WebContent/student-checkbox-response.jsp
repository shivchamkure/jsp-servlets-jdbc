<html>

<head><title> Student Confirmation Title </title></head>

<body>
<h3 align="center">Student Confirmation</h3>

Your name: ${param.firstname} ${param.lastname}

<br/> <br/>

Selected languages:
<ul>
	<%
		String[] langs = request.getParameterValues("favoritelanguage");
		if(langs != null){
		for(String string: langs) {
			out.println("<li>" + string + "</li>");
		}}
		else 
		out.print("Please select language");
		
	%>
</ul>

</body>

</html>