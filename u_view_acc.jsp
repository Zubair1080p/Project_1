<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View My Account</title>
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
.style9 {font-size: 18px; }
.style10 {color: #000000}
.style11 {font-family: "Times New Roman", Times, serif}
.style12 {color: #0000FF}
.style13 {font-size: 20px}
.style14 {font-family: "Times New Roman", Times, serif; font-size: 20px; }
.style15 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #000000; }
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
          <h2 align="center">View My Account</h2>
		  <p>&nbsp;</p>
		  
		  

<table width="374" border="2" align="center"  cellpadding="0" cellspacing="0"  >
                       
<%@ include file="connect.jsp" %>
 <%@ page import="java.sql.*"%>						
                        <%
						
						String user=(String )application.getAttribute("user");
						
						String i,s1,s2,s3,s4,s5,s6;
						int j=0;
						 
						try 
						{
						   	String query="select * from account where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString(2);
								s1=rs.getString(3);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								
								
								
								
								
								
					%>
                        <tr>
                          <td  width="144" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style3 style4 style21 style14 style15 style16 style17 style18 style9 style11 style12" style="margin-left:20px;">Account Number </div></td>
                          <td  width="222" height="40" valign="middle" bgcolor="#00FFFF" style="color:#000000;"><div align="left" class="style23 style3 style18 style19 style11 style13 style10" style="margin-left:20px;">
                              <%out.println(i);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td  width="144" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style3 style4 style21 style14 style15 style16 style17 style18 style9 style11 style12" style="margin-left:20px;">User Name </div></td>
                          <td  width="222" height="40" valign="middle" bgcolor="#00FFFF"><div align="left" class="style23 style3 style18 style19 style11 style13 style10" style="margin-left:20px;">
                              <%out.println(s1);%>
                          </div></td>
                        </tr>
                        <tr>
                          <td  width="144" height="40" align="left" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style3 style4 style21 style14 style15 style16 style17 style18 style9 style11 style12" style="margin-left:20px;">Location</div></td>
                          <td  width="222" height="40" align="left" valign="middle" bgcolor="#00FFFF"><div align="left" class="style23 style3 style18 style19 style11 style13 style10" style="margin-left:20px;">
                              <%out.println(s2);%>
                          </div></td>
                        </tr>
						
                        <tr>
                          <td  width="144" height="40" align="left" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style3 style4 style21 style14 style15 style16 style17 style18 style9 style11 style12" style="margin-left:20px;">Email</div></td>
                          <td  width="222" height="40" align="left" valign="middle" bgcolor="#00FFFF"><div align="left" class="style23 style3 style18 style19 style11 style13 style10" style="margin-left:20px;">
                              <%out.println(s3);%>
                          </div></td>
                        </tr>
						
                        <tr>
                          <td height="51" align="left" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style3 style4 style21 style14 style15 style16 style17 style18 style9 style11 style12" style="margin-left:20px;">Mobile</div></td>
                          <td height="51" align="left" valign="middle" bgcolor="#00FFFF"><div align="left" class="style23 style3 style18 style19 style11 style13 style10" style="margin-left:20px;">
                              <%out.println(s4);%>
                          </div></td>
                        </tr>
						
                        <tr>
                          <td height="51" align="left" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style3 style4 style21 style14 style15 style16 style17 style18 style9 style11 style12" style="margin-left:20px;">Branch</div></td>
                          <td height="51" align="left" valign="middle" bgcolor="#00FFFF"><div align="left" class="style23 style3 style18 style19 style11 style13 style10" style="margin-left:20px;">
                              <%out.println(s5);%>
                          </div></td>
                        </tr>
                        <tr>
                        <tr>
                          <td height="51" align="left" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style3 style4 style21 style14 style15 style16 style17 style18 style9 style11 style12" style="margin-left:20px;">Amount</div></td>
                          <td  width="222" height="51" align="left" valign="middle" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="left">
                              <div align="left" class="style23 style3 style18 style19 style11 style13 style10" style="margin-left:20px;">
                                <span class="style20"><%out.println(s6);%></span> </div></td>
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
<p align="right"><a href="u_accounts.jsp" class="style9">Back</a></p>		  
		  
         
          
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
