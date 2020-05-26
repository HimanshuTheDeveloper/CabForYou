
<%@page import="java.sql.*"%>
<%
    String email = request.getParameter("email");
    String mobile = request.getParameter("mobile");
   
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    try
    {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabforyou","root","1234");
        st=con.createStatement();
        String query="select * from customer where email='"+email+"' and mobile='"+mobile+"';";
        rs=st.executeQuery(query);
    
    if(rs.next())
        {
%>
<body style="background:pink;">
<h1>User Password is </h1>
</body>
<%
            out.println(rs.getString("password"));

        }
    }
    catch(Exception e)
    {
        out.print("error"+e.getMessage());
    }
    
 

%>