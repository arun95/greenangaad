<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" import="java.sql.*"%>
<%
            Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
   con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
 Statement statement = con.createStatement() ;
 Statement statement1 = con.createStatement() ;
            ResultSet resultset =statement.executeQuery("select * from usermsg") ;
            ResultSet resultset1 =statement1.executeQuery("select * from sellermsg") ;
         %> 
            <TABLE BORDER="1" color="red">
            <TR>
                <TH>USERNAME</TH>
                <TH>MESSAGE</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
            </TR>
            <% } %>
        </TABLE><br>
        <TABLE BORDER="1" color="red">
            <TR>
                <TH>EMAIL</TH>
                <TH>MESSAGE</TH>
            </TR>
            <% while(resultset1.next()){ %>
            <TR>
                <TD> <%= resultset1.getString(1) %></td>
                <TD> <%= resultset1.getString(2) %></TD>
            </TR>
            <% } %>
        </TABLE>
</body>