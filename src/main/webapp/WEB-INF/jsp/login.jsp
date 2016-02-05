<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Blog</title>
</head>

    <body style="padding-left: 20%; margin-top: 5px; background-color: #D4EFFF;">
     <div>
      
   <h1 style="font-style: Calibri; font-weight: bold; font-size: 20px;">   
  <a href="<c:url value="/blog">
            <c:param name="action" value="publichome" />
        </c:url>">Blogger Home</a></h1>
        
    <div style="position: relative; align-self: border-radius: 20px; border-style: groove; flex-start; width: 220px; padding: 10%; height: 10%; border-radius: 20px; border-style: groove;"> 
          
        <c:if test="${not empty msg}">
		   
			<strong>${msg}</strong>
		   
		</c:if>
		<br/>
		<br/>
		<h2>Login</h2>
		<form method="POST" action="/csuf.blog/login">
            Username <br>
            <input type="text" required="required" name="username"><br><br>
            Password <br>
            <input type="password" required="required" name="password"><br><br>
            <input type="submit" name="submit" value="Log In">
        </form><br/>
        <p style="font-size: 20px; font-color: black; font-weight: bold"><a href="<c:url value="/signup">
            <c:param name="action" value="signup" />
        </c:url>">Create Blogger account</a><p>
	</div>
       </div>
        <script type="text/javascript">
        function callServlet() {
            document.location.href="\login";
        }
    </script>
    </body>
</html>
