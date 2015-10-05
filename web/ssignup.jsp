<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%

  
      { 
	try{
            Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
      String s1=request.getParameter("fname");
      String s2=request.getParameter("lname");
      String s3=request.getParameter("email");   
     String s4=request.getParameter("pwd"); 
            Statement a=con.createStatement();
            String h="Insert into sellerdata values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')";
            a.execute(h);
            out.println("entered successfully");
        }catch(Exception ee){out.println(ee);}
} 
      %>
      <html>
          <a href="login.html">Login</a>
      </html>