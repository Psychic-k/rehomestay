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
        <li><a href="index.jsp" id="home"><b>首页</b></a></li>
        <li><a href="/homestay/selectAll_HouseServlet" ><b>住房状态</b></a></li>
        <li><a href="checkIn.jsp" ><b>入住登记</b></a></li>
        <li><a href="/homestay/selectAll_ClientServlet" ><b>订单详情</b></a></li>
        <li><a href="checkOut.jsp" ><b>退房管理</b></a></li>
        <li><a href="/homestay/selectAll_MessageServlet" ><b>留言管理</b></a></li>
        <li><a href="/homestay/selectAll_RepairServlet" ><b>报修管理</b></a></li>
        <li><a href="/homestay/selectAll_NoticeServlet" ><b>公告详情</b></a></li>
    </ul>
</div>

<%--最顶栏--%>
<div id="Topline">
    <%--    <img id="indexPng" src="imgs/index.png" alt="">--%>
    <%--    <a href="#" id="homepage">首页</a>
        <p>首页</p>--%>
    <div id="headImg"><img src="imgs/admin.png" id="txt" alt=""></div>
    <p id="time"></p>
    <h2>前台&nbsp;&nbsp;</h2>
    <button type="button" id="quit" onclick="quit()">退出</button>
</div>

<div id="MainArea">
    <div id="Main_Area2">
        <div class="mb">
            <h1>入住登记</h1>
            <form name="form1" method="post" action="/homestay/addClient_Servlet" autocomplete="off" onsubmit=show()>
<%--                <label>
                    客户编号：
                    <input type="text" name="clientid" required />
                </label>--%>
                <br />
                <label>姓&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 名：
                    <input type="text" name="clientname" required />
                </label>
                <br />
                <label>性&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 别：
                    <input type="text" name="sex" required />
                </label>
                <br />
                <label>电&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 话：
                    <input type="text" name="tell" required />
                </label>
                <br />
                <label>身份证号：
                    <input type="text" name="idcard" required />
                </label>
                <br />
                <label>入住民宿：
                    <input type="text" name="houseid" required />
                </label>
                <br />
                <label>入住时间：
                    <input type="text" name="checkin" required />
                </label>
                <br />
                <label>退房时间：
                    <input type="text" name="checkout" required />
                </label>
                <br />
                <br/>
                <input type="submit" class="checkbutton" value="提交入住">
            </form>
        </div>
    </div>
</div>

<div>

</div>
</body>
</html>
