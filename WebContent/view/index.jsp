﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
	<title>简洁Bootstrap响应式后台管理系统模板下载</title>	
	<meta name="keywords" content="Bootstrap模板,Bootstrap3模版,Bootstrap模板下载,Bootstrap后台模板,Bootstrap教程,Bootstrap中文,后台管理系统模板,后台模板下载,后台管理系统,后台管理模板" />
	<meta name="description" content="JS代码网提供Bootstrap模板,后台管理系统模板,后台管理界面,Bootstrap后台板版下载" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/site.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
	<!--[if lte IE 8]><script src="js/excanvas.min.js"></script><![endif]-->
    <style type="text/css">
    html, body {
        height: 100%;
    }
    </style>
  </head>
  <body>
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">焦点通</a>
          <div class="btn-group pull-right">
			<a class="btn" href="my-profile.html"><i class="icon-user"></i>Admin</a>
            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
              <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
			  <li><a href="my-profile.html">个人资料</a></li>
              <li class="divider"></li>
              <li><a href="#">退出</a></li>
            </ul>
          </div>
          <div class="nav-collapse">
            <ul class="nav">
			<li><a href="index.html">首页</a></li>
              <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">用户 <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="new-user.html">新建用户</a></li>
					<li class="divider"></li>
					<li><a href="users.html">管理用户</a></li>
				</ul>
			  </li>
              <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">角色 <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="new-role.html">新建角色</a></li>
					<li class="divider"></li>
					<li><a href="roles.html">管理角色</a></li>
				</ul>
			  </li>
			  <li><a href="stats.html">统计</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
			 <ul id="enum" class="nav nav-list">
			 </ul>
          </div>
        </div>
        <div class="span9">
		  <div class="row-fluid">
			<div class="page-header">
				<h1>网站统计 <small></small></h1>
			</div>
			<div id="placeholder" style="width:80%;height:300px;"></div>
			<br />
			<div id="visits" style="width:80%;height:300px;"></div>
		  </div>
        </div>
      </div>

      <hr>

      <footer class="well">
        &copy; Admin
      </footer>

    </div>

    <script src="js/jquery.js"></script>
	<script src="js/jquery.flot.js"></script>
	<script src="js/jquery.flot.resize.js"></script>	
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
    $(document).ready(function(){
	   $("#enum").empty();
       str = "<li class='nav-header'><i class='icon-wrench'></i> 管理</li>" +
             "<li><a href='users.html'>用户</a></li>" +
             "<li><a href='roles.html'>角色</a></li>" +
             "<li><a href='org.html'>机构</a></li>" +
             "<li><a href='roles.html'>权限</a></li>" +
             "<li class='nav-header'><i class='icon-signal'></i> 审核</li>" +
             "<li><a href='#'>资料录入</a></li>" +
             "<li><a href='#'>资讯报告</a></li>" +
			 "<li><a href=''#'>精准报告</a></li> "+
             "<li class='nav-header'><i class='icon-user'></i> 资料</li>" +
             "<li><a href='my-profile.html'>我的资料</a></li>" +
             "<li><a href='#'>设置</a></li>" +
			 "<li><a href=''#'>退出</a></li> ";
       $("#enum").append(str);
   });
    </script>


   
	<script>
	$(function () {
		var data = [
		{
			label: 'Page Views',
			data: [[0, 19000], [1, 15500], [2, 11100], [3, 15500]]
		}];
		var dataVisits = [
		{
			label: 'Visits',
			data: [[0, 1980], [1, 1198], [2, 830], [3, 1550]]
		}];
		var options = {
			legend: {
				show: true,
				margin: 10,
				backgroundOpacity: 0.5
			},
			points: {
				show: true,
				radius: 3
			},
			lines: {
				show: true
			},
			grid: {
				borderWidth:1,
				hoverable: true
			},
			xaxis: {
				axisLabel: 'Month',
				ticks: [[0, 'Jan'], [1, 'Feb'], [2, 'Mar'], [3, 'Apr'], [4, 'May'], [5, 'Jun'], [6, 'Jul'], [7, 'Aug'], [8, 'Sep'], [9, 'Oct'], [10, 'Nov'], [11, 'Dec']],
				tickDecimals: 0
			},
			yaxis: {
				tickSize:1000,
				tickDecimals: 0
			}
		};
		var optionsVisits = {
			legend: {
				show: true,
				margin: 10,
				backgroundOpacity: 0.5
			},
			bars: {
				show: true,
				barWidth: 0.5,
				align: 'center'
			},
			grid: {
				borderWidth:1,
				hoverable: true
			},
			xaxis: {
				axisLabel: 'Month',
				ticks: [[0, 'Jan'], [1, 'Feb'], [2, 'Mar'], [3, 'Apr'], [4, 'May'], [5, 'Jun'], [6, 'Jul'], [7, 'Aug'], [8, 'Sep'], [9, 'Oct'], [10, 'Nov'], [11, 'Dec']],
				tickDecimals: 0
			},
			yaxis: {
				tickSize:1000,
				tickDecimals: 0
			}
		};
		function showTooltip(x, y, contents) {
			$('<div id="tooltip">' + contents + '</div>').css( {
				position: 'absolute',
				display: 'none',
				top: y + 5,
				left: x + 5,
				border: '1px solid #D6E9C6',
				padding: '2px',
				'background-color': '#DFF0D8',
				opacity: 0.80
			}).appendTo("body").fadeIn(200);
		}
		var previousPoint = null;
		$("#placeholder, #visits").bind("plothover", function (event, pos, item) {
			if (item) {
				if (previousPoint != item.dataIndex) {
					previousPoint = item.dataIndex;

					$("#tooltip").remove();
					showTooltip(item.pageX, item.pageY, item.series.label + ": " + item.datapoint[1]);
				}
			}
			else {
				$("#tooltip").remove();
				previousPoint = null;            
			}
		});
		$.plot( $("#placeholder") , data, options );
		$.plot( $("#visits") , dataVisits, optionsVisits );
	});
	</script>
  </body>
</html>

