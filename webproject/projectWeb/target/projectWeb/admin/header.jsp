<%@ page import="vn.edu.hcmuaf.fit.bean.User" %><%--
  Created by IntelliJ IDEA.
  User: MyPC
  Date: 12/16/2022
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<% User user =(User) session.getAttribute("auth");%>
<header class="app-header">
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
        <li><a class="app-nav__item" style="background-color: var(--primary);color: white;" href="/index.jsp"><i class="fa-solid fa-right-from-bracket"></i></a>

        </li>
        <li><a class="app-nav__item" style="background-color: var(--primary);color: white;" ><i class="fa-regular fa-comment"></i> </a></li>
        <li><a class="app-nav__item" style="background-color: var(--primary);color: white;" ><i class="fa-regular fa-bell"></i> </a></li>
        <div class="col-divide" style="background-color: rgb(185, 185, 185); width: 0.05rem;height: 100%; margin-right: 1rem;"></div>
        <li>
            <div class="app-header_user">
                <span class="app-header_user-name"><b>Admin</b></span>
                <img class="app-header_user-avatar" src="../assets/images/guide/guide-md10.png"
                     alt="User Image">


            </div>
        </li>

        <!-- User Menu-->
    </ul>
</header>


</body>
</html>
