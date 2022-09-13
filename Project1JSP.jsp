<%-- 
    Document   : Project1JSP
    Created on : Sep 13, 2022, 6:01:44 PM
    Author     : lanst
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    <center>
        <table>
            <tr>
                <th>ID</th><!-- comment -->
                <th>FirstName</th>
                <th>LastName</th>
            </tr>
        </table>
        <%
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Faculty","root","root");
            Statement st=con.createStatement();
            
            
            String str="select * from Sheet1$";
            ResultSet rs=st.executeQuery(str);
            while(rs.next()){
            %>
            <tr><!-- comment -->
                <td><%=rs.getInt("FacId")%></td><!-- comment -->
                <td><%=rs.getString("Fname")%></td><!-- comment -->
                <td><%=rs.getString("Lname")%></td>
            </tr>
            <%}

            }
            catch (Exception e){
            
            }
            %>
    </table>
    </center>
    </body>
</html>
