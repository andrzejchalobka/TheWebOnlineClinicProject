<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>GRATULACJE SIE ZAREJESTROWALES</title>
</head>
<body>
${successMessage}<br>

Użytkownik o imieniu ${user.name} zalogwał się w naszej bazie.<br>

Proszę sprawdź swój adres mejlowy ${user.email} wyslalismy na niego potwierdzenie<br>


</body>
</html>
