<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 坏物。
  Date: 2021/12/16
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <h1>客房使用状态</h1>

            <table border="2" cellspacing="0" align="center" width="80%" style="font-size: 20px">

                <tr>
                    <th>客房编号</th>
                    <th>客房类型</th>
                    <th>客房状态</th>
                    <th>客房单价单价（元/天）</th>
                </tr>

                <c:forEach items="${houses}" var="house" varStatus="status">
                    <tr align="center">
<%--                        <td>${house.houseid}</td>--%>
                        <td>${house.housename}</td>
                        <td>${house.housetype}</td>
                        <td>${house.housestatue}</td>
                        <td>${house.houseprice}</td>
                    </tr>
                </c:forEach>
            </table>
            <br/>
<%--            <input type="button" class="checkEmpty" style="display:block;margin:auto"  onclick="fun1()" value="查看空房">--%>

        </div>
    </div>
</div>
<script type="text/javascript">
    function fun1() {
        window.location.href="/homestay/selectAll_EmptyhouseServlet";
    }
</script>
</body>
</html>
