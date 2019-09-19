<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/notes";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="delete from note where id=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,id);
int x=ps.executeUpdate();
if(x!=0){
	response.sendRedirect("delsuc.jsp?msg=success");
}
	%>