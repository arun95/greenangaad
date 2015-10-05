<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8" import="java.sql.*"%>
<%
            Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
   con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
 Statement statement = con.createStatement() ;
 String s=(String)session.getAttribute( "theName" );
            ResultSet resultset =statement.executeQuery("select * from userdata where uname='"+s+"'") ;
         %> 
            <TABLE BORDER="1" color="red">
            <TR>
                <TH>name</TH>
                <TH>email</TH>
                <TH>username</TH>
                <TH>DOB</TH>
                <TH>gender</TH>
                <TH>mobilename</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
		<TD> <%= resultset.getString(7) %></TD>
            </TR>
            <% } %>
        </TABLE>
</body>