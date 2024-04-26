<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>PB-Tree Tourist Spots</title>
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
.style10 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
}
.style11 {color: #FF0000}
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
          <li class="active"><a href="a_login.jsp"><span>Admin</span></a></li>
          <li><a href="s_login.jsp"><span>Service Provider</span></a></li>
          <li><a href="v_login.jsp"><span>Vehicle SP</span></a></li>
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
		  <p>&nbsp;</p>
          <h2 align="center">User Visited Tourist Spot</h2>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  
		  



<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;
	String user = request.getParameter("user");

 try 
	{		
      	                    
							


%>
<p class="style10"><span class="style7">User :</span> <span class="style11"><%=user%></span> </p>
<table width="764" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="33" height="70" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style5 style7 style6"><strong>Id  </strong></div></td>
		   <td width="95" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style5 style7 style6"><strong>User </strong></div></td>
		   <td width="132" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style5 style7 style6"><strong>Location<br />(From to To)  </strong></div></td>
		   <td width="110" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style5 style7 style6"><strong>Service Provider </strong></div></td>	
           <td width="86" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style5 style7 style6"><strong>Price </strong></div></td>	
		   <td width="85" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style5 style7 style6"><strong>Date </strong></div></td>
           <td width="85" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style5 style7 style6"><strong>Vehicle Details </strong></div></td>
		   <td width="120" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style5 style7 style6"><strong>Spot Details </strong></div></td>	   
		 </tr>

<%
							
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
								
								
								
								
		
		
		%>
                    
                    <tr>
                      <td height="56" bgcolor="#CC0000"><div align="center" class="style5 style8 style6"><%=j%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style5 style8 style6"><a href="a_user_profile.jsp?user=<%=s3%>&type=<%="two"%>"><%=s3%></a></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style5 style8 style6"><%=s2%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style5 style8 style6"><a href="a_sp_profile.jsp?user=<%=s6%>&type=<%="two"%>&user2=<%=user%>"><%=s6%></a></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style5 style8 style6"><%=s5%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style5 style6 style8"><%=s4%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style5 style8 style6"><a href="a_v_details.jsp?vname=<%=s7%>&vsp=<%=s8%>&user=<%=user%>">Click here</a></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style5 style8 style6"><a href="a_spot_details.jsp?loc=<%=s2%>&sp=<%=s6%>&type=<%="one"%>&user=<%=user%>">Click here</a></div></td>
	               </tr>
					  
        <%
		
	  j=j+1;}
%>
</table>
<p>&nbsp;</p>
<%	  
	     j=1;
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>



















		  
		  
		  
		  
		  
<p>&nbsp;</p>
<p align="right"><a href="a_tree_spot_new.jsp" class="style9">Back</a></p>		  
		  
         
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="a_main.jsp"><span>Admin Main</span></a></li>
            <li><a href="a_login.jsp"><span>Log Out</span></a></li>
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
