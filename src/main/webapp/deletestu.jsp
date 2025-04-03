<%@page import="com.klef.flemflare.model.Admin"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
 Admin admin =(Admin) session.getAttribute("admin");
if(admin==null)
{
	response.sendRedirect("adminsessionexpiry");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Student</title>
    <style>
           table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }

        table, th, td {
            border: 2px solid black;
        }

        th, td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
        }

        th {
            background-color: black;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }
    </style>
</head>
<body>
     <%@include file="adminsnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Delete Student</u></h3>
    <table>
        <tr>
            <th>S.NO</th>
            <th>ID Number</th>
            <th>NAME</th>
            <th>COLLEGE</th>
            <th>DEPARTMENT</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${stulist}" var="stu">
            <tr>
                <td><c:out value="${stu.sno}"/></td>
                <td><c:out value="${stu.studentIdNo}"/></td>
                <td><c:out value="${stu.name}"/></td>
                <td><c:out value="${stu.college}"/></td>
                <td><c:out value="${stu.department}"/></td>
                <td><c:out value="${stu.email}"/></td>
                <td><c:out value="${stu.contact}"/></td>
           
           <td>
             <a href='<c:url value="deletes?id=${stu.sno}"></c:url>'>Delete</a>
           </td>

            </tr>
        </c:forEach>
    </table>
</body>
</html>
