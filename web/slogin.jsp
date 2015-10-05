<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" import="java.sql.*"%>


<%
	try{
            Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
    String s1=request.getParameter("email");
      String s2=request.getParameter("pwd");
           Statement st=con.createStatement();
           String n1="select *  from sellerdata where EMAIL='"+s1+"' and PASSWORD='"+s2+"'";
           ResultSet rs=st.executeQuery(n1);
           rs.next();
           if(s2.equals(rs.getString(4)))
                   {
                       out.println("Welcome:"+s1);
                     %>
                      <%
                     String name = request.getParameter( "email" );
                     session.setAttribute( "theName", name );
                     %>
                       <html>
                       <a href="selleraccount.jsp">Click Here</a>
                       </html>

                <% 
                session.setAttribute("SES_NAME",s1);
                       
        }
           else
           {
               out.println("Try again");
           }
        }
           catch(Exception e)
                   {
                       out.println("Error");
                   }
             %>
             
             
  
</body>
</html>      