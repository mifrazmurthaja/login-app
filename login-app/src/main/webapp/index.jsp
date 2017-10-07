<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/script.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <script>
        function show_cookie() {
            alert(document.cookie);
        }
    </script>
</head>
<body class="temp">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header right">
                <span class="glyphicon glyphicon-log-out"></span>
                <form>
                <button type="submit" name="logout" class="btn btn-primary pointer">Logout</button>
                </form>
            </div>
        </div>
    </nav>

    <div class="container-fluid text-center">
        <div class="row content">
            <div class="col-sm-2">
            </div>
            <div class="col-sm-8 text-center">
                <h1>Welcome</h1>
                <input type="button" class="btn btn-info" style="margin: 10px" onclick="show_cookie()" value="View Cookie"/>
                <%

                    //Get all the cookies and store it in the array named "cookies"
                    Cookie[] cookies = request.getCookies();

                    //When the logout button is clicked
                    if(request.getParameter("logout") != null) {

                        //Invalidate the session.
                        session.invalidate();
                        if(cookies != null) {
                            for (Cookie cookie : cookies) {

                                //Capture the cookie "mrz" which we created when the user signing in
                                if (cookie.getName().equals("mrz")) {

                                    cookie.setMaxAge(0); //Make the cookie expired
                                    cookie.setValue(null); //Unset the value of cookie
                                    cookie.setPath("/");
                                    response.addCookie(cookie); //Replace the cookie to save the changes
                                }
                            }
                        }

                        //Redirect the user to the login page
                        response.sendRedirect("login.jsp");
                    }

                    boolean login_status = false;
                    if(cookies != null)
                    {
                        for (Cookie cookie : cookies){
                            if (cookie.getName().equals("mrz"))
                            {
                                login_status = true;
                                out.println(""+
                                        "<table class='cookie_table center'>"+
                                            "<tr>"+
                                                "<th>Property</th>"+
                                                "<th>Value</th>"+
                                            "</tr>"+
                                            "<tr>"+
                                                "<td>Name</td>"+
                                                "<td>"+cookie.getName()+"</td>"+
                                            "</tr>"+
                                            "<tr>"+
                                                "<td>Value</td>"+
                                                "<td>"+cookie.getValue()+"</td>"+
                                            "</tr>"+
                                            "<tr>"+
                                                "<td>Max Age</td>"+
                                                "<td>"+cookie.getMaxAge()+"\t(Cannot retrieve - Check the cookie header)</td>"+
                                            "</tr>"+
                                            "<tr>"+
                                                "<td>Domain</td>"+
                                                "<td>"+cookie.getDomain()+"\t(Cannot retrieve - Check the cookie header)</td>"+
                                            "</tr>"+
                                            "<tr>"+
                                                "<td>Path</td>"+
                                                "<td>"+cookie.getPath()+"\t(Cannot retrieve - Check the cookie header)</td>"+
                                            "</tr>"+
                                            "<tr>"+
                                                "<td>Secure Flag</td>"+
                                                "<td>(Cannot retrieve - Check the cookie header)</td>"+
                                            "</tr>"+
                                                "<tr>"+
                                                "<td>HTTPOnly</td>"+
                                                "<td>(Cannot retrieve - Check the cookie header)</td>"+
                                            "</tr>"+
                                        "</table>");
                            }
                        }
                        if(!login_status)
                        {
                            response.sendRedirect("login.jsp");
                        }
                    }
                    else
                    {
                        response.sendRedirect("login.jsp");
                    }
                %>
            </div>
            <div class="col-sm-2">
                <div class="well">
                </div>
                <div class="well">
                </div>
            </div>
        </div>
    </div>

    <footer class="container-fluid text-center">
        <p>Powered By <a href="https://mrzportal.blogspot.com">MRZPortal</a></p>
    </footer>


</body>
</html>
