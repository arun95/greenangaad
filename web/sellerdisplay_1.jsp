<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" import="java.sql.*"%>
<%
            Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
   con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
 Statement statement = con.createStatement() ;
            ResultSet resultset =statement.executeQuery("select * from sellerdata") ;
         %> 
            <TABLE BORDER="1" color="red">
            <TR>
                <TH>Firstname&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>
                <TH>Lastname&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>
                <TH>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>
             </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
            </TR>
            <% } %>
        </TABLE>
        <a href="sellercontact_1.html">contact</a>
</body>