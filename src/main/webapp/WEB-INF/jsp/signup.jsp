<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>

    <body style="padding-left: 20%; margin-top: 5px; background-color: #D4EFFF;">
     <div>
            
    
    <p style="font-style: Calibri; font-weight: bold; font-size: 20px;"> 
  <a href="<c:url value="/blog">
            <c:param name="action" value="publichome" />
        </c:url>">Blogger Home</a> </p>
        
     <div style="position: relative; align-self: border-radius: 20px; border-style: groove; width: 30%; padding: 15%; height: 20%;"> 
        
		<h2> Register here </h2>
          <%-- <form method="POST" modelAttribute="userForm" action="<c:url value="/signup" />"> --%>
      
      <form:form modelAttribute="Users" method="POST" action="${signup}">
      
      <label for="fname">First Name: </label>
      <form:input path="firstName" id="fname" required="required" />
      <br/><br />
      <label for="lname">Last Name: </label>
      <form:input path="lastName" id="lname" required="required" />
      <br/><br />
      
      <label for="email">E-mail id: </label>
      <form:input path="emailid" id="email"  required="required"/>
      <br/>
      <br />
      <label for="userName">Username: </label>
      <form:input path="userName" id="userName" required="required" />
      <br/><br />
      <label for="passowrd">Password</label>
      <form:input type="password" path="password" id="password"  required="required"/>
      <br/>   <br />
            
            <input type="submit" value="Submit" />
   
         </form:form>
           
   
         <h2 style="font-size: 20px; "> Click here to <a href="#" onclick="callServlet()" name="login">  Login </a></h2>
 
        </div>
  
        
       </div>
            
        <script type="text/javascript">
        function callServlet() {
            document.location.href="\login";
        }
    </script>
    
     </body>
</html>
