
<%@page import="java.sql.*"%>
<%
    String ride_id=request.getParameter("rideId");
    out.print(ride_id);

    Connection con=null;
    Statement st=null;

    try
    {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabforyou","root","1234");
        st=con.createStatement();
        String query= "delete from ride_request where ride_id='"+ride_id+"'";
        st.executeUpdate(query);
        %>
        <meta http-equiv="refresh" content="3;url=mybooking.jsp" />
        <h1>Ride Request Cancelled...</h1>
        <%
    }
    catch(Exception e)
    {
        out.print(e.getMessage());
    }
%>