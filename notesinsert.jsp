<%@page import="java.sql.*"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="DBConnection.Ftpcon"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="pack.TrippleDes"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="javax.crypto.SecretKey"%>
<%
String name=(String)session.getAttribute("email");
String ldate=request.getParameter("date");
String subject=request.getParameter("subject");
String topic=request.getParameter("topic");
String notes=request.getParameter("note");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/notes";
String uname="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,uname,pwd);
String sql="insert into note (date,subject,notes,uname,topic) values (?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,ldate);
ps.setString(2,subject);
ps.setString(3,notes);
ps.setString(4,name);
ps.setString(5,topic);
int x=ps.executeUpdate();
if(x!=0)
{
	
	 String strPath = "C:\\Tomcat 7.0\\webapps\\Notes\\file\\" + topic;
	File strFile = new File(strPath+".txt");
 boolean fileCreated = strFile.createNewFile();
 Writer objWriter = new BufferedWriter(new FileWriter(strFile));
 objWriter.write("Date: "+ldate);
	objWriter.write("\n Subject: "+subject);
	objWriter.write("\n Notes: "+notes);
 objWriter.flush();
 //objWriter.close();
 TrippleDes e=new TrippleDes();
           String encryptedtext=e.encrypt(objWriter.toString());
		   
		   File f = new File(strFile.getName());
                                FileWriter fw = new FileWriter(f);
                                fw.write(encryptedtext);
                                fw.close();
                                Ftpcon ftpcon = new Ftpcon();
                                ftpcon.upload(f);
		   
                       // File strFile1 = new File(encryptedtext);        
                         //       Ftpcon ftpcon = new Ftpcon();
                           //     ftpcon.upload(strFile1);
                              




	response.sendRedirect("saved.jsp?msg=success");
}
%>