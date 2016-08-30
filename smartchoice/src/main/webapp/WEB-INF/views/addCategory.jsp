<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smartchoice Online Store</title>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
</head>
<body  class="w3-container">
<form:form  modelAttribute="addCategory" action="addCategory" >
<form:errors path="*" cssStyle="Color:RED"></form:errors>
<fieldset>
        
        <p>
            <label for="type"><spring:message code="category.type" /> </label>
            <br>
            <form:input path="type" id="type"  class="w3-input w3-border w3-round" style="width: 250px;border-color: blue;" />
            
        </p>    
        <p id="buttons">
            <input name="reset" type="reset" class="w3-btn w3-white w3-border w3-border-blue w3-round"  >
            <input name="submit" type="submit"  value="Add Category" class="w3-btn w3-white w3-border w3-border-blue w3-round" >
        </p>
       
    </fieldset>

</form:form>
<%@ include file="footer.jsp" %>