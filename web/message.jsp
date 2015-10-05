<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" import="java.sql.*"%>
 <%
     
	try
        {
            Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
   con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
           int updateQuery=0;
            out.println("hai");
           String s1=request.getParameter("email1");
            String s2=request.getParameter("message1");
            out.println(s1+" "+s2);
            PreparedStatement ps=null;
            String querystring="update sellerdata set message=? where email=?";
            ps=con.prepareStatement(querystring);
            ps.setString(1,s2);
            ps.setString(2,s1);
            updateQuery=ps.executeUpdate();
            if (updateQuery!=0)
            { %>
            <p>data is successfully updated in database</p>
               
           <% }
           
        }
        catch(Exception e)
        {
           out.println(e);
        }
 %> 