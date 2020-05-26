<%@page import="java.sql.*"%>
<%
    String cabid = request.getParameter("cabid");
    String pass = request.getParameter("password");
    
    
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    try
    {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabforyou","root","1234");
        st=con.createStatement();
        out.print("st created");
        String query="select * from driver where cabid = '"+cabid+"' AND password = '"+pass+"';";
        rs=st.executeQuery(query);
        out.print("after execution");

        if(rs.next())
        {
            session.setAttribute("customerId", null);
            session.setAttribute("cabid", cabid);
            session.setAttribute("name", rs.getString("name"));
            session.setAttribute("mobile", rs.getString("mobile"));
            session.setAttribute("dob", rs.getString("dob"));
            session.setAttribute("gender", rs.getString("gender"));
        }
    }
    catch(Exception e)
    {
        out.print("error"+e.getMessage());
    }
    response.sendRedirect("index.jsp");
%>
