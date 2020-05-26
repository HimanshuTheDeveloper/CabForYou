<%@page import="java.sql.*"%>
<%
    String distance = request.getParameter("distance");
    String fare = request.getParameter("fare");
    String cabid = (String)session.getAttribute("cabid");
    String ride_id = request.getParameter("ride_id");
    String status = "aproved";

    Connection con=null;
    Statement st=null;
    try
    {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabforyou","root","1234");
        st=con.createStatement();
        String query="update ride_request set cabid = '"+cabid+"', status ='"+status+"', distance = "+distance+", fare = "+fare+" where ride_id ="+ride_id;
       

        if(st.executeUpdate(query) > 0)
        {
            out.print("Done");
        %>
        <body style="background:#a1ffa1;">

            <h1>Ride was Successfully Approved...</h1>
        <meta http-equiv="Refresh" content="2;url=drivenow.jsp">
    </body>
        <%}
    }
    catch(Exception e)
    {
        out.print("error"+e.getMessage());
    }
%>