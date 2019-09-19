<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/notes";
String uname="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,uname,pwd);
String sql="insert into reg (name,email,password,phone,address) values (?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,password);
ps.setString(4,phone);
ps.setString(5,address);
int x=ps.executeUpdate();
if(x!=0)
{
	response.sendRedirect("regsuc.jsp?register=success");
}
%>