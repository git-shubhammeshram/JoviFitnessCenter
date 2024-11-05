<%
String login = (String)session.getAttribute("login");
if(login == null){
	
	response.sendRedirect("login.jsp");
	return;
}
%>
