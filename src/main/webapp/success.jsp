<% if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) { %> 
<h3>Session ID: <% out.print( session.getId()); %></h3>
Welcome <%=session.getAttribute("userid")%> <a href='logout.jsp'>Log out</a>
<%} else { %> 
You are not logged in<br/> <a href="index.jsp">Please Login</a> 

<% } %>
