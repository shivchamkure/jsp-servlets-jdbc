<html>

<body>

<h3>Hello World java!</h3>

<%!
	String makeItLower(String Data){
		return Data.toLowerCase();
	}
%> 

Lower case is <%= makeItLower("HELLO WORLD") %>


</body>

</html>