<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    
<h1>CD list</h1>
<%@page contentType="text/html;" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
    <tr>
        <th>Description</th>
        <th class="right">Price</th>
        <th>&nbsp;</th>
    </tr>
    <c:forEach var="product" items="${products}">
    <tr>
        <td><c:out value='${product.description}'/></td>
        <td class="right">${product.priceCurrencyFormat}</td>
        <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                <input type="submit" value="Add To Cart">
            </form>
        </td>
    </tr>
    </c:forEach>
</table>

<form>
    <input type="button" value="Back to group page" onclick = "window.location.href='https://webnhom8.herokuapp.com/#baitap9cham2'" style = "margin-top: 0.5em">
</form>

</body>
</html>