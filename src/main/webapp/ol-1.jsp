
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <c:set  var="today"  value="<%= new java.util.Date()%>" />
    <fmt:formatDate type="time" value="${today}"  /> <br/>
    <fmt:formatDate type="date" value="${today}" /> <br/>
    <fmt:formatDate type="both" value="${today}" /> <br/>
    
    <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${today}" /> <br/>
   ** :  <fmt:setTimeZone  value="GMT-8"/>
    <fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${today}" /> <br/>
    <fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${today}" /> <br/>
    <fmt:formatDate  pattern="yyyy-MM-dd" value="${today}" /> <br/>   
    <br/>
    
    <fmt:parseNumber var="sayi" integerOnly="true" value="2345,648" />
    <fmt:parseNumber var="sayi1" integerOnly="false" value="154,856" />
    <c:out  value="${sayi}"/> <br/>
    <c:out value="${sayi1}" /> <br/> <br/>
    
    <c:set var="bugun" value="<%=new Date()%>" />
    
    <fmt:formatDate pattern="MM-dd-yyyy" value="${bugun}" /> <br/>
    <fmt:formatDate pattern="dd-MM-yyyy" value="${bugun}" /> <br/>
    <fmt:formatDate pattern="yyyy-MM-dd" value="${bugun}"  /> <br/>
    
    <fmt:setLocale  value="es"/>
    <fmt:formatDate type="both" value="${bugun}" /> <br/>
    
    <fmt:setTimeZone value="GMT-5" />
    <fmt:setLocale value="tr" />
    <fmt:formatDate value="${bugun}" type="both" dateStyle="short" timeStyle="medium"/> <br/>
    
   
    
</body>
</html>
