<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View My Booked Vehicles</title>
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
.style8 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #000000; }
.style12 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FFFFFF; }
.style13 {font-size: 18px}
.style15 {
	font-family: "Times New Roman", Times, serif;
	font-size: 25px;
	color: #FF0000;
}
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
          <h2 align="center">View My Booked Vehicles</h2>
		  <p>&nbsp;</p>
		  





<table width="610" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="66" height="51" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7 style8"><strong>Id  </strong></div></td>
		   <td width="214" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7 style8"><strong>Booked User</strong></div></td>
		  
           <td width="214" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7 style8"><strong>Vehicle Name  </strong></div></td>
		   
           <td width="158" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7 style8"><strong>Location</strong></div></td>
		   
		   <td width="162" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7 style8"><strong>Date</strong></div></td>
		   <td width="162" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7 style8"><strong>Price</strong></div></td>
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0,bill=0;
	String user=(String)application.getAttribute("vsp");

 try 
	{		
      	                    String query="select * from v_book where sp='"+user+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2); 
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);//price
								s6=rs.getString(6);
								s7=rs.getString(7);
								
		
		%>
                    
                    <tr>
                      <td height="56" bgcolor="#CC0000"><div align="center" class="style6 style13 style11 style12 style5 style7 style9"><%=j%></div></td>
		<td bgcolor="#CC0000"><div align="center" class="style6 style13 style11 style12 style5 style7 style9"><a href="v_user_profile.jsp?user=<%=s3%>&type=<%="one"%>"><%=s3%></a></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style6 style13 style11 style12 style5 style7 style9"><%=s7%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style6 style13 style11 style12 style5 style7 style9"><%=s2%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style6 style13 style11 style12 style5 style7 style9"><%=s4%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style6 style13 style11 style12 style5 style7 style9"><%=s5%></div></td>
	                </tr>
					  
        <%
		
		     bill=bill+Integer.parseInt(s5);
		
	  j=j+1;}
	  
%>
<tr>
<td height="39" colspan="6" align="right"  bgcolor="#FFFF00"><span class="style15">Total Bill : <%=bill%></span></td>
</tr>

<%	  
	  
	  
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </table>

















<p>&nbsp;</p>
<p align="right"><a href="v_main.jsp" class="style13">Back</a></p>
		  
		  
          
          
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
