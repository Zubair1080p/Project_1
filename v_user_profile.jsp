<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Profile</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-yanone.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<style type="text/css">
<!--
.style6 {font-family: "Times New Roman", Times, serif}
.style14 {font-size: 20px}
.style19 {font-size: 18px}
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
          <li class="active"><a href="v_login.jsp"><span>Vehicle SP</span></a></li>
          <li><a href="u_login.jsp"><span>End User</span></a></li>
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
          <h2 align="center">User Profile</h2>
		  <p>&nbsp;</p>
		  
		  


<table width="614" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%
						
						String user=request.getParameter("user");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14;
						int i=0;
						try 
						{
						   	String query="select * from user where name='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//email
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);//loc
								s11=rs.getString(11);//image
								s12=rs.getString(12);
								
								
								
								
								
%>
        
		
		<tr>
          <td width="230" rowspan="6" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
              <input  name="image" type="image" src="u_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;">
          </a></div></td>
        </tr>
		
        <tr>
          <td  width="157" height="40" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style7 style11 style15 style18 style9 style2 style14" style="margin-left:20px;; color: #000000;; font-family: &quot;Times New Roman&quot;, Times, serif; color: #000000;">Name</div></td>
          <td  width="219" height="40" valign="middle" bgcolor="#CC3300" style="color:#000000;"><div align="left" class="style23 style7 style15 style18 style9 style11 style14 style6" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;; color: #FFFFFF;">
            <%out.println(s2);%>
          </div></td>
        </tr>
		
        <tr>
          <td  width="157" height="40" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style7 style11 style15 style18 style9 style2 style14" style="margin-left:20px;; color: #000000;; font-family: &quot;Times New Roman&quot;, Times, serif; color: #000000;">E-Mail</div></td>
          <td  width="219" height="40" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style7 style15 style18 style9 style11 style14 style6" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;; color: #FFFFFF;">
            <%out.println(s4);%>
          </div></td>
        </tr>
        <tr>
          <td  width="157" height="40" align="left" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style7 style11 style15 style18 style9 style2 style14" style="margin-left:20px;; color: #000000;; font-family: &quot;Times New Roman&quot;, Times, serif; color: #000000;">Mobile</div></td>
          <td  width="219" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style7 style15 style18 style9 style11 style14 style6" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;; color: #FFFFFF;">
            <%out.println(s5);%>
          </div></td>
        </tr>
        <tr>
          <td  width="157" height="40" align="left" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style7 style11 style15 style18 style9 style2 style14" style="margin-left:20px;; color: #000000;; font-family: &quot;Times New Roman&quot;, Times, serif; color: #000000;">Address</div></td>
          <td  width="219" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style7 style15 style18 style9 style11 style14 style6" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;; color: #FFFFFF;">
            <%out.println(s6);%>
          </div></td>
        </tr>
         <tr>
          <td  width="157" height="40" align="left" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style7 style11 style15 style18 style9 style2 style14" style="margin-left:20px;; color: #000000;; font-family: &quot;Times New Roman&quot;, Times, serif; color: #000000;">DOB</div></td>
          <td  width="219" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style7 style15 style18 style9 style11 style14 style6" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;; color: #FFFFFF;">
            <%out.println(s7);%>
          </div></td>
        </tr>
		<tr>
		  <td></td>
          <td  width="157" height="40" align="left" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style7 style11 style15 style18 style9 style2 style14" style="margin-left:20px;; color: #000000;; font-family: &quot;Times New Roman&quot;, Times, serif; color: #000000;">Gender</div></td>
          <td  width="219" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style7 style15 style18 style9 style11 style14 style6" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;; color: #FFFFFF;">
            <%out.println(s8);%>
          </div></td>
        </tr>
		
		<tr>
		  <td></td>
          <td  width="157" height="70" align="left" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style7 style11 style15 style18 style9 style2 style14" style="margin-left:20px;; color: #000000;; font-family: &quot;Times New Roman&quot;, Times, serif; color: #000000;">Location</div></td>
          <td  width="219" height="70" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style7 style15 style18 style9 style11 style14 style6" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;; color: #FFFFFF;">
            <%out.println(s9);%></div>		  </td>
        </tr>
		
		
		
		
		<tr>
		  <td></td>
          <td  width="157" height="40" align="left" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style7 style11 style15 style18 style9 style2 style14" style="margin-left:20px;; color: #000000;; font-family: &quot;Times New Roman&quot;, Times, serif; color: #000000;">Status</div></td>
          <td  width="219" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style14 style7 style15 style18 style9 style11 style6" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;; color: #FFFFFF;">
            <%out.println(s12);%>
          </div></td>
        </tr>
		
		
		
        <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
</table>		  
		  
<p>&nbsp;</p>		  
<%
String type=request.getParameter("type");		  
if(type.equalsIgnoreCase("one"))
		{
		%><p align="right"><a href="v_booked_cust.jsp" class="style9 style19">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("two"))
		{
		%><p align="right"><a href="vvv.jsp" class="style9 style19">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("three"))
		{
		%><p align="right"><a href="vvv.jsp" class="style9 style19">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("four"))
		{
		%><p align="right"><a href="vvv.jsp" class="style9 style19">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("five"))
		{
		%><p align="right"><a href="vvv.jsp" class="style9">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("six"))
		{
		 String pname=request.getParameter("pname");
		 String place=request.getParameter("place");
		%><p align="right"><a href="a_all_posts1.jsp?pname=<%=pname%>&place=<%=place%>" class="style9">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("seven"))
		{
		%><p align="right"><a href="vvv.jsp" class="style9">Back</a></p>
<%
		}
		
		  
%>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
          
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Vehicle SP</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="v_main.jsp"><span>Vehicle SP Main</span></a></li>
            <li><a href="v_login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
