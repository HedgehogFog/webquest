<%@ page import="data.Data" %>
<%@ page import="model.User" %>
<!DOCTYPE html>
<html>
<head>
    <%@ page contentType="text/html;charset=utf-8" %>

    <meta charset="UTF-8">
    <title>title</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%
    User current = new User(request.getRemoteAddr());
    boolean isHave = false;
    for (User user : Data.getInstance().getUsers()) {
        System.out.println(current.getIpAddress() + "==" + user.getIpAddress());
        if (user.equals(current.getIpAddress())){
            isHave = true;
            break;
        }
    }
    if (!isHave) {
        current.setCoins(10);
        Data.getInstance().getUsers().add(current);
        System.out.println("Add");
    } else{
        System.out.println("NOT ADD");
    }
%>
<p class="texmaintzag" >SELECT MODE</p>
<table>
    <tr>
        <td><a href="DoU.html"><img width="246" height="368" src="img/piximon.jpg"> </a></td>
        <td><a href="love2.jpg"><img width="246" height="368" src="img/b.jpg"> </a></td>
    </tr>
    <tr>
        <td class="textzag"><a href="DoU.html">CLASSIC<br>MODE </a></td>
        <td class="textzag"><a href="img/love2.jpg">POP<br>MODE </a></td>
    </tr>
</table>
<p lang="ru" title="Научно-исследовательский институт имени По (Эдгара Аллана По)"> <img id="nepo" src="img\hepo.png">  </p>
</body>
</html>
