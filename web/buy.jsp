<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%

  
      { 
	try{
            Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
        String stmt,stmt2;    
        String s1=request.getParameter("pname");
      String s2=request.getParameter("quan");
      String s3=request.getParameter("uname");   
     String s4=request.getParameter("add"); 
            Statement a=con.createStatement();
             stmt="Insert into buy values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')";    
             stmt2="delete from upload where pname='"+s1+"'"; 
            a.execute(stmt);
            a.executeUpdate(stmt2);
          
             %> 
            
           <% out.println("entered successfully");
        }catch(Exception ee){out.println(ee);}
} 
      %>
      <html>
          <a href="useraccount.html">home</a>
      </html>