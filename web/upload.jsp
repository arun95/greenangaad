<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%

  
      { 
	try{
            Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
      String s1=request.getParameter("fname");
      String s2=request.getParameter("pname");
      String s3=request.getParameter("quantity");   
     String s4=request.getParameter("sdate"); 
     String s5=request.getParameter("cateogry");
      String s6=request.getParameter("edate");
      String s7=request.getParameter("price");
   String s8=request.getParameter("dis");
            Statement a=con.createStatement();
            String h="Insert into upload values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')";
            a.execute(h);
            out.println("entered successfully");
        }catch(Exception ee){out.println(ee);}
} 
      %>
      <html>
          <a href="selleraccount.html">Home</a>
      </html>