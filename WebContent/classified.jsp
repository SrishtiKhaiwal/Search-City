
<html >
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Search City</title>
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery.gallerax-0.2.js"></script>
<style type="text/css">
@import "gallery.css";
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">city search</a></h1>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
		<%@include file="header.jsp" %> 
	</div>
	
	<div id="banner"><img src="images/img03.jpg" width="1000" height="361" alt="" /></div>
	<div id="welcome">
	<%@include file="coockie.jsp" %>
		<h2 class="title"><a href="#">Welcome to City Search</a></h2>
		<div class="entry">
			<p>This is <strong>City Search </strong></p></div></div>
	
	</div>
	
	<div id="three-columns">
		<div id="column1">
			<p><jsp:include page="left.html"></jsp:include></p>
		</div>
		<div id="column2">
<%
String slogin=(String)session.getAttribute("islogin");
if(slogin==null){
request.setAttribute("notlogin_msg","Sorry, Login first for classified");
%>
<jsp:forward page="login.jsp"></jsp:forward>
<%
}
%>
 
<h1>Post classified!</h1>

<form action="classifiedprocess.jsp">
<table>
<tr>
<td>Type</td>
<td><select name="type">
<option>buy</option>
<option>sell</option>
</select></td>
</tr>
<tr><td>Name</td><td><input type="text" name="name"/></td></tr>
<tr><td>Description</td><td><textarea name="description" rows="10" cols="30"></textarea></td></tr>
<tr><td><input type="submit" value="post feed" align="middle"/></td></tr>
</table>
</form>
<br/><br/><br/><br/>
	</div>
		<div id="column3">
			<h2>Top City</h2> 
			<p><jsp:include page="right.html"></jsp:include></p>
		</div>
	</div>
	
	
</div>
<div id="footer">
	<p>Copyright (c) 2020 SearchCity.com </p>
</div>
</body></html>

