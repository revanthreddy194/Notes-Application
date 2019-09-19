<%@page import="java.sql.*"%>
<%
String name=(String)session.getAttribute("email");
String ldate=request.getParameter("date");
String id=request.getParameter("id");
String subject=request.getParameter("subject");
String notes=request.getParameter("note");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/notes";
String uname="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,uname,pwd);
String sql="update note set notes=? where id=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,notes);
ps.setString(2,id);
int x=ps.executeUpdate();
if(x!=0)
{
	response.sendRedirect("saved.jsp?msg=success");
}
%>