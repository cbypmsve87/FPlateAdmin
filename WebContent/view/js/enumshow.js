/*jQuery JavaScript Library v1.9.1*/
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
