<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View My Booked Spots</title>
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
          <p>&nbsp;</p>
		  <h2 align="center">View My Booked Tourist Spots</h2>
		  <p align="center">&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  






<table width="831" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="23" height="70" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Id  </strong></div></td>
		   <td width="128" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Location (From to To)  </strong></div></td>
		   <td width="85" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Service Provider </strong></div></td>	
		   <td width="72" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Date </strong></div></td>	   
           <td width="74" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Price<br />(in Rs.) </strong></div></td>	
		   <td width="119" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Distance <br />
		     (in kms) </strong></div></td>
		   <td width="102" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Vehicle Details</strong></div></td>	
		   	
		   <td width="118" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>Recommend</strong></div></td>
		   <td width="90" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style11 style12 style13 style5 style7"><strong>View Route Search</strong></div></td>
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;
	String user=(String)application.getAttribute("user");

 try 
	{		
      	                    String query="select * from spot_book where user='"+user+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 //i=rs.getInt(1);
								i=rs.getInt(1);//name
								s2=rs.getString(2);//name
								s3=rs.getString(3);//name
								s4=rs.getString(4);//name
								s5=rs.getString(5);//name
								s6=rs.getString(6);//name
								s7=rs.getString(7);//name
								s8=rs.getString(8);//name
								
								String query2="select distance from spots where loc='"+s2+"' "; 
						   	    Statement st2=connection.createStatement();
						   	    ResultSet rs2=st2.executeQuery(query2);
					   		    if ( rs2.next() ) 
			                    {
								  s9=rs2.getString(1);//name
								  
					String[] splitstr = s2.split("to");
					
					String lfrom = splitstr[0];
					String lto = splitstr[1];
								
								
								
		
		
		%>
                    
                    <tr>
                      <td height="56" bgcolor="#CC0000"><div align="center" class="style12 style11 style13 style5 style6 style8"><%=j%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style12 style11 style13 style5 style6 style8"><%=s2%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style12 style11 style13 style5 style6 style8"><a href="u_sp_profile.jsp?user=<%=s6%>&type=<%="four"%>"><%=s6%></a></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style12 style11 style13 style5 style6 style8"><%=s4%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style12 style11 style13 style5 style6 style8"><%=s5%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style12 style11 style13 style5 style6 style8"><%=s9%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style6 style13 style11 style12 style5 style7 style9"><a href="u_v_details.jsp?vname=<%=s7%>&vsp=<%=s8%>">Click Here</a></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style6 style13 style11 style12 style5 style7 style9"><a href="u_recommend_spot.jsp?loc=<%=s2%>&sp=<%=s6%>">Click Here</a></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style6 style13 style11 style12 style5 style7 style9"><a href="https://www.google.com/maps/dir///@21.125498,81.914063,5z.jsp?" target="_blank">Click Here</a></div></td>
	      </tr>
					  
        <%
		
	  j=j+1;}}
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
