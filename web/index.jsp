<%@ page import="customer.Customer" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: dotranghoangpc
  Date: 21/09/2019
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <%
        ArrayList<Customer> customerArrayList = new ArrayList<>();
        customerArrayList.add(new Customer("Nguyễn Văn Ninh","29/06/1992","Hà Nội","1.jpeg"));
        customerArrayList.add(new Customer("Đỗ Tràng Hoàng","27/06/1996","Hà Nội","2.jpeg"));
        customerArrayList.add(new Customer("Nguyễn Xuân Thưởng","16/10/2004","Hà Nội","3.jpeg"));

        pageContext.setAttribute("customerList",customerArrayList);
    %>
    <table border="2px solid blue">
        <tr><th colspan="4"><h1>Danh sách khách hàng </h1></th></tr>
        <tr>
            <td width="200" height="50">Họ và Tên</td>
            <td width="200" height="50">Ngày Sinh</td>
            <td width="200" height="50">Địa Chỉ</td>
            <td width="400" height="50">Ảnh</td>
        </tr>

                  <c:forEach var="customer" items="${customerList}">
                      <tr>
                          <td><c:out value="${customer.fullName}"/></td>
                          <td><c:out value="${customer.birthday}"/></td>
                          <td><c:out value="${customer.address}"/></td>
                          <td><img src="<c:out value="${customer.image}"/>"  height=150px/></td>
                      </tr>
                  </c:forEach>
    </table>
</form>
</body>
</html>
