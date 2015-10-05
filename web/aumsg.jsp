<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" import="java.sql.*"%>

<%
            Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
   con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
 Statement statement = con.createStatement() ;
       String s=(String)session.getAttribute( "theName" );
            ResultSet resultset =statement.executeQuery("select * from aumsg where name='"+s+"'") ;
         %> 
         
            <TABLE BORDER="1" color="red">
            <TR>
                <TH>Name</TH>
                <TH>Message</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
            </TR>
            <% } %>
        </TABLE>
</body>