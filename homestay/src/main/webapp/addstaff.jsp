<%--
  Created by IntelliJ IDEA.
  User: 坏物。
  Date: 2021/12/16
  Time: 23:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>窝趣公寓门店管理系统</title>
    <link rel="stylesheet" href="css/index.css">
    <script type="text/javascript" src="js/airbnb.js"></script>
</head>
<body onload="starclear();username()">
<div id="logo">
    <img src="./imgs/logo_white.png" id="logo1" alt="">
</div>

<!--主界面左侧菜单-->
<div id="Menue">
    <ul>
        <li><a href="index_boss.jsp" id="home"><b>首页</b></a></li>
        <li><a href="/homestay/selectAll_StaffServlet" ><b>员工管理</b></a></li>
        <li><a href="/homestay/checkAll_HouseServlet" ><b>客房管理</b></a></li>
        <li><a href="/homestay/selectAll_ProfitServlet" ><b>年度报表</b></a></li>
        <li><a href="notice_boss.jsp" ><b>公告管理</b></a></li>
    </ul>
</div>

<%--最顶栏--%>
<div id="Topline">
    <%--    <img id="indexPng" src="imgs/index.png" alt="">--%>
    <%--    <a href="#" id="homepage">首页</a>
        <p>首页</p>--%>
    <div id="headImg"><img src="imgs/boss.png" id="txt" alt=""></div>
    <p id="time"></p>
    <h2>BOSS&nbsp;&nbsp;</h2>
    <button type="button" id="quit" onclick="quit()">退出</button>
</div>

<div id="MainArea">
    <div id="Main_Area2">
        <div class="mb">
            <h1>新增员工</h1>
            <form name="form1" method="post" action="/homestay/addStaff_Servlet" autocomplete="off" onsubmit=show()>

                <br />
                <label>职&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp务：
                    <input type="text" name="duty" required />
                </label>
                <br />
                <label>姓&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp名：
                    <input type="text" name="name" required />
                </label>
                <br />
                <label>年&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp龄：
                    <input type="text" name="age" required />
                </label>
                <br />
                <label>性&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp别：
                    <input type="text" name="sex" required />
                </label>
                <br />
                <label>任&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp期：
                    <input type="text" name="tenure" required />
                </label>
                <br />
                <label>薪&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp资：
                    <input type="text" name="salary" required />
                </label>
                <br/>
                <br/>
                <input type="submit" class="checkbutton" value="提交新增">
            </form>
        </div>
    </div>
</div>

<div>

</div>
</body>
</html>
