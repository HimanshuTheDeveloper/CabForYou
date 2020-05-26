<%@page import="java.sql.*"%>
<%
    String cabid=request.getParameter("cabid");
    String name=request.getParameter("name");
    String mobile=request.getParameter("mobile");
    String dob=request.getParameter("dob");
    String gender=request.getParameter("gender");
    String password=request.getParameter("password");

    Connection con=null;
    Statement st=null;

    try
    {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabforyou","root","1234");
        st=con.createStatement();
        String query= "insert into driver(cabid,name,mobile,dob,gender,password) values('"+cabid+"','"+name+"','"+mobile+"','"+dob+"','"+gender+"','"+password+"');";
        st.executeUpdate(query);
        
        out.println("working");
        response.sendRedirect("driver.jsp");
    }
    catch(Exception e)
    {
        out.print(e.getMessage());
    }


%>
