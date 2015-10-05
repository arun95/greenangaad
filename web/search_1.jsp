 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" import="java.sql.*"%>


    <html>
    <head> 
    <p>Result</p>
    </head>    </head>
    <body>
<% 	
         Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
   con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
 Statement statement = con.createStatement() ;
        String s1=request.getParameter("pname");
            ResultSet resultset =statement.executeQuery("select * from upload where pname='"+s1+"'");
   %>
    <TABLE BORDER="1">
            <TR>
                <TH>productname</TH>
                <TH>quantity</TH>
                <TH>Startdate</TH>
                <TH>Cateogry</TH>
                <TH>Expirydate</TH>
                <TH>MRP</TH>
                <TH>Discount</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(2) %></td>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
		<TD> <%= resultset.getString(7) %></TD>
                 <TD> <%= resultset.getString(8) %></TD>
            </TR>
            <% } %> 
   </TABLE>
   <a href="search1.html">Back</a>
   </body>
   </html>
   