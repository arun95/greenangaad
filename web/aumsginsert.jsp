<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%

  
      { 
	try{
            Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
      String s1=request.getParameter("uname");
      String s2=request.getParameter("msg"); 
            Statement a=con.createStatement();
            String h="Insert into aumsg values('"+s1+"','"+s2+"')";
            a.execute(h);
            out.println("entered successfully");
        }catch(Exception ee){out.println(ee);}
} 
      %>
      <html>
          <a href="adminaccount.jsp">home</a>
      </html>