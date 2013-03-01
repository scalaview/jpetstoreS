<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="stripes"
	uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="description" content="">
<meta name="keywords" content="">
<meta http-equiv="pragma" content="no-cache" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Find Job-index</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="shortcut icon" href="images/log.ico" />
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/bootstrap-collapse.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#search-hidden").hide();
	$("#advenced_search").click(function(){
		if($("#search-hidden").css('display') == 'none'){
			$("#search-hidden").show();
		}
		else{
			$("#search-hidden").hide();
		}
	});
});
</script>
<!--[if IE]>
<link href="css/ie.css" rel="stylesheet">
<![endif]-->
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<link href="css/ie9.css" rel="stylesheet">
<![endif]-->
<!--[if IE 8]>
<link href="css/ie8.css" rel="stylesheet">
<![endif]-->
<!--[if IE 7]>
<link href="css/ie7.css" rel="stylesheet">
<![endif]-->
<!--[if IE 6]>
<link href="css/ie6.css" rel="stylesheet">
<![endif]-->
</head>
<body class="index">
<div class="header">
		<div class="navbar">
		    <div class="navbar-inner">
		  		<div class="container">
					
					<div class="clearfix">
			    		<a class="brand" href="index.html" title="Find Job"><img src="<%=path%>/images/logo.png"></a>
						<div>
							<stripes:form beanclass="jobserach.action.JobSearchActionBean">
								<div class="search_fields">
									<input id="search" type="text" name="query" value="" class="input-text" maxlength="100" placeholder="职位或公司名称"/>
									<input id="search" type="text" name="position" value="" class="input-text" maxlength="100" placeholder="工作地点"/>
									<button type="submit" name="newOrder" class="btn btn-primary">搜索工作</button>
									<button id="advenced_search" class="btn btn-advanced btn-navbar" type="button" data-toggle="collapse" data-target=".nav-collapse">高级搜索</button>
								</div>
							</stripes:form>
						</div>
					</div>
					<form class="advanced nav-collapse" id="search-hidden">
						<div class="row">
						    <div class="span3">
							    <label>职位类别</label>
							    <select class="span3">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
						    </div>
						    <div class="span3">
							    <label>行业类别</label>
							    <select class="span3">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
						    </div>
						    <div class="span3">
							    <label>发布时间</label>
							    <select class="span3">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
						    </div>
						    <div class="span3">
							    <label>工作地点</label>
							    <select class="span3">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
						    </div>
						</div>
						<div class="row">
						    <div class="span3">
							    <label>工作经验</label>
							    <select class="span3">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
						    </div>
						    <div class="span3">
							    <label>学历要求</label>
							    <select class="span3">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
						    </div>
						    <div class="span3">
							    <label>公司性质</label>
							    <select class="span3">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
						    </div>
						    <div class="span3">
							    <label>公司规模</label>
							    <select class="span3">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
						    </div>
						</div>
						<div class="search-btn"><button type="submit" class="btn btn-primary">搜工作</button></div>
					</form>
		    	</div>
		    </div>
		</div>
</div>