<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%

  
      { 
	try{
            Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
      String s1=request.getParameter("name");
      String s2=request.getParameter("email");
      String s3=request.getParameter("username");   
     String s4=request.getParameter("password"); 
     String s5=request.getParameter("dob");
      String s6=request.getParameter("gender");
      String s7=request.getParameter("phone");
            Statement a=con.createStatement();
            String h="Insert into userdata values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')";
            a.execute(h);
            out.println("entered successfully");
        }catch(Exception ee){out.println(ee);}
} 
      %>
      <html>
          <a href="login.html">Login</a>
      </html>