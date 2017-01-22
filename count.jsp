<%@ page language="java" %>
<!doctype html>
<html>
<head><title>Session Example</title><meta charset="utf-8"></head>
<body>
<% int n=0;
   String str = (String)session.getAttribute("count");
   if(str == null) {
	session.setAttribute("count","1"); n = 1; }
   else { n = Integer.parseInt(str)+1; } 
   out.println("<h1>Count is "+n+"</h1>"); 
   session.setAttribute("count",""+n);%>
<form name="myform" method="get">
<h1><%=session.getId() %></h1>
<input type="submit" value="Show Count">
<% session.invalidate(); %>
</form>
</body>
</html>