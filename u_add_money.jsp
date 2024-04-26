<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Money</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-yanone.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script type="text/javascript" language="javascript" >      <!--Start Reg Validation Jai Siddalinga-->
function valid()
{
var na3=document.s.accno.value;
if(na3=="")

{
alert("Please Enter Account number");
document.s.accno.focus();
return false;
}
else
{

}
var na4=document.s.amount.value;
if(na4=="")

{
alert("Please Enter Amount");
document.s.amount.focus();
return false;
}
}
</script>


<style type="text/css">
<!--
.style5 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #0000FF;
}
.style9 {font-size: 18px; }
.style10 {font-size: 20px}
.style11 {color: #0000FF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Hybrid Recommender System for Tourism Based on Big Data and AI A Conceptual Framework</a></h1>
      </div>
     
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="a_login.jsp"><span>Admin</span></a></li>
          <li><a href="s_login.jsp"><span>Service Provider</span></a></li>
          <li><a href="v_login.jsp"><span>Vehicle SP</span></a></li>
          <li class="active"><a href="u_login.jsp"><span>End User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center">Add Money</h2>
		  <p>&nbsp;</p>
		  
		  








<% String type=request.getParameter("type"); %>		  
		  
<form name="s" action="u_add_money_ins.jsp?type=<%=type%>" method="post" onSubmit="return valid()"  ons target="_top"> 
                        
						<p align="center"><span class="style14 style19 style20 style10 style5">
						  <label for="name">Account Number(required)</label>
						  </span></p>
						<p align="center" class="style5">
                          <input type="text"  name="accno" class="text" />
                        </p>
						
                        <P align="center"> <span class="style14 style19 style20 style5 style10 style11">
                          <label for="amount">Amount (required)</label>
                        </span> </P>
                        <p align="center">
                          <input type="text"  name="amount" class="text" />
                        </p>
                       
                        <p align="center" ><br />
                          <input name="submit" type="submit" value="Add" />
                        </p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
  </form>
  
  <%
			
			if(type.equalsIgnoreCase("one"))
			{
			  %><p align="right"><a href="u_accounts.jsp" class="style9">Back</a></p>
  <%
			}
            else if(type.equalsIgnoreCase("two"))
			{
			%><p align="right"><a href="u_view_tourist_spots.jsp" class="style9">Back</a></p><%
			}
			else if(type.equalsIgnoreCase("three"))
			{
			%><p align="right"><a href="u_view_vehicles.jsp" class="style9">Back</a></p><%
			}
			else if(type.equalsIgnoreCase("four"))
			{
			%><p align="right"><a href="u_view_tourist_spots.jsp" class="style9">Back</a></p><%
			}
			
  %>













		  
		  
		  
		  
		  
		  
         
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User </span>MENU</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="u_main.jsp"><span>User Main</span></a></li>
            <li><a href="u_login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
