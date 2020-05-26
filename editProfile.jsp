<%@page import="java.sql.*"%>
<%
    String name = request.getParameter("name");
    String mobile = request.getParameter("mobile");
    String password = request.getParameter("password");
    String dob = request.getParameter("dob");
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
        
    Connection con=null;
    Statement st=null;
    try
    {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabforyou","root","1234");
        st=con.createStatement();
        String query="UPDATE customer SET  name='"+name+"', email='"+email+"', mobile='"+mobile+"', dob='"+dob+"', gender='"+gender+"' ,password='"+password+"' WHERE customer_id = "+session.getAttribute("customerId")+";";

        if(st.executeUpdate(query) > 0)
        {
            session.setAttribute("name", name);
            out.print("Profile Updated");
        }
    }
    catch(Exception e)
    {
        out.print("error"+e.getMessage());
    }
%>