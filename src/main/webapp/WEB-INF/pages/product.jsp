<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
 
<link rel="stylesheet" type="text/css" href="styles.css">
 <style>
html {
    background: white;
}
h3 {
    margin: 0px;
    padding: 0px;
}
body {
    max-width: 860px;
    min-width: 360px;
    margin: 0px auto;
    background: #F8F8F8;
    padding:0px 5px;
    text-align:center;
}
 
.page-title  {
    font-size:120%;
    text-align: left;
    margin:10px 0px;
}
.header-container {
    text-align: left;
    border-bottom: 1px solid #ccc;
    position: relative;
    background: #5f5f5f;
    color: white;
}
.header-container .header-bar  {
    position: absolute;
    right: 10px;
    bottom: 20px;
}
.header-container .header-bar  a  {
    color: white;
    font-size: bold;
}
 
.footer-container {
    text-align: center;
    margin-top: 10px;
    padding: 5px 0px 0px 0px;
    border-top: 1px solid #ccc;
}
.menu-container {
    text-align: right;
    margin: 10px 5px;
}
.menu-container a {
    margin: 5px 5px 5px 10px;
    color: #004d99;
    font-weight: bold;
    text-decoration: none;
}
 
.site-name {
    font-size:200%;
    margin:10px 10px 10px 0px;
    padding: 5px;
}
 
.container  {
    margin: 5px 0px;
}
 
.demo-container, .login-container, .account-container {
    padding: 5px;
    border: 1px solid #ccc;
    text-align:left;
    margin:20px 0px;
}
 
.customer-info-container {
    text-align: left;
    border: 1px solid #ccc;
    padding: 0px 5px;
}
.product-preview-container {
    border: 1px solid #ccc;
    padding: 5px;
    width: 250px;
    margin: 10px ;
    display: inline-block;
    text-align:left;
}
 
.product-preview-container input {
    width: 50px;
}
 
 
.product-image {
    width: 120px;
    height: 80px;
}
 
ul {
    list-style-type: none;
    padding-left: 5px;
    margin:5px;
}
 
 
.navi-item {
    margin: 5px 5px 5px 20px;
}
 
.button-update-sc {
    color: red;
    margin: 5px 5px 5px 20px;
}
 
.button-send-sc {
    color: red;
    margin: 5px 5px 5px 20px;
}
 
.error-message {
    font-size: 90%;
    color: red;
    font-style: italic;
}
 
.price {
    color: blue;
    font-weight: bold;
}
 
.subtotal {
    color: red;
    font-weight: bold;
}
 
.total {
    color: red;
    font-weight: bold;
    font-size: 120%;
}
 
table td {
    padding: 5px;
}
</style>
</head>
<body>
 
   <jsp:include page="_header.jsp" />
   <jsp:include page="_menu.jsp" />
 
   <div class="page-title">Product</div>
  
   <c:if test="${not empty errorMessage }">
     <div class="error-message">
         ${errorMessage}
     </div>
   </c:if>
 
   <form:form modelAttribute="productForm" method="POST" enctype="multipart/form-data">
       <table style="text-align:left;">
           <tr>
               <td>Code *</td>
               <td style="color:red;">
                  <c:if test="${not empty productForm.code}">
                       <form:hidden path="code"/>
                       ${productForm.code}
                  </c:if>
                  <c:if test="${empty productForm.code}">
                       <form:input path="code" />
                       <form:hidden path="newProduct" />
                  </c:if>
               </td>
               <td><form:errors path="code" class="error-message" /></td>
           </tr>
 
           <tr>
               <td>Name *</td>
               <td><form:input path="name" /></td>
               <td><form:errors path="name" class="error-message" /></td>
           </tr>
 
           <tr>
               <td>Price *</td>
               <td><form:input path="price" /></td>
               <td><form:errors path="price" class="error-message" /></td>
           </tr>
           <tr>
               <td>Image</td>
               <td>
               <img src="${pageContext.request.contextPath}/productImage?code=${productForm.code}" width="100"/></td>
               <td> </td>
           </tr>
           <tr>
               <td>Upload Image</td>
               <td><form:input type="file" path="fileData"/></td>
               <td> </td>
           </tr>
 
 
           <tr>
               <td>&nbsp;</td>
               <td><input type="submit" value="Submit" /> <input type="reset"
                   value="Reset" /></td>
           </tr>
       </table>
   </form:form>
 
 
 
 
   <jsp:include page="_footer.jsp" />
 
</body>
</html>