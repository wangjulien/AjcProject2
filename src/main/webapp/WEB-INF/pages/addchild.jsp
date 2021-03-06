<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact</title>
</head>
<body>

	<c:url var="addChildtUrl" value="/addchild" />
	<form action="${addChildtUrl}" method="post">
		<label for="id">Contact ID :</label>
		<input type="number" name="id" id="id" required /><br>
		<label for="fname">Child's family name :</label> 
		<input type="text" name="fname" id="fname" required />
		<label for="age">Child's age :</label> 
		<input type="number" name="age" id="age" required /> 
		<input type="submit" value="Submit" class="btn btn-primary" />
	</form>

	<h3>Contact : ${contact.fname} ${contact.lname}</h3>
	<table>
		<thead>
			<tr>
				<th>Family Name</th>
				<th>Age</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${contact.children}" var="child">
				<tr>
					<td>${child.fname}</td>
					<td>${child.age}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>