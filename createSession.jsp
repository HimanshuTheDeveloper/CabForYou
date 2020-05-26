
<%@page import="java.sql.*"%>
<%
    String customerId = request.getParameter("customerId");
    String pass = request.getParameter("pass");
   
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    try
    {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabforyou","root","1234");
        st=con.createStatement();
        String query="select * from customer where customer_id = "+customerId+" AND password = '"+pass+"';";
        rs=st.executeQuery(query);
        if(rs.next())
        {
            session.setAttribute("cabid", null);
            session.setAttribute("customerId", customerId);
            session.setAttribute("name", rs.getString("name"));

        }
    }
    catch(Exception e)
    {
        out.print("error"+e.getMessage());
    }
    
    response.sendRedirect("index.jsp");
%>
