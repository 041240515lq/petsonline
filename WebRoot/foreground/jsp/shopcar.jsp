<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="<%=path %>/background/assets/css/style.css" rel="stylesheet" type="text/css" />
<link href="<%=path %>/background/assets/css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/background/assets/js/jquery.js"></script>
<script type="text/javascript" src="<%=path %>/background/assets/js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="<%=path %>/background/assets/js/select-ui.min.js"></script>
<script type="text/javascript" src="<%=path %>/common/validate.js"></script>
<title>宠物信息</title>
<link href="<%=path %>/foreground/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=path %>/foreground/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="<%=path %>/foreground/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<script src="<%=path %>/foreground/js/jquery.easydropdown.js"></script>	
<script type="text/javascript" src="<%=path %>/background/assets/js/jquery.js"></script>
<script type="text/javascript">
  	$(function(){
  		$(".pageButton").click(function(){
  			goPage(this);
  			
  		});
  		
  		
  	});
  	
  	
  	function goPage(button)
  	{
  		var id=$(button).attr("id");
  		var curr=Number(<s:property value="pageBean.currentPage" />);
  		switch(id)
  		{
  		case "prePage":
  			$("#currentPage").val(--curr+"");
  			break;
  		case "nextPage":
  			$("#currentPage").val(++curr+"");
  			break;
  		} 	
  		$("#form1").submit();
			
  	}
  	
  	</script>
</head>

<body>
  <form action="queryAllShopCarAction.action" id="form1" method="post">
  <input type="hidden" name="pageBean.currentPage" id="currentPage" value="<s:property value="pageBean.currentPage"/>" />
  </form>
	  <!--header-->
	<div class="header" style="background-color:#F0F0F0">
		<div class="container" >
			<div class="header-top" >
			<a href="<%=path%>/login.jsp">
			<s:if test="#session.customer!=null">
			<s:property value="#session.customer.userName"/>
			</s:if>
			<s:else>
			登录
			</s:else>
			</a>&nbsp;&nbsp;
			<a href="<%=path%>/regist.jsp">注册</a>&nbsp;&nbsp;
			<a href="loginOutCustomerAction.action">退出</a>&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<%=path%>/queryPetsQianPetsAction.action?dog=&pageBean.currentPage=1">首页</a>&nbsp;&nbsp;
			<a href="queryAllCollectionAction.action?collection.customer.id=<s:property value="#session.customer.id"/>">我的收藏</a>&nbsp;&nbsp;
			<a href="queryAllShopCarAction.action?shopCar.customer.id=<s:property value="#session.customer.id"/>">我的订单</a>&nbsp;&nbsp;
			</div>
			<div class="header-bottom-bottom">
				<div class="top-nav">
					<span class="menu"> </span>
				</div>	
				<div class="clearfix"> </div>
				</div>
		</div>
	</div>
    <div class="banner-in">
		<div class="container">
		</div>
	</div>
    <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
     <a href="queryAllCommentAction.action?pageBean.currentPage=1&comment.dog=&comment.customer.id=<s:property value="#session.customer.id"/>" class="tablelink">查看所有评价</a>
  	<div id="tab2" class="tabson"><%--
    
    <form action="queryAllmanagerAction.action" method="post">
    <input  type="hidden" name="resultFlg" value=""/>
    <ul class="seachform">
    
    <li><label>用户名</label><input name="manager.username" type="text" value="<s:property value="manager.username"/>" class="scinput" /></li>
    <li><label>姓名</label><input name="manager.realName" type="text" value="<s:property value="manager.realName"/>" class="scinput" />
    </li>
    
    <li><label>&nbsp;</label>
    <input name="" type="submit" class="scbtn" value="查询"/></li>
    <li><label>&nbsp;</label>
    <input name="" type="button" class="scbtn" id="queryAll" value="查询全部"/></li>
    </ul>
</form>    
    
    --%>  <table class="imgtable">
    
    <thead>
    <tr>
    <th width="100px;">缩略图</th>
    <th>宠物类型</th>
    <th>订单数量</th>
    <th>订单日期</th>
    <th>订单号</th>
    <th>订单状态</th>
    <th>收货地址</th>
    <th>操作</th>
    </tr>
    </thead>
    
    <tbody>
    <s:iterator value="pageBean.list" var="order">
    <tr>
    <td class="imgtd"><img src="<%=path %>/uploadFile/<s:property value="#order[1].defaultPicture"/>" width="124px" height="78px" /></td>
    <td><a href="#"><s:property value="#order[1].petsType.smallType"/></a><p></p></td>
    <td><s:property value="#order[0].orderCount"/></td>
    <td><s:date name="#order[0].orderDate" format="yyyy年MM月dd日  HH:mm:ss "/></td>
    <td><s:property value="#order[0].orderId"/></td>
    <td><s:property value="#order[0].status"/></td>
    <td><s:property value="#order[0].address"/></td>
    <td>
    <s:if test="#order[0].status=='已收货'">
    <a href="<%=path %>/foreground/jsp/toCommentShopCarAction.action?shopCar.id=<s:property value="#order[0].id"/>&dog.id=<s:property value="#order[1].id"/>" class="tablelink">去评价</a>
    </s:if>
    <s:if test="#order[0].status=='已评价'">
    <a href="queryAllCommentAction.action?comment.customer.id=<s:property value="#session.customer.id"/>&dog.id=<s:property value="#order[1].id"/>" class="tablelink">查看评价</a>
    </s:if>
    <s:elseif test="#order[0].status=='已发货'">
     <a href="updateOrderShopCarAction.action?toJsp=queryAll&shopCar.id=<s:property value="#order[0].id"/>&shopCar.status=0" class="tablelink">确认收货</a>
    </s:elseif>
     <s:elseif test="#order[0].status=='未发货'">
     <a href="#" class="tablelink">提醒发货</a>
    </s:elseif>
    </td>
    </tr>
    </s:iterator>
    
    
    
    </tbody>
    
    </table>
    
    
    
    
    
   
    <div class="pagin">
    	<div class="message">共<i class="blue"><s:property value="pageBean.total"/></i>条记录，当前显示第&nbsp;<i class="blue"><s:property value="pageBean.currentPage"/>&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem pageButton" id="prePage"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem pageButton" id="nextPage"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    
  
    
    </div>  
       
	</div> 
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
    
    
    
    
    
    </div>
    	<!--footer-->
			<div class="footer">
				<div class="container">
				 <p class="footer-grid">Copyright &copy; 2016.PetsOnline All rights reserved.</p>
			 	</div> 	
			</div>
      
    
  
    


</body>

</html>