


<%@page import="java.sql.*"%>
<%
    String source=request.getParameter("source");
    String destination=request.getParameter("destination");
    String date=request.getParameter("date");
    String time=request.getParameter("time");
    String cartype=request.getParameter("cartype");
   

    Connection con=null;
    Statement st=null;

    try
    {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabforyou","root","1234");
        st=con.createStatement();
        String query= "insert into ride_request(source,destination,date, time, cartype, customer_id, status) values('"+source+"','"+destination+"','"+date+"','"+time+"','"+cartype+"', "+session.getAttribute("customerId")+", 'pending');";
        st.executeUpdate(query);
        %>
        <meta http-equiv="refresh" content="3;url=checkAvailbility.jsp" />
        <h1>Request has registered</h1>
        <%
    }
    catch(Exception e)
    {
        out.print(e.getMessage());
    }
%>
