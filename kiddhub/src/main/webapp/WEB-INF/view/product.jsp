<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <div align="center">
            <h1>Product List</h1>
            <table border="1">
                <th> Priduct ID</th>
                <th> Product Name</th>
                <th> QTY</th>
                <th> Cost</th>
                <th>status<th>
                <c:forEach var="kl" items="${productlist}" varStatus="status">
                <tr>
                    
                    
                    <td>${kl.pid}</td>
                    <td>${kl.pname}</td>
                    <td>${kl.qty}</td>
                    <td>${kl.cost}</td> 
                    <td><a href="Bagdetail">click</a><td>        
                </tr>
                </c:forEach>             
            </table>
        </div>
    </body>
</body>
</html>