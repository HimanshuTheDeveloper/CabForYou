<%@page import="java.sql.*"%>
<%
    String name=request.getParameter("username");
    String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
    String dob=request.getParameter("dob");
    String gender=request.getParameter("gender");
    String password=request.getParameter("password");

    Connection con=null;
    Statement st=null;
    ResultSet rs = null;
    try
    {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabforyou","root","1234");
        st=con.createStatement();
        String query= "insert into customer(name,email,mobile,dob,gender,password) values('"+name+"','"+email+"','"+mobile+"','"+dob+"','"+gender+"','"+password+"');";
        st.executeUpdate(query);
        query = "select customer_id from customer where email='"+email+"'";
        rs = st.executeQuery(query);
        rs.next();
        session.setAttribute("customer_id", rs.getInt("customer_id"));
        out.println("working");
    }
    catch(Exception e)
    {
        out.print(e.getMessage());
    }


%>
<%
    response.sendRedirect("customer.jsp");
%>