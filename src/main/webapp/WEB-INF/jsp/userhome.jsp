<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
   <%@ page import="com.csuf.Model.Blog" %>
   <%@ page import="java.util.List" %>
<%
@SuppressWarnings("unchecked")
List<Blog> blogdatabase=(List<Blog>)request.getAttribute("blogDatabase");
%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>User home page</title>
</head>
<body style=" padding-left: 20%; margin-top: 5px; background-color: #D4EFFF;">
   
<div style="padding-left: 70%;">

<h2> <a href="<c:url value="/logout" />">Logout</a></h2>
 </div>
    <div style="padding-left: 0%;">
         

   <div style="position: relative; align-self: flex-start; width: 60%	; padding: 5%; height: 20%;"> 
      
       <br /><br />
 <h1>Welcome, <c:out value="${username}"/>
       </h1>
      
      <script type="text/javascript">
        function validate() {
        	 		
        	 		
        	 		
        }
    </script>
   <spring:url value="/addpost" var="userActionUrl" />
   
     <form:form modelAttribute="Blog" method="POST" action="${userActionUrl}">
     <%--   <label for="username"> </label><br/>
      <form:input type="hidden" path="userName" id="username" value="${username}"  /> --%>
      <label for="title">Title </label><br/>
      <form:input path="title" id="title" required="required" />
      <br/><br />
      <label for="description">Description: </label> </br>
      <form:input path="description" id="description" required="required" />
      <br/><br />
      
               <input type="submit" value="Submit" />
   
         </form:form>
        <%-- <form method="POST"  action="<c:url value="/blog" />">
            Title<br />
            <input type="text" name="title" required="required"  /><br /><br />
            Description<br />
            <textarea rows="4" cols="60"  name="description"  required="required" ></textarea><br /><br />
          
            <input type="submit" onclick="validate()" name="submit" value="POST" />
        </form> --%>
        <%
    int total = 10;
    
%>
<br>
<br>

<a href="<c:url value="/userblog">
            <c:param name="action" value="publicpost" />
        </c:url>">Blogger Home</a>
        &nbsp; &nbsp; &nbsp; &nbsp;
        <a href="<c:url value="/myblog">
            <c:param name="action" value="mypost" />
        </c:url>">My Home</a>
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
   <h2> <i> <c:out value="${blogdatabase.title}"/></i></h2>
   <c:out value="${blogdatabase.description}"/>  
</c:forEach>
        <%--       <%   for(Blog obj : blogdatabase){
                  %>
                   <h1> <%=obj.getUserName() %></h1>   <%=obj.getDate() %><br>
                   <h2><i><u>
                    <%=obj.getTitle() %></u>
                   </i></h2>
                   <%=obj.getDescription() %>
                   <hr><hr> 
                    
      <%
                }%>
                 --%>
                
                <%
            }
        %>
        
        
        </div>
        </div>
        
    </body>
</html>
