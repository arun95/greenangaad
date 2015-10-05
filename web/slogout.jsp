<%
    
  session.invalidate();

   String site = new String("http://localhost:8080/WebApplication1/selleraccount.jsp");

   response.setStatus(response.SC_MOVED_TEMPORARILY);

   response.setHeader("theName", site);
 
   out.println("LOGGED-OUT") ;
  
  
   %>
   <br><a href="index_1.html">HOME</a>