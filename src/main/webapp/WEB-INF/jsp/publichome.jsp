<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
      <%@ page import="com.csuf.Model.Blog" %>
   <%@ page import="java.util.List" %>
<%-- <%
    @SuppressWarnings("unchecked")
   List<Blog> blogdatabase=(List<Blog>)request.getAttribute("blogDatabase");
%> --%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blogger Home</title>
</head>
 <body style="padding-left: 20%; margin-top: 5px; background-color: #D4EFFF;">
    <div style="padding-left: 0%;">
<script type="text/javascript">
        function callServlet() {
            document.location.href="\login";
        }
    </script>
    <p style="font-size:20px; font-weight: bold; color:black ">
 <a href="#" onclick="callServlet()" name="login"> Login </a>
 &nbsp; &nbsp; &nbsp; &nbsp; 
  <a href="<c:url value="/signup">
            <c:param name="action" value="signup" />
        </c:url>">Sign Up</a></p>
        </div>
        <div style="padding-left: 10%;">
             
     <div style="position: relative; align-self: border-radius: 20px; border-style: groove; flex-start; width: 60%; padding: 5%; height: 20%;"> 
       
  <h1> Bloggers </h1><br>

<div >
 <br>
  
         <%
    int total = 10;
    
%>
         <%
            if(total == 0)
            {
                %><i>there are no posts available</i><%
            }
            else
            {
            %>	 
            
            <c:forEach items="${blogdatabase}" var="blogdatabase">     
   <hr><hr>
   
   <p style="font-size: 25px; font-weight: bold; font-family: Calibri; color: brown"> <c:out value="${blogdatabase.userName}"/> </p> <c:out value="${blogdatabase.date}"/> <br>
   <h2> <i><c:out value="${blogdatabase.title}"/></i></h2>
   <c:out value="${blogdatabase.description}"/>  
</c:forEach>
              <%--  for(Blog obj : blogdatabase){
               
                    
                   --%>
                 <%--    <p style="font-size: 15px;"> <%=obj.getUserName() %></p>   <%=obj.getDate() %><br>
                   <h2><i><u>
                    <%=obj.getTitle() %></u>
                   </i></h2>
                   <%=obj.getDescription() %>
                   <hr><hr>
                    
                    
      <%
                } %> --%>
                <%
                
            }
        %>
        </div>
      </div>  
        
</body>
</html>