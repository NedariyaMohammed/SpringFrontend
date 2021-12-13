<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <jsp:include page="header.jsp"></jsp:include>
  <div class="container">
  
       <sp:form modelAttribute="user" action="${pageContext.request.contextPath}/user/adduser">
		    <div class="form-group">
				<label>Enter Username</label>
				<sp:input path="username"   class="form-control" placeholder="Enter Username"/>
		    </div>
			<div class="form-group">
				<label>Enter Email</label>
				<sp:input path="email" class="form-control" placeholder="Enter Email"/>
			</div>
			<div class="form-group">
				<label>Enter Password</label>
				<sp:password path="password"  class="form-control" placeholder="Enter Password"/>
			</div>
			
			<div class="form-group">
				<input type="submit" value="Add User" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>
		</sp:form>
	</div>
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>