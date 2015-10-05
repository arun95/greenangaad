<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" import="java.sql.*
         " %>

    <html>
    <head> 
    <p>tablename</p>
    </head>
    <body>
<% 	
         Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
   con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
 Statement statement = con.createStatement();
      String s1="orange";
            Date resultset =statement.executeQuery("select expirydate from upload where pname='"+s1+"'");
            Date ft = new SimpleDateFormat("yyyy-mm-dd");
    java.sql.Date newdate= new java.sql.Date(ft.parse(resultset).getTime());
    java.util.Date now=new java.util.Date();
    int isPast=0;
    isPast=newdate.compareTo(now);
    if(isPast>0)
          {
                 Resultset a=statement.executeQuery("delete from upload where expirydate='"+resultset+"')
          }
   %>