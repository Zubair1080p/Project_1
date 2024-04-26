<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Recommended Spots</title>
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
.style5 {font-family: "Times New Roman", Times, serif}
.style6 {font-size: 20px}
.style7 {color: #0000FF}
.style8 {color: #FFFFFF}
.style9 {font-size: 18px; }
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
          <h2 align="center">View Tourist Spots Recommended for Me</h2>
		  <p>&nbsp;</p>
		  
		  
<table width="677" border="1.5" cellpadding="0" cellspacing="0" align="center">

         <tr bgcolor="#00FF33">
           <td width="36" height="70" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Id  </strong></div></td>
		   <td width="130" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Location (From to To)  </strong></div></td>
		   <td width="115" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Service Provider </strong></div></td>	
		   <td width="140" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Recommended<br />By </strong></div></td>	
		   <td width="129" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Date </strong></div></td>
		   <td width="113" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Spot Details</strong></div></td>
		   <td width="113" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Routing Path </strong></div></td>
		      
           
		   
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;
	String user=(String)application.getAttribute("user");

 try 
	{		
      	                    String query="select * from recommend where rto='"+user+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 //i=rs.getInt(1);
								s1=rs.getString(1);//name
								s2=rs.getString(2);//name
								s3=rs.getString(3);//sp
								s4=rs.getString(4);//name
								s5=rs.getString(5);//user
								s6=rs.getString(6);//name
								
								String[] splitstr = s2.split("to");
					
					            String lfrom = splitstr[0];
					            String lto = splitstr[1];
								
								
								
								
		
		
		%>
                    
                    <tr>
                      <td height="56" bgcolor="#CC0000"><div align="center" class="style12 style11 style13 style5 style6 style8"><%=j%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style12 style11 style13 style5 style6 style8"><%=s2%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style12 style11 style13 style5 style6 style8"><a href="u_sp_profile.jsp?user=<%=s3%>&type=<%="one"%>"><%=s3%></a></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style12 style11 style13 style5 style6 style8"><a href="u_user_profile.jsp?user=<%=s4%>&type=<%="one"%>"><%=s4%></a></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style12 style11 style13 style5 style6 style8"><%=s6%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style12 style11 style13 style5 style6 style8"><a href="u_spot_details.jsp?loc=<%=s2%>&sp=<%=s3%>">Click here</a></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style12 style11 style13 style5 style6 style8"><a href="https://www.google.com/maps/dir///@21.125498,81.914063,5z.jsp" target="_blank">Click here</a></div></td>	
	                </tr>
					  
        <%
		
	  j=j+1;}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </table>















		  
		  
		  
		  
		  
<p>&nbsp;</p>
<p align="right"><a href="u_main.jsp" class="style9">Back</a></p>		  
		  
         
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> MENU</h2>
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
