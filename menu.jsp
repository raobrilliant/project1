<%@ page language="java" %>
<!doctype html>
<html>
<head><title>Session Example</title><meta charset="utf-8"></head>
<script src="jquery-3.1.1.min.js"></script>
<style type="text/css">
#container { background:brown;border-radius:12px; }
#contaner ul { list-style:none; }
#container ul li { display:inline-block; font-size:24px; padding:12px; }
#container ul li:hover { background:rgba(0,155,0,0.8); color:white; }
#container ul li ul li { display:block;  }
#container ul li a { text-decoration:none; color:white; }
#container ul li ul { display:none; border-radius:8px; position:absolute; background:brown; widht:120px; }
#container ul li ul li {padding:10px; text-align:left; }
#container ul li ul li:hover { background:brown; }
</style>
<script type="text/javascript">
$(document).ready(function() {
	$("#container ul li").hover(function() {
	$(this).children("#container ul li ul").slideDown("slow"); },
	function() {
	$(this).children("#container ul li ul").slideUp("slow"); }) })
</script>
<body>
<div id="container">
<ul>
   <li>Home</li>
   <li>Products
      <ul>
         <li>Web Designing</li>
         <li>Web Development</li>
         <li>Mobile Apps</li>
      </ul>
   </li>
   <li>Training
      <ul>
        <li>Hardware</li>
        <li>Technical</li>
        <li>Software</li>
      </ul>
   </li>
   <li>User
      <ul>
        <li><a href="count.jsp" target="fr1">Login</a></li>
        <li>Signup</li>
      </ul>
   </li>
</ul>
</div>
</body>
</html>