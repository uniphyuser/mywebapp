<%@ page import="java.sql.*"%>

<%
 String userName = request.getParameter("userName"); 
 
 String password = request.getParameter("password"); 
 String DBSERVER = System.getenv("SQL_INSTANCE");
 Class.forName ("com.mysql.jdbc.Driver"); 
 Connection con = DriverManager.getConnection("jdbc:mysql://"+DBSERVER+"/sample", "root", "Qwerty@12345");
 Statement st = con.createStatement(); 
 ResultSet rs; 
 rs = st.executeQuery("select * from NEWUSER where username='" + userName + "' and password='" + password + "'");
	if (rs.next()) 
		{ 
			session.setAttribute("userid", userName); 
			response.sendRedirect("success.jsp"); 
		} 
	else 
		{ 
			out.println("Invalid password <a href='index.jsp'>try again</a>"); 
} 
%>
