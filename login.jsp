<%@page import="java.sql.*"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/notes";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="select * from reg where email=? and password=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,email);
ps.setString(2,password);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	session.setAttribute("email",email);
	response.sendRedirect("userhome.jsp?login=success");
}
else
{
	response.sendRedirect("index.html?login=failed");
}
%>