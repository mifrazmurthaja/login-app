<html>
<head>
    <title>Login Page</title>

    <script src="js/script.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">

    <head>
<body class="temp">
<div class="container">

    <div class="card card-container">
        <img id="profile-img" class="profile-img-card" src="images/propic.png" />
        <p id="profile-name" class="profile-name-card"></p>
        <form class="form-signin" method="post">
            <input type="text" name="username" class="form-control" placeholder="User Name" required autofocus>
            <input type="password" name="password" class="form-control" placeholder="Password" required>
            <div class="checkbox">
                <label style="text-align: center; margin: auto">
                    <input type="checkbox" name="secure_flag" value="secure"> Secure Flag
                    <input type="checkbox" name="httponly_flag" value="httponly"> HTTPOnly Flag
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block btn-signin" name ="submit" type="submit">Sign in</button>
        </form>
    </div>

</div>
</body>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(request.getParameter("submit") != null) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String secure = request.getParameter("secure_flag");
        String httponly = request.getParameter("httponly_flag");
        if ("abc".equals(username) && "123".equals(password)) {
            Cookie uname = new Cookie("mrz", request.getParameter("username"));
            uname.setMaxAge(60*60);
            uname.setDomain("localhost");
            uname.setPath("/");
            boolean secure_stat = false;
            boolean httponly_stat = false;
            if(secure != null)
                secure_stat = true;
            if(httponly != null)
                httponly_stat = true;
            uname.setSecure(secure_stat);
            uname.setHttpOnly(httponly_stat);
            response.addCookie(uname);
            response.sendRedirect("/login-app");
        } else {
            out.println("Failed");
        }
    }
%>
</html>