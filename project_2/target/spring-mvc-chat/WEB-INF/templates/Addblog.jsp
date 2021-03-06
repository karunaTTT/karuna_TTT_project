<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html lang="en">
<head>
  <title>Add Blog page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>

<div class="container-fluid">
  <div class="row content">
  <h4>${u.getName()}'s Home</h4>

  <form:form method="POST" action="saveblog" class="form-signin" commandName="blogpage" enctype="multipart/form-data">
<table>
<tr>
        <td>
            <form:label path="blogtitle"><spring:message text="Blog Title"/></form:label>
        </td>
        <td>
            <form:input path="blogtitle" class="form-control"  placeholder="Blog title"/>
        </td> 
    </tr>
    <tr>
        <td>
            <form:label path="blogcontent"><spring:message text="Blog Content"/></form:label>
        </td>
        
        <td>
            
            <form:textarea path="blogcontent" rows="5" class="form-control"  placeholder="Blog content" />
            
        </td>
    </tr>
    <tr>
    <td><form:label path="blogcontent"><spring:message text="Upload File"/></form:label></td>
    <td> <form:input type="file" path="doc" />
		</td>
    </tr>
    
    
    <tr>
        <td colspan="1">
                <input type="submit" value="<spring:message text="Post Blog"/>" /> 
        </td>
    </tr>
</table>  
</form:form>

<c:if test="${rolename == 'ROLE_ADMIN'}">
 <c:if test="${!empty pendingblog}">
	<table border="1" id="myTable" class="display table" width="100%" >
	<tr>
		<th>Blog ID</td>
		<th>Blog Title</th>
		<th>Blog Description</th>
		<th>Approved</th>
		<th>Delete</th>
	</tr>
        <c:forEach items="${pendingblog}" var="p">
            <tr>
                <td>${p.blogid}</td>
                <td>${p.blogtitle}</td>
                <td>${p.blogcontent}</td>
                
                <td><a href="<c:url value='approved/${p.blogid}' />" >Approved</a></td>
                    <td><a href="<c:url value='delete/${p.blogid}'/>" >Delete</a></td>
                
            </tr>
        </c:forEach>
    </table>
    </c:if>
    </c:if>
  
    

</div>
</div>
<footer class="container-fluid">
  

</footer>

</body>
</html>
